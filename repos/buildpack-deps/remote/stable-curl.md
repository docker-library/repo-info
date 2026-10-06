## `buildpack-deps:stable-curl`

```console
$ docker pull buildpack-deps@sha256:2145408a141dfcc7bb88b3089a62b22ebd29be69cbb9905e339f87e7d67bad8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `buildpack-deps:stable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8b66b3d37f3ef1d17c46122e302e6783a11b660ad4852560a715b55b24f7970a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75033247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973c37b264c3785e7e16a3b15a801795cf268d7625c1884d2916595ae868583b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:69d16c5f90f9c21a5be21b8ac21fd57222da2d46bd56f770a9c11bfed77f0de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4137198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39375d2cfd928a89cd7f6ef4f037d479f0a29e48fa788ac40fa8a959ebf08298`

```dockerfile
```

-	Layers:
	-	`sha256:fbe57ee063e30be7e69b8ae5c4b0ef8f400a67542b2708e5a2db9fe261b0874e`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 4.1 MB (4130112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12b4cfd39934ef67703650d1b76d86bbb2b94682a65da2e8488fb852717ed3e2`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:b894e072595f2885261ae5bcb1712658b446fa2c399800ab2271486e025883fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71930302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b410631e266f10cdd799109083212b14792fb88f14b20141476d0e7f51159b1a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:47:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2613b9f9cbe1793f19a07be0819263568ab684ead60cadb1613eb4f2868871cc`  
		Last Modified: Tue, 06 Oct 2026 00:12:49 GMT  
		Size: 47.6 MB (47559414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275198ce4aab1747f7a9701756bd8de5d9970998693ce5abd7062a463f0731eb`  
		Last Modified: Tue, 06 Oct 2026 01:47:41 GMT  
		Size: 24.4 MB (24370888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b499abb4ecda1c416a150a66901e0b02dd5de904ef21925ac81d661a28a35e6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4140260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4322f1eed2cfaf0e0640545f87188f87c4ea99b04c574ccccf97689f5ed27f34`

```dockerfile
```

-	Layers:
	-	`sha256:8c3583a882c439a092895dbaaf78a8449d4e5cd0a18535d3542f14d3bcee1a8f`  
		Last Modified: Tue, 06 Oct 2026 01:47:40 GMT  
		Size: 4.1 MB (4133102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:811a0b37b697010bb12434f037827341ec182a0b425a27e718f9b08cbbf2bf9f`  
		Last Modified: Tue, 06 Oct 2026 01:47:40 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ab62859187a415fd39ddad156f37fb2a689595c3e1d06b783a18c4a1ac00c448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69455499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b3728481cfd294585bbc583e5f2c264c354e0f5406ae19c83916b6d8de4054`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18046e6eeb6e12f2b634e0f7041e5c3fe7d2c4ac0f9b15f4eba7d3be40fb25`  
		Last Modified: Tue, 06 Oct 2026 02:25:06 GMT  
		Size: 23.6 MB (23642235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1ac85fcf793d91da97a129d45f063b80df480a3fc30688b25d358300e88aa710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a5fc6efc8807f4cd90905688b662e55996343d8c5a3181978bffbe6a4f48c4`

```dockerfile
```

-	Layers:
	-	`sha256:6bebf5499cd0c481d8e05c9a13180653a7f1187bfdbc6a04bc922bd1620a2b85`  
		Last Modified: Tue, 06 Oct 2026 02:25:05 GMT  
		Size: 4.1 MB (4131613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bf7928a2476c94720025173fc6bb180e8feddfa9e318d081f2506f42cb9682c`  
		Last Modified: Tue, 06 Oct 2026 02:25:05 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:8e4f1d410555d6b41507330a2dd47811b771a1c3ba958afc00a8a54beb95d822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74800085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1407d703a37d1e7758fc94d06ff436ea89ab61149dc0c239cde6af09f1c26165`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:45475b60085a7c939c69f536e1165d335375629ea3fac27da30ffb449b9816bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef87fcfe64278010b3a4ba2c55c13e91d7eca6d6a517cf45634a30338ac891c`

```dockerfile
```

-	Layers:
	-	`sha256:172513778135ae818913cb2d3e57f968579c7e22fe977417532a132b836924f4`  
		Last Modified: Tue, 06 Oct 2026 01:44:52 GMT  
		Size: 4.1 MB (4131017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1716ca759e8420a7b2a6c83aec1124350a9ce788f5f536c5a31655ab6fc96699`  
		Last Modified: Tue, 06 Oct 2026 01:44:52 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3577c1c5b8fe4f48f30312ad0152a4c95df02d41c17aeb1f8e73a6b51a44eada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77709478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3008bfe088b742d5c3179e6d6ef9a0b3bce66cf8af884b70092473fcac2cd9fa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e890ebc79ce3bfd401a922c9c49295c408b186867c30528006e35a6e0353fb31`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 26.8 MB (26803382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3ce08d5deaa9024c1f7ca565a9f2d7c2cb0b63ac0679580c04fd3ed2df7dccc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4134276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ddebeb7a507347af5e51ad7eb8796d65b577900c69a571f4366949206e690e2`

```dockerfile
```

-	Layers:
	-	`sha256:c3cbf8516269fba8f16ab65fcf957c02f81a35beb9f967e9d93784835cb9bd62`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 4.1 MB (4127220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a9e21f24c53aee71f5d8ddd8ba847700114ef6522f99353c5d614a4c9008698`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 7.1 KB (7056 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2e225243a8089642b5fe495b381b1c0fef88a1bd905d26d0bd569d2715bd3f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80230235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a70c8e897b4cc9df9aad33455d4174d7cc9307cd2be044eb0b1969cd858278a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee8c75408fb545ab55e5cbdf6e0c4e4b171baf24f9b88c760adbc0ef14b65b4`  
		Last Modified: Tue, 06 Oct 2026 04:41:57 GMT  
		Size: 27.0 MB (27023111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8537694ae757a62b2f7e964f58caa5fb8d2851f3c78679bb499c5c205c23fd82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4141082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be32a03b34c06aaa5197e11fd4126c57c3d8627efdafd77fdf3bc7ccc984e478`

```dockerfile
```

-	Layers:
	-	`sha256:2d6e3f68b5a5bd868bec96ff1dd5179b3991e8bade78894d194ec820a805b579`  
		Last Modified: Tue, 06 Oct 2026 04:41:56 GMT  
		Size: 4.1 MB (4133958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68348a3a94aede01dd2ba656182968fbcb23c3a21c9f59e9a9509770020f6a10`  
		Last Modified: Tue, 06 Oct 2026 04:41:56 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:3768561ef832a9666e471596f4949ed15c29768517f254c5b13de9e3a94beda8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72839368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3206872874a1247c9e4b0b9dcd7aae9d1a1956c5a25be33435bdb2887dc8d580`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 23:42:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b576f41196ce391ebaeeb058ed0bf8ef716528b15a0986154f91cf04d5b72aea`  
		Last Modified: Sat, 19 Sep 2026 04:07:24 GMT  
		Size: 47.9 MB (47866994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719a46bffab9fce37ab8764ddc4a0df7902b9a552542a9a0b30211b8ecfd8e11`  
		Last Modified: Thu, 24 Sep 2026 23:44:16 GMT  
		Size: 25.0 MB (24972374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cae58dfbafd9bd3ea87763161166e4e9eb4c0b4f783d6af6598d262de10a7803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4129745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f489b52ab680ada219bc39141f8410332ad8e58f3d6bd5a3fd23e56fbedc1f72`

```dockerfile
```

-	Layers:
	-	`sha256:40d3b3432a2d13322a3ce485685674a048f24b42dfb0ad56124ffb49b7793190`  
		Last Modified: Thu, 24 Sep 2026 23:44:13 GMT  
		Size: 4.1 MB (4122622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a30c5a5b3ba1d1622e2a23d4950fc76bb573718bee0bc39406e21162962f227`  
		Last Modified: Thu, 24 Sep 2026 23:44:12 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:434dc87ada675da32b1778c98523ad98ec1ce5782ac84e7ac06e59d02a39996d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76274179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44a2cf5336d7b843b726fa077f20af8288514e2cda14c9e92dd0c6c578c6e2b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d7b170e34e7dca9460179c992b6eda381e85641ec044682549ce9ced27e23`  
		Last Modified: Tue, 06 Oct 2026 01:58:17 GMT  
		Size: 26.8 MB (26817179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:38652f12b094c6d1f69d80c0802dec5284103d3698202ad0cd8ddfa447f68583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671c9cffa3bd4f7c987bd1b682a2b45d7ca55ca15c8ea73cd98d61ec28d8a71a`

```dockerfile
```

-	Layers:
	-	`sha256:a32c6f41dee128baccabcd25730f67005f568ea873ae686ac2c3b95654f576ec`  
		Last Modified: Tue, 06 Oct 2026 01:58:16 GMT  
		Size: 4.1 MB (4131522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36893a881fc1d20a4f71cffa9de98e198a9f061d237ac479398d502ae4af7481`  
		Last Modified: Tue, 06 Oct 2026 01:58:16 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
