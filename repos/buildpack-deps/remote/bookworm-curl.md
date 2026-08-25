## `buildpack-deps:bookworm-curl`

```console
$ docker pull buildpack-deps@sha256:c63e1f47b008e42150a551f51443fd5007d737e9951661bd18b0a808db56abbe
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
$ docker pull buildpack-deps@sha256:ab7533c5a641ac97700000b88ecc0527eb76d42ad4aa14910c33236d03b9b518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72553609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4f9238e1290cd37790aa0cb6686984e2589179b0f0e966e773e7d5fd2c4391`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:03fd138a04ed9286673a67a778f3b02bf2920cec2dbc8fde5d219072f95a34f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7753a1138d90157d226341101e5d2499ec2f4d0508eb853139b424d96f7b0ce`

```dockerfile
```

-	Layers:
	-	`sha256:bcea6b4aebe47ba579ff2121f7d5777a735893405083b931374fd80365cac829`  
		Last Modified: Tue, 25 Aug 2026 00:51:16 GMT  
		Size: 4.5 MB (4519609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:888d05a09e22296182f6b391b0da8a573b79bad2acb08e32e3d3e121e7fa8886`  
		Last Modified: Tue, 25 Aug 2026 00:51:16 GMT  
		Size: 6.8 KB (6816 bytes)  
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
$ docker pull buildpack-deps@sha256:c60910054bb85917284599df759bf1ffaed2d98a3e87f2f6e50a7b464e7a6744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72011910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f7d02b2937626ab7a6a50ad4b239b9c87087e83e753027afb6ad4831c631b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7cd71edb92b367568421ed52093ee7b509d38a9ebc1797420f8b17a58f8fe50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4526767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fd6ba1e148caece9778f7945bec8f242517faae61d1a7bac6e5960e4c07dac`

```dockerfile
```

-	Layers:
	-	`sha256:fcfa355b5ce9bb1c0a20510c1bd050d46227abe52af2fa54b7a981dc6b248909`  
		Last Modified: Tue, 25 Aug 2026 00:52:52 GMT  
		Size: 4.5 MB (4519870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dc900992d253e0b115cdd77cbabd83c0eb2194b67d9bdb5e177f566df1fcbd4`  
		Last Modified: Tue, 25 Aug 2026 00:52:52 GMT  
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
