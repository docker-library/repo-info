## `buildpack-deps:bookworm-curl`

```console
$ docker pull buildpack-deps@sha256:eb979bc27bb9f11b66693ba9cec6334cdc11d37a65811a0909529257723192fb
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

### `buildpack-deps:bookworm-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2114c7819f0fda8892a3bbbb640c51d8a2e54c464d72be7ba63e9f2a9f6be738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72559517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e625f98e20519793cd52e060f7006e2595e9be8c01e775611738d6e3a0b0f9b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6c06d2ce2dcb4170fce5fcbbbfb22714452d142dfa4fc4f277d9bd6f92b745fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de088ada0234cdcd8a803f3b1495808628e6c998c7f6fd91667edef22387ffbd`

```dockerfile
```

-	Layers:
	-	`sha256:47a833f4bbc3e20912ca27ebcf32fac0964f8e35ea64f2b236aa148e68285d99`  
		Last Modified: Sat, 19 Sep 2026 00:44:46 GMT  
		Size: 4.5 MB (4518870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaf30d6e6d6ca7c56fc3f82cb8179d8a7a3acf17137f9b275079a043bc575689`  
		Last Modified: Sat, 19 Sep 2026 00:44:46 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:098bab02ebf7ca045d7f2e7c9bac3a1c01efe43e7b07a25c804d89fee95c4ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66164794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c220defea8638ec94f85b2a7e3e0003d71544b61efb43ef32408576353ad9705`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a72021451dc40750402f57279bdd4df3b88256a13d4a78bd884601d89035882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4528779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f468f966051434c84347dfe9b4cbfc606aa5c903860e16cf323f95927ecef3e`

```dockerfile
```

-	Layers:
	-	`sha256:87fb9a3f60e8ec808e4a83eca3ad731957ff87277aa6367bc2acbbb98103c7a0`  
		Last Modified: Tue, 25 Aug 2026 01:32:46 GMT  
		Size: 4.5 MB (4521898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82938f818c4161cec4d8fcbe1f77e4462433db3cefe7694f921b45eec9d72836`  
		Last Modified: Tue, 25 Aug 2026 01:32:46 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1c05e12c9f62deec8a70461031ddb34608ecf2bc138ae73d0546b5ebbd5fa923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72017631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f442fff90a6cf0c03f97946a136de87926c9efa1ceba7f923120c32053246f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7e0c30a7a3f59f38ed1991f8f60f501032c25200593df15b24824531bcb43c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33f85509a6007e4984237bf204f151284101e29e38326c3aff59a578ee577c5`

```dockerfile
```

-	Layers:
	-	`sha256:db3fd101069dc1f56787fb24e4f4713538cd9ea3c744472df959dc5455d5e71f`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 4.5 MB (4519131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4ca7cc7455b5f7bbb22494a33140135c8c6fa65b6946778231df8031907f829`  
		Last Modified: Sat, 19 Sep 2026 00:47:26 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:84a8c091f873e0ea9d2d59776b5d1a9049ca32990631aad4552009ed272e5cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74375834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65481514106c6dd9b9d0aca6dfe9d61fe25e3b2505d1af9e9dc0d5dc6c37644`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:23a9fe9381c4c6f69e42d60f9ae1c278d522973bf5d16ad5083d45db5f40f359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3640cfb05113f6296178c62a923426c5d45da51686dfec28fd9272af3ff95619`

```dockerfile
```

-	Layers:
	-	`sha256:2fb81a641081c7c0a5e053ead0bb14be213921416f434d399daa99c80dc25558`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 4.5 MB (4516728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdd7557c3264b476252ff103bdae360245cd029d473535f65429f55528868105`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:89fb095c73ba8c385b387d03e325f923d2473bb553c18224b3c325b86ecd67a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (78048099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e89cb792b212c74f838f34a0eb0aedcd6a56c33173a0b89748184af8ebdda48`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:892459f5eff29944e2cc1f9a1a97b396cc99429b12a67633f8172dc56b73b278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4531083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7745cd5a6f4fb920f867bbf44d67ea98dabb0b24cd08edf58234def7fd9df02`

```dockerfile
```

-	Layers:
	-	`sha256:dd839c3f10fe01c8b4f5c3d1f21543432bdb01413fbaa601fcdbcdf471cd1740`  
		Last Modified: Tue, 25 Aug 2026 03:36:09 GMT  
		Size: 4.5 MB (4524235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04aa66c740f794ef3c7fbaa3d24ff9707517b87ae0463e70fabafb5eb2156225`  
		Last Modified: Tue, 25 Aug 2026 03:36:09 GMT  
		Size: 6.8 KB (6848 bytes)  
		MIME: application/vnd.in-toto+json
