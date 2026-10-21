## `buildpack-deps:unstable-scm`

```console
$ docker pull buildpack-deps@sha256:7cf18f2ce7dcf73ca7f46ae011b21bedbc9f735e475a244c53c775d854a807b0
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

### `buildpack-deps:unstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:539e995db363492a9acfe6a22242fbacf550506016942838b1f9067331c9a4ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158961792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde7b24b05e0b94626a0f57a17f0aa27b86b177d61be088f8d595041c299658f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:46:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:28:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b4e6f7f184eb26c2de69e913d8e719cb6612b69b12932727db49fdb6cae72ecb`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.8 MB (49820002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec3259743e71d7217ad99e85762f43791ca8db5d63aafee15de35c7c98bffce`  
		Last Modified: Wed, 21 Oct 2026 00:46:27 GMT  
		Size: 28.5 MB (28528910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d602fe6e83e5691b73ab5466fa03dded2a529d6f5a370782662dda052c92fad`  
		Last Modified: Wed, 21 Oct 2026 01:28:22 GMT  
		Size: 80.6 MB (80612880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d8a856744afe6a8cf23b8b706c19e620c898e07ba553b69d96aeca40b5bd7ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8301765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9715119b133ab7446d0484b8c091532b0f09aee96be06c5dec922f4de16c2731`

```dockerfile
```

-	Layers:
	-	`sha256:b0e8f2c79cb5fdf12acf0ef1ed741f7ac6ed0bbb79e04665c3196c600de9425f`  
		Last Modified: Wed, 21 Oct 2026 01:28:20 GMT  
		Size: 8.3 MB (8294511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af6876639d67509afc53340653cf1f8a83292f1cc041d02a2d7adfd5c1dae268`  
		Last Modified: Wed, 21 Oct 2026 01:28:19 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9cbb9833b12d0140daef504d63518ff4c1e5aa4d21d048263d9d73837d3c3d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145689285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef5a81c20738263390e1e34cbd755052a01806c7bf302f4f44d0dde1cf27bbe`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 01:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f598064988d3c8094600909e9ff8509760664a380fe3432f8f5981c4adda80d0`  
		Last Modified: Tue, 20 Oct 2026 23:30:18 GMT  
		Size: 46.0 MB (46007503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d167816f987674560fc1213b3c17081827c05ae811636ec46602862746d0b8bd`  
		Last Modified: Wed, 21 Oct 2026 01:29:25 GMT  
		Size: 25.6 MB (25607391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79083a90193fd7ab99f95710bf5189817613fa291bb2ef5e71df57acbd2a914d`  
		Last Modified: Wed, 21 Oct 2026 02:48:55 GMT  
		Size: 74.1 MB (74074391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:15240627d37d72c32e6997da631a7e5ef3f5cf3a1e8f24279ccef8326622630f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8301887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c773f488a02a3ef7093a0a458c6209a018f82b5d92b8ba382676f21966f00a3`

```dockerfile
```

-	Layers:
	-	`sha256:0991724b51459ae5917305e6342852e756e200a8f568f295ad6fb8ab84231b42`  
		Last Modified: Wed, 21 Oct 2026 02:48:53 GMT  
		Size: 8.3 MB (8294569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1f40c0eda3d1e0d258392131795cde00848be693310dede6cee8d5650a4f3b4`  
		Last Modified: Wed, 21 Oct 2026 02:48:53 GMT  
		Size: 7.3 KB (7318 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:240684b03fb942585ff03f4b22ea9c04c3ea5a8e36552a279b77b668a6149cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155577803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233ab11a9a83e6d9a3158e7302dafe7d68885821e82158f643ad58cd922e3a97`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:33:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68634d59b4ff6ab10de196a616123b4ea6f0bd5427631286fe3cd8a56dd0d79`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 27.4 MB (27439000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994dd69c28c6306ac45bbd6e8468d27adefc49392385626993ad59178c6c50d2`  
		Last Modified: Wed, 21 Oct 2026 01:34:20 GMT  
		Size: 79.0 MB (78988316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3c784051661b77f5cb8e4b8ffcd15c87d08d4570760230314146fabbfd431c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8311484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac855cfdbc00fecea1b2892e36060ab1a19c58e67ae1d2884f4c2e763b74e3e`

```dockerfile
```

-	Layers:
	-	`sha256:010f40edbab82b12120b6636bf851905bd910721cc711eafd8b79797a634a3aa`  
		Last Modified: Wed, 21 Oct 2026 01:34:19 GMT  
		Size: 8.3 MB (8304150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de6cf8639cd5a46754d1c4af264216d50b8c880279933a48f38f4521c7ad5c8a`  
		Last Modified: Wed, 21 Oct 2026 01:34:18 GMT  
		Size: 7.3 KB (7334 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1e3dba534e7414890e8c2ac64b0e89a242d455b2e3692c3cbfbd8d158d51b242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163146842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e012b5ec3fcf9ec865f8727177feb99c1a38990c4b92bdc0818c1d9253a42a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:48:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d6170fcc5bd791db1f2ab75aa4b4816b856973d371636532413f94b7511aae8a`  
		Last Modified: Tue, 20 Oct 2026 23:30:53 GMT  
		Size: 50.9 MB (50946506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109aee5d929bd44611611a2c72d113aff634bc5c7f64a2cd4fa4772fa2a25b7b`  
		Last Modified: Wed, 21 Oct 2026 00:48:40 GMT  
		Size: 29.7 MB (29660929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b0bdf587a4c61d52c001566cd13a70f11271cccfe379bda7fe332b00e4fa91`  
		Last Modified: Wed, 21 Oct 2026 01:24:54 GMT  
		Size: 82.5 MB (82539407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3e2d988f9033c8281597b375a98d0799e6505867dc765c7aecb04c476c75503d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8297151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0920cb3995dadc0428b91f3e25f14e5d7401451f17ebf56acd54149b70b7f216`

```dockerfile
```

-	Layers:
	-	`sha256:7f10ec569f7fcff830e600ba60ae2d4f9d44b1e5b421c672ac8feb71919fdc14`  
		Last Modified: Wed, 21 Oct 2026 01:24:52 GMT  
		Size: 8.3 MB (8289919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db3e17aeb8217f0d67c6e6524037c15cbd22d179b080b9424556a440d31913f5`  
		Last Modified: Wed, 21 Oct 2026 01:24:51 GMT  
		Size: 7.2 KB (7232 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:1e748a70378fa994f9507352fe5d663db2e2172a43c32898bd164848d8254f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171529425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905d164658ec7f872165334e63b13d4e4bdc598f8fbac3dc45f8b5819707280c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 04:39:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:39:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:879c8c596683a589a22d88f106abb6c642b7746d92470d0e9281af7b3fd80325`  
		Last Modified: Tue, 06 Oct 2026 00:14:12 GMT  
		Size: 54.5 MB (54495654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0df2d209aa193e56269eb8c0a2f1b42c40850c0d5c42fd80f65047372deba0f`  
		Last Modified: Tue, 06 Oct 2026 04:40:24 GMT  
		Size: 30.5 MB (30516375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7afafabfed7e692143ad4a2fffebed5d04d0fe48b03661f5cc0de620582e774`  
		Last Modified: Tue, 06 Oct 2026 11:40:48 GMT  
		Size: 86.5 MB (86517396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d94ff6bb99d4121cc35388c0c4a8a01bf6a6df0b041a980cf0dfa9777abe2328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c99efaee53d65164b59e8b69f958b724f9ffe86156fc48001da04dc8426708d9`

```dockerfile
```

-	Layers:
	-	`sha256:50d8d06ce5e9e2c648b6244bb7911e8b091a76dc66f08477ca124dcc353be1f0`  
		Last Modified: Tue, 06 Oct 2026 11:40:46 GMT  
		Size: 8.3 MB (8310592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be2f26ba94cdca6a33b1436fa5fe0db111986ce20946ba2751ba4f3a0f355845`  
		Last Modified: Tue, 06 Oct 2026 11:40:45 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:154b7baf5c21b509ffebb8e016d55bcd1b09292dee7b033a7712f9c888ed8b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153397752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5c108852ec9ae40ec535b05e601df7cd3296e861696e2447e74fef37a91848`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1791158400'
# Wed, 07 Oct 2026 20:10:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:38:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:48b1f7cdb9d7f8020200b8b2a5a7608c5fc31d5467487a49476fc34aac73ed96`  
		Last Modified: Tue, 06 Oct 2026 00:18:51 GMT  
		Size: 47.2 MB (47230578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b7403dbf18c16114ddf458ded16fb29bd66bbd5e72630cc90e48d103942a9e`  
		Last Modified: Wed, 07 Oct 2026 20:12:37 GMT  
		Size: 27.6 MB (27580832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4465dfe198d5598ad6e8ab30b0aaf77cc3822a371019b6e43fe3fe55c4ba70b`  
		Last Modified: Thu, 08 Oct 2026 13:42:39 GMT  
		Size: 78.6 MB (78586342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:73cd92df8683f8d5bea127b7385903c78dadc623c4fdfc8ca2d87cfed091e21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8302843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d57b127979b3a424fd38a1af04e7927fde56fb4d737262558d04cc8ee29609`

```dockerfile
```

-	Layers:
	-	`sha256:45d90118c254df72be1e0ec21ef9d03f4779f1861b9ee690ba1e60f671a86a3f`  
		Last Modified: Thu, 08 Oct 2026 13:42:29 GMT  
		Size: 8.3 MB (8295557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c9158fa4120f7a5c50fd05e52a34ef17ab96dc69e5d95827c5c8cba6bce9476`  
		Last Modified: Thu, 08 Oct 2026 13:42:26 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0c042b68b0e8c69b589b32b138ba22e99534f7f834cc6ca23c81fcb49e06f26d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157103936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce4383265c51bc4e4f2981911e9a6f587cb227e421e7e6fbd6215957ff89950`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 01:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:607e799b49a6f3e51537cc534d62976bf0f0fa819afce563b696cb4953ed3341`  
		Last Modified: Tue, 20 Oct 2026 23:29:29 GMT  
		Size: 48.9 MB (48918277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe924a9d631630494c6586e22ba420421e443e1a0ef3b9ff068190236396f6`  
		Last Modified: Wed, 21 Oct 2026 01:10:15 GMT  
		Size: 27.8 MB (27815993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79edc23f4d007a5d68321da0f6f635fc09ff99d74360878ee17602fef353d3d4`  
		Last Modified: Wed, 21 Oct 2026 01:56:32 GMT  
		Size: 80.4 MB (80369666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a738d8e49a087d14be7da5445072a197b318775a54b84f1fc92450dc6a44399b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8301813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b5c11021821ffc06ff951ab19c38dd9c8ace86a77bc457ebba3110690b8f4e`

```dockerfile
```

-	Layers:
	-	`sha256:e7d4751acf41b6e38a579055ee42072e40e455f437e033dd87e2e0ab8f7173c8`  
		Last Modified: Wed, 21 Oct 2026 01:56:31 GMT  
		Size: 8.3 MB (8294559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60a42262368c16c0ebe8626b5cd73597f6313459b827dd9080366a7299335619`  
		Last Modified: Wed, 21 Oct 2026 01:56:30 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json
