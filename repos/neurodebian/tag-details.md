<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `neurodebian`

-	[`neurodebian:bookworm`](#neurodebianbookworm)
-	[`neurodebian:bookworm-non-free`](#neurodebianbookworm-non-free)
-	[`neurodebian:bullseye`](#neurodebianbullseye)
-	[`neurodebian:bullseye-non-free`](#neurodebianbullseye-non-free)
-	[`neurodebian:forky`](#neurodebianforky)
-	[`neurodebian:forky-non-free`](#neurodebianforky-non-free)
-	[`neurodebian:jammy`](#neurodebianjammy)
-	[`neurodebian:jammy-non-free`](#neurodebianjammy-non-free)
-	[`neurodebian:latest`](#neurodebianlatest)
-	[`neurodebian:nd`](#neurodebiannd)
-	[`neurodebian:nd-non-free`](#neurodebiannd-non-free)
-	[`neurodebian:nd110`](#neurodebiannd110)
-	[`neurodebian:nd110-non-free`](#neurodebiannd110-non-free)
-	[`neurodebian:nd120`](#neurodebiannd120)
-	[`neurodebian:nd120-non-free`](#neurodebiannd120-non-free)
-	[`neurodebian:nd130`](#neurodebiannd130)
-	[`neurodebian:nd130-non-free`](#neurodebiannd130-non-free)
-	[`neurodebian:nd140`](#neurodebiannd140)
-	[`neurodebian:nd140-non-free`](#neurodebiannd140-non-free)
-	[`neurodebian:nd22.04`](#neurodebiannd2204)
-	[`neurodebian:nd22.04-non-free`](#neurodebiannd2204-non-free)
-	[`neurodebian:nd24.04`](#neurodebiannd2404)
-	[`neurodebian:nd24.04-non-free`](#neurodebiannd2404-non-free)
-	[`neurodebian:noble`](#neurodebiannoble)
-	[`neurodebian:noble-non-free`](#neurodebiannoble-non-free)
-	[`neurodebian:non-free`](#neurodebiannon-free)
-	[`neurodebian:sid`](#neurodebiansid)
-	[`neurodebian:sid-non-free`](#neurodebiansid-non-free)
-	[`neurodebian:trixie`](#neurodebiantrixie)
-	[`neurodebian:trixie-non-free`](#neurodebiantrixie-non-free)

## `neurodebian:bookworm`

```console
$ docker pull neurodebian@sha256:91e7d9bb65892693cf7ee242858e113e7305f6b0f9a94a99ad3e5463acfc8464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm` - linux; amd64

```console
$ docker pull neurodebian@sha256:9dcf142e45da10a07f1e7ce813116cc88b0f4bca575005c373166ccc1047431d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc6ac206da275ea9cc52c97ca1bcd0b19492aca82d70f574f0550b2c1af22e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4855bd21e4e8a3515dc466b892c870c3e2bf0247eba82536e99fa46e9fe57fd`  
		Last Modified: Tue, 14 Jul 2026 01:47:02 GMT  
		Size: 11.3 MB (11273505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d630e390af86f9810619d22b91a5b0999d3e6ad22fd91a771899e81cc31d1f5d`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab406595373f1dee101ab9a5fafaff0b9cd6a73ddc96b91b5e359c97dc4a7859`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fe06b79cf64e33ce3eea91fa4bdec8798b6d9b594a4bcfc91e14dfa3b63de4`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 93.4 KB (93394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d89f2793c262001b6654a070d6f3cad676014c4b229aa71e4f42adaaf9f1d651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69f0fa605d9bb46b456729a94655d33f24efcc6f58e2be2f218ba908e3fb8f8`

```dockerfile
```

-	Layers:
	-	`sha256:0e6cd4ee173b0f6caf3efbd982dd0a5ab00a5c15cd8843897ddc830aef0defb3`  
		Last Modified: Tue, 14 Jul 2026 01:47:02 GMT  
		Size: 4.1 MB (4075951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d671e4cfa9e7a58f0da3f348acf22ff81600d778d8a3bbd6d0376f4d90d797be`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:254fa1694836492e9aaf6440506c6b9911063d28c50b6d5ed465beb993d3d405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59737820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cc2e5ab9b16aee91e5248ebca11520c078c663794109e08669e37f4fea2103`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:48:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fabb664793f3a0913499054b45b475d92512b8d5ff529747269d441608c317`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 11.3 MB (11252896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1691f91d05f960b771036213951be296a17e38bc2e49f28312d7040235f7f6`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dfc09d74e7e4acf8eef033d39f35b3d9635eb6c95f63712ea5a8beb08d80417`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a819d23cfb4b067e3e0d4690c02915cf69ed970e7ae1532809c0bd47a84e804a`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 93.5 KB (93549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f24fcfab87c8620b5a2a501329d82cf9264da5543ca700f54122bb0cf5df4818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a00058d10bfdaa21bb9c312fca0094e9deb81d43ff0f1b00800359b1a45437`

```dockerfile
```

-	Layers:
	-	`sha256:0e382e4f547ab02162aa0ee51bf416c537810a0d2bd31c9710b42f7d1d95b625`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 4.1 MB (4076157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836c5eb651f47a0776dd8efc2d2dd95017ba2aab50704f5f0361f0fc4dcb0f16`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:007a99edd7753df67ff50043632a55393ce7660a2539cefd4ce294bd33e3bd36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba4921fdb00b37961f495e202b635ba55549351e142fac3fd8410c735ad69f5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:44:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:44:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7058ba24da67d9c6203ecedbaa8d84fccec092ff57c19e281dba766b418c9d`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 11.7 MB (11693184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab2266aad1a9c343d326e16a32b9959738f3db6aa15de817328749c626a88c9`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85808ea636bebb0c873f995758d9c72b988066043f040414cf42e6d583eaacd`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0f317b450af5ec002523cdd104b04639efc63cc32f93a047d43ba332675c53`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 93.5 KB (93452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:44c97f363ab6fef57a756f725fa6c4a927ec1ee43f760da4bfa4c9245685162b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6557ddbac964b4c0a500ad0b08468a672fad0fecf11c4a80789143161f1b18`

```dockerfile
```

-	Layers:
	-	`sha256:9e38593ce321451d93744ae4adee0614bc19b8ed6c640bbfd38c49e769fc7e24`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 4.1 MB (4073882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1234996d8894105e4ce1b2e6888638254f204e9321e72a8926ddafb65d14fd2a`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 13.9 KB (13936 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:6ae1d5f5bb732559c1a10807139773fca048ea2203a0b8843a19348a400602ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:a1cb2aa96523a78ed35991112115a6d402e7916fdf4ee010e85f5c06565163d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d402e2c0346af1bb26926d3f399b6aab53c2382c86bc2423acbd9dfdff474c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94bb8459869ec6e3955d6415a65c4dd063d5281ce2c130e8f23ccebc0a023fc3`  
		Last Modified: Tue, 14 Jul 2026 01:47:14 GMT  
		Size: 11.3 MB (11273524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bceb97d5b48caac32ae6e23db0d7e6a9efe075d67bd5b7b7945e8603447bf40c`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a006ef7289ea2e5aa9e3ffb8f9768e25c462cf9097214dc3d3ddf38ad11f28d`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7586680fc8fce5d7f90e316effc60ea3496c82f7dd336c046b30b04007bf83d5`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 93.4 KB (93383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051c03efdef6b4ea5c1a73b2e5b9143e769e744a9f6e5278c40f0986cd925b35`  
		Last Modified: Tue, 14 Jul 2026 01:47:14 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1b74b0aed9a9c498c921c4f0a3e9275aed6f99047e1c9fae4485f7078a3d37b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce0ce94d6700e135ab9e6cd2903b3ef8c0e523319df8f1baf613098065dc64b`

```dockerfile
```

-	Layers:
	-	`sha256:07b0f23f871b015fcb2e541483a31c5691a2c83e4daf5bb26472db3bfb2d68c2`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db2cc8a264f88f047caf2561ad253a13e3eb4b0fcda6ce148e9c848f9d5b6a8`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 16.0 KB (15991 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ff2802bfadec3407144f37eba255b77f364237da31d8b22943e71ceff1867e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59738341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725dd8aa12fb0161049b76fff8d404d979ed5e34835eb7864a6af7a0e296205f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57f8b6430338bdbd253e67f1211778a3249bc19b3d337b29b7d77f4bd2100a`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 11.3 MB (11252936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17449b4c84b5bfdafe2b666f8f92ea0c7a17ccbd33d13c2eb66b2ad76f4208a`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef7adcf92c1f89331058f54432cd0916e434637f5350b994de71cf0543c9da3`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c85c01505091d0017cfc26b5b19103aa4f743f49d33df9be6dbc15b60b7a0a`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 93.6 KB (93580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726b6a07115232dfe8c8c8bbeddec00e69552ac6b8ce225312398ab28bb6a034`  
		Last Modified: Wed, 24 Jun 2026 01:48:40 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3575ca857707abba734a2542b5d9cdbd56852ad914143ee1ad22f9d070fd2d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e6ded0e3c7666debc96f5f36c1eaf6ba4d6657482c4e1b3213b5cc3fbbc87f`

```dockerfile
```

-	Layers:
	-	`sha256:d681fd95442c46985aa5c0598999538e5eaf3e6a55544eaccab0f08e5e8a86db`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa81045ba757e5ec483d14cf83519eb057221ffa30eabbb18299a536022e0476`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 16.1 KB (16131 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a8b501055f1ee1088e65d5a8e82e588192c54432ad10ca5846c7afcc93fd2824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495f2e3d7f18ff4a2a76585708f8bb4c60d8b2672e5e98bc3756fcf411afd7c3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:04 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de7c6a2bc43aab7bba927950ce09da24387a65116705f1c1905ebf8a51d1776`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 11.7 MB (11693079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cb973994433f14f5335696271a5bce15ebcc853e5d89b15b07c8b38cff33b0`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee857f661b0cdd38b84f2718aa65773e71cb5558684ac802533e984748695c94`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a76d5905f55f0bdaf6a41fdcc8551b194ad190fd0a589ad5dd868056703bb2b`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 93.4 KB (93445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b41b61def5de9a066396aeb093d8d960241812a072992ffb9e9cac423dc2bb`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1f4e0e1f19b016a6a7369a0861be92ce0a9bc5608eef11a8d5e589b766e0e5a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011423bf913ebe70f934c3bef6e76d8b8d7071dba083236a48f3cad9c36394b3`

```dockerfile
```

-	Layers:
	-	`sha256:8d6655f756adb753001781a23b4bfd1975f332d1b4e7c4e4bcdbb4a16330ced6`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49454077d2a18b47b0b90e5b2eb932a8d4f9c4e915c402fcdd25b0940dc95a5b`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye`

```console
$ docker pull neurodebian@sha256:097aa5b340351a6c0f2750ab03fc6acf524ec30183c57118b49a00b6bf037c87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bullseye` - linux; amd64

```console
$ docker pull neurodebian@sha256:269dc147b283a31b14c6016930738a98fa82b176604e8cd22024d2f7ad5b2cbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64983524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd5217c62beab262ad626f521d96d63e9441f7f478581b773b261887601207a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:39 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1868e29dca8d06ec08c63ec980f73bd80cdb22b3813910c1873869b040ec3d8`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 11.1 MB (11103422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7087263fd78fb380f156c7edd254418253aca5e7b59dc9aa73d2b1b6cfe1eeda`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 1.9 KB (1896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d59d37b7f7672c731a3e8462229225236a916be67ffaea89452c374d7d4a2c5b`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d549ddb73a0a4de17371e0860fa6527688f898fbf08c79eaf70d5b2dbce04d`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 101.4 KB (101366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bd326cd3f8c9c5453282b146542d4dfd2d13e30987839440218069868b54a7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4374da68c99e956a9efcb4959e0ed2d04b1f115afa2dddccfdc695296cd63a`

```dockerfile
```

-	Layers:
	-	`sha256:a356c6ed04853a345d9b43294162eea5ef19882e15b766437d00f7454beb85ed`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:149388ac369bc109592412db29c3caab79a8b4e6bf6979e06d63b12b5d17bb28`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 14.0 KB (13966 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:db59150e751ebaa071eb88c9583017dcf50b6cc32b44d5066ef37d6672d96c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63470392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c5f54a99b92da342a05240b46cf097f9c2f2d13936aabc3188e1ee6db9cda`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:48:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037be84758bc22877872eb5e8bae0fb6b5a24b036a722baec88bce9d18cbb72d`  
		Last Modified: Wed, 24 Jun 2026 01:48:22 GMT  
		Size: 11.1 MB (11109739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1629be750b53935b30f20697f01e7ad67e4311230ad659d8f3ab4886977dc98e`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c053c356cd8dc393187e4945b31af66a06066b54b5b2fd067387a4fdc4effb87`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b076d91feb322621ed0ec2e6fec0508fe4221893de8b2d698b29db11fda8541c`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 101.3 KB (101274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6070782fb7e61c2aa5ce40d7ec6b5e256830d0d8c540bd2d05a5c4eddc0f9487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4e2450573dc185b54b0c1593696dddb4d2947e99f4723a3ee09ed26b182972`

```dockerfile
```

-	Layers:
	-	`sha256:6c316f1ea7db0f3b301010e7675b83e3629819025ee707d974b103a8ec4551d6`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f425de449966bd8f7d72af390daa02ed78e42a03953fc18faaea8f9159a64da`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; 386

```console
$ docker pull neurodebian@sha256:9f35da4ff70ed85a70ab71d39fb5f524016cc009c8fec5e7bb66b65777d9156b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66318703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c46c123906a6b6f4e05214801735f434fa222050e99e05827f8d42e0af0073f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:44:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:508ffc251196056212d40e318af0b7425af79fd3069a3f9ab15fd6220917ec75`  
		Last Modified: Wed, 24 Jun 2026 00:28:09 GMT  
		Size: 54.7 MB (54712884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298666005f69b95992813969bd32c4cae80a09d7a17409259401b918abbeb26c`  
		Last Modified: Wed, 24 Jun 2026 01:44:41 GMT  
		Size: 11.5 MB (11502409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac279db5a42d6355e94e1981ad3639bb2f054828fd54864b12506f48574260b1`  
		Last Modified: Wed, 24 Jun 2026 01:44:39 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d79ba6075cbe6463ecd9269efee1c58965da52722bbb3f1ec79e15f7c3a59a`  
		Last Modified: Wed, 24 Jun 2026 01:44:39 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a46ac06ab5d6ba6abdd9fe0c89da4ce35fbfb58a21aebaa0e637bf81fbbeaeb`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 101.3 KB (101253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6cf44b8104edff7b8af64d7c01dd3ee113221734d70e7ba192464ccfd19549e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdeda03f3056b1791d9164b1e5a1d6578d8bad73aa0a0096a4cdd4d78af79280`

```dockerfile
```

-	Layers:
	-	`sha256:2f50690e5b0c8d3d71bb1b9f6c83d01207b6c36353c3f7a09a28f161327f8beb`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138da5b781ae675e3c02e2e23d82f4d3f46b9b896840142ef2e9ccb107575ea1`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye-non-free`

```console
$ docker pull neurodebian@sha256:33484d659e76c170b74049045b70d0bd4e5eb37d0fa87e5e90fc7202f81a5473
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bullseye-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:69228837f4f549cc71265267c54d11ee5ec2deb2ed340dd03e2680e9eea2e8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64983973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e139a624714f20bcaffde982c7159ebb4aba944de4be075d8fab48d605a710`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:39 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:43 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453dcc39ee90bd64c5f9e7c79c88a87c90c963f6bd7260004c8747350b1f1a17`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 11.1 MB (11103425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f7d8cb6675890beed058ddf99dc83c86f9c1dbf7680ff6f45547a977c1fba3`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d59d37b7f7672c731a3e8462229225236a916be67ffaea89452c374d7d4a2c5b`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760a0e9ebeafb8be52ee111e37e9b8e1d78305da3a6f4c683b9509e6a2c95c72`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 101.4 KB (101431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70b566004ec36efb4bac679145c13f5d9194b922e6c3e5f9d089db1e041d976`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9bbe5ab91a021236ef7a580983defcd27ddb1999ebc15444fad9660dd18b4870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baf145ca5df809551b9da9678b2269af0c64f5c9d1741b2e39e11c631da17cf`

```dockerfile
```

-	Layers:
	-	`sha256:f7ed7c246650ac855ee82d750606accd6fe26719b6e9f8a1dcaeeecd267aba55`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cabea5b49740460da7d8244eb365df709057fb3cbf59c76c3c7af15d045682c6`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 16.0 KB (15994 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:7a636efaee6f21ebc76c6152ee8131206ff42801cf390de4c35d021b318d0e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63470935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe9b0400c0528d5e271b46d1468f575d2b78e60e209c31896f199e614505d14`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:48:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e39bc6bc1ed41eb506aced6924d9d25ecf1a3e84e238e489d672651e99758f`  
		Last Modified: Wed, 24 Jun 2026 01:48:28 GMT  
		Size: 11.1 MB (11109917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d4e87b399a6f38e8922bd55268f39d4624b38d7a87893932b9735adfa080f4`  
		Last Modified: Wed, 24 Jun 2026 01:48:27 GMT  
		Size: 1.9 KB (1895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038e239581ad7a245fc0ef7c5853326c75a8b67c911cd99d2301d0efc3e185a7`  
		Last Modified: Wed, 24 Jun 2026 01:48:27 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272f72ce7a51d3a2d4d295d158afc8b8bd75071fddd0dc59210bf54ab7ae1e8e`  
		Last Modified: Wed, 24 Jun 2026 01:48:27 GMT  
		Size: 101.3 KB (101251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba60756fd7175aa79a5bee9a36489e37055393bd362d903bd7de23b7257f7f57`  
		Last Modified: Wed, 24 Jun 2026 01:48:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b5c9b3c82a84c1a1dc6ff55123a42c82e1cf63d65e25397bff3ea0df61f1d40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e284f5c9621e66c31f20599a0f25ef384b39e1c39726d57fc4fd502aab47040f`

```dockerfile
```

-	Layers:
	-	`sha256:d14f341c977a733e9ba62f54755a75bc9d0befc983f2d207186e790c6854d433`  
		Last Modified: Wed, 24 Jun 2026 01:48:28 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da97c88180394054a2a94f92c089ad6bc62f9e532d4c8fc4a8b26407f0c80c6c`  
		Last Modified: Wed, 24 Jun 2026 01:48:27 GMT  
		Size: 16.1 KB (16134 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:59276fdf68cdf6c39f9f2b48adea89d87a69b799a451e0654695a04f8cc2d1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66319059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f05541b2fe796f61d1f458804828998fab7f060d538af08930063aa5f789798`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:44:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:44:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:52 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:508ffc251196056212d40e318af0b7425af79fd3069a3f9ab15fd6220917ec75`  
		Last Modified: Wed, 24 Jun 2026 00:28:09 GMT  
		Size: 54.7 MB (54712884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1003e73ff718fdd0ac720e6b2b133d9905cba574dc287b25be82e4ff3db864b2`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 11.5 MB (11502355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b007ad9eb044b5b1ec8d7f05615b58da2a62b453fd9cf797bb64b34839edadc9`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89546f6290ccf1e1f417f74f6c9355b14df28e67c1357fe5ade3f8a14355070`  
		Last Modified: Wed, 24 Jun 2026 01:44:59 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb4c67ad93bdabd1ab0abcb0c7f29461c23f753e1c83e7e190845bfd5b7a68f`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 101.3 KB (101275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f4c5d6b97b2aec70163c3b8b6c8655e50de53e907aee92fad6126127cac3fe`  
		Last Modified: Wed, 24 Jun 2026 01:45:01 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a5d0b50f8fbb42f876d06f7b914bbeaf551f110de946b00c9ab62be1e135634d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24869a05642126e1fd113e8a49c7c57b02a8779b4e52cc1df48985260eb767e`

```dockerfile
```

-	Layers:
	-	`sha256:d1980be7a551dc07a55478fd74893111004bf34dd26ef817a9137a20bc292842`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65207eb267d41599bbb9cacee1d8500e39c1952990aa0c30ca9ae57a275db454`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:0fba4b4f04c7d525090d88b009fe402ef04adfac1646387950e3a6133626a46f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky` - linux; amd64

```console
$ docker pull neurodebian@sha256:e541774a8ae8c29e9db8916c2dd030fe0fbd66702c6d644b49a82ddad8593554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60355163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85597b86367553fd184628450de73c3d7f869d843744188cd8c7a4a948cd6a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f13a454822f3089040211605bedbd119d716a673282c155ca3d9e2352c9634`  
		Last Modified: Tue, 14 Jul 2026 01:47:19 GMT  
		Size: 11.4 MB (11396905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742051d6e27f7ea2dc0fc93b294c09e0ab805ea7374338450cf718161ebc8e86`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e4a808543a9d59404ce526d123f644c9c73ad677f07b4f531f02c3fcb30237`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4da09d83bcd8cb99a0958c00303b0738c1f1dd17207bf301352bccd48b36579`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 90.0 KB (90023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:375509c27cc2b396af55c84d6d1c07883ec708e7a465d524ece08259c9e43290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c6097bd0c08f31f59d3cb8b64c1e855195f6b7c013bd4d8986b37b1dbe7518`

```dockerfile
```

-	Layers:
	-	`sha256:663a93d592e745f2bc09175bde9e44fdcbb89ed7ac18f1938098cdd5d1d39ffe`  
		Last Modified: Tue, 14 Jul 2026 01:47:19 GMT  
		Size: 3.6 MB (3558591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbac11c8adfac262ed27eebe65e23303ac493e28ce14d733f52b794d12fa08d4`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:6cc33ebed78cf1fc3017ef761067669e44057e6fdd80cb810e377f1102801a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59954366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4be4ae37f69d7ea82d64e3682fa2a448f9b0db3c0b56e075f2064ef27fc9dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:48:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f5991d5bb2fa21186c9152bf0a9fa1c9c73892f68235c440c9967628fa5ecac9`  
		Last Modified: Wed, 24 Jun 2026 00:27:35 GMT  
		Size: 48.8 MB (48768712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2e1e0329984e9b822dec196fa02c3f7a9d106aa5c0489947abec911cfd14e4`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 11.1 MB (11092781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dad5cbd40d36b7dcba1ff82ceceee53b573a3e3141c6f551b72a507381a7a94`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05aaafa5adc8240521644a38d840cd8692076f1b2c5bf9ce510dd80143c7fa08`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5d1d43ce00fac375577f4758cc0413758cf478f194088cde6359150fad6ad4`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 90.0 KB (89967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6ac970a8de6aa62364d6fd17a12c5c90baed42c57d06fea34550d68a39b0282a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3578083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f015e7a47414d606ad5d4a8a6a3617becbe4681c5988c8f57ba80b2efd5c3c2`

```dockerfile
```

-	Layers:
	-	`sha256:37c282c3de9c5901577cf393ee1e753aaf1d6e0c3e58cd31df53dc5f88220215`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 3.6 MB (3564026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9e1f4f7e4e3c58d3df4e5f30031464cd5e851de49e450f6ef7a9da1db59e8a4`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:4f4f985c8cbfcab36b13efe05570cc679b7c5dc684966fe3fe6beaf84d31e55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61770724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734c0c5e840d915423cbb9d28000271df768d38d3b5c5a27b1eb6c971d936f2b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:45:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9b65e2e922e5570b1d72c057efc4f398b0b14051ad2a0b581d6669e50195e288`  
		Last Modified: Wed, 24 Jun 2026 00:28:28 GMT  
		Size: 50.1 MB (50051032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf69c87ba5a31526738f4bbb7ed287a0375e1c1136867a2d7d2a0bb94a9ada`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 11.6 MB (11627159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba245f059908d44ec77c0e21504512059f4cc111e10982a7426e4c4cac7070db`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfaf30e16259de14f4a0c86a7ac6c97405a8bf6938495310b75edcb1ec09803`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9bfa0db416ded583d48e9a1edeb92958432bfe1ab81594b0f79fcd1b2f2da6`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 89.6 KB (89626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d7b84a45695921e1d7a30de6d86a08d841360199c690ee0724564c14f762e509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3571179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea0b22104fd8ff7b8645c5097d632e2ef1b6fbaf5eb8f97269c8bf56307b980`

```dockerfile
```

-	Layers:
	-	`sha256:1e4693fb6eb6f43ee21dc1b4e1483f14eb55e56932bc13104e6af5d266e0aa95`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 3.6 MB (3557275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4626b7ae2ef016f6787da8f0ba3538efad23103181e5fec15a0bb84a6a1be575`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:ab67c47f6ec5c360f514b4d15fb2924ff697562773769d79de2d04cac69c99f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:5900d24ef53bb3e078fcf322aab3f4ac08d5414d3934c5922160e3ae751450f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60355654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:146012f23dee6dfa47b70294c8265d95da558a25806e3246f7ac4923305cdffc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:47:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ecf8a2dccc3ff6483dc94013a626cf8d1d2c570abbd8762780313faab534c2`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 11.4 MB (11396916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b69102d8a08bc334a36d49c37fe634a4305a78737cec0905bf5ad89b8cf682`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2221378bdc898bbabc521473650fe4789ad841e8884c38b0321f72cf2aa653`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6c8b583bc08448c519a6d8a1aedee46bfa3e4b39680d30ff10a03e29bf20df`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 90.1 KB (90053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9ed144b39747fae19d97671feff21ce7efa9b1f704658031fdad86f3e7261c`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ecfb0f2951e118d800b0be374e0bf761c3e75fa5565b9d6fae42b67c3bc3648f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3574586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d07745bfffe8138c87b3d5e2e1a8ddf1b2d48006e5f92fcd3de6b3c03a418c1`

```dockerfile
```

-	Layers:
	-	`sha256:7fc1ba0d0dfd09bc22420259cf1e0efbd5f4c7918e736c890f7f386ce9d541df`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 3.6 MB (3558627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae01a514f2c9417f5b712d29c69578b166801ed96d15dd64c93ffbcddba56e0`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e355b2aabfedf7aede8b74a034dd9055fd513ab80c85c2ffd5047a5519109670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59954853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986ae5a30481e5eaab366199b32717ac5e684665a168311fb16d921b9188b6d3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:48:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:58 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f5991d5bb2fa21186c9152bf0a9fa1c9c73892f68235c440c9967628fa5ecac9`  
		Last Modified: Wed, 24 Jun 2026 00:27:35 GMT  
		Size: 48.8 MB (48768712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e01d74273ee9f96a0289d4d9ed0dd60d7dbd12507f1208c11e6f72111097850`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 11.1 MB (11092824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e684f87a6be888a633181908b0e6359923379831c1e1ed3621cb3e3d90a1f6a`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ec11d1fcced0c3e2cdeb1b9c4a767164b303fadb93a0ef6efd79bb71de136d4`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a78a3f3527131ae5e35c1964d1de45ff075cd2294fe53fb52d49376ceea812`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 90.0 KB (89968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22186f3e48cdb66e822ad747e504769a877e5c2520669e70e8bff4bbb4406322`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c5ba037caa2fea4c3597207c5ac27d8b9689b4e4ca8a159a67335b66c24f1f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3580161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b748eb52b849f1882a2ae9e6c72acd725cb1b4b3934d58d51a1d22f3082f54`

```dockerfile
```

-	Layers:
	-	`sha256:87b321f89c659ff01a4a8b43e11598739a7e42dad2365bc49b0bf7365d25330d`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 3.6 MB (3564062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af3d8912f8883c0232675501ded187935c537e100b5cffedb09fcc9d72ae4807`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:bfaeee17908403cc02ae0a3499cedabae1311c1e04218bdf82caefcd8e3e3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61771264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a2cd80f90bfd1af51d32c58bd18ffb098a9a5b38e1dfd077d8952dfda16215`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:45:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9b65e2e922e5570b1d72c057efc4f398b0b14051ad2a0b581d6669e50195e288`  
		Last Modified: Wed, 24 Jun 2026 00:28:28 GMT  
		Size: 50.1 MB (50051032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7336ec1003969be0143bc9fbe3c31e0ff036a32d586b032ebce59c60a6335d`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 11.6 MB (11627244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca48798ebf6c29aa4ab183e938fe9d6e7d5ac20966647ca4f12f47edc562214a`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85af424c5e2456bcd07e10905ea8eddda380c464a9579571fac01b7ef7b2f455`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4561b9efc49bfa9823dbcf0aec676d080fea2aef163503c1df0bb7c76a5dd202`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 89.6 KB (89633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe6964634b01a0d18a4bf64af05927c0d748d662fae42dfd86efa3435ea3d85`  
		Last Modified: Wed, 24 Jun 2026 01:45:57 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8700a5402396c84af551dd89ba0d4dc3abfb23ece249cc5e4b00324cdefc173e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3573240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30becd5c02a35b8211bfc91746193837dba4434850f0b953a89a3c55f8ea413`

```dockerfile
```

-	Layers:
	-	`sha256:7b2fef64f41dad56bea4a7df849cb1220a659fda0a0a2cbecb5b2efef61debe5`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 3.6 MB (3557311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42b066fd18c7e2259707c59e98d56dab1eb356da092371471c50c29bfa4c1425`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:efcb89d7cbff730ad8cfa0e7b9189af2815bdf09188a1a99033e39e12781a8a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:57a0d903470597e03e960e74763f83bcd7dbe9627644c824b6e60ac9dc8da499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33477207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df729bea0f9c0880a20423372a486333b9966e1c91cf23456164682555494d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:08 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680960a08fa958d14450503921588a75b60874dbb5855b7dcbe1c715ee174b70`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 3.6 MB (3624747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0b0597980ee97b77329874b11f91d2a76051933e951364470e32febbcba573`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbefa676e08d4b70c48469d71a02f194191ab19d0812e3b9b7ee15b5f88a1f1`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636f24e7cd1a6256cc28af0ac1e39457841247b1901368762e88cc4bf2cf5005`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 111.4 KB (111400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9436d31c7254e39f7728a2a33c3bf484610767fcc56f160c6c43f3c8fa7dc0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a39346d7b961ffe80620851c79907c27ba9cab61f1d97cc8e5a3988569cf78`

```dockerfile
```

-	Layers:
	-	`sha256:3f9e6153fb7954a4436bd2c5ef4592a2b205ac24555de7643d85227c86ae16ce`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5058e1b63c4ffe026ffbc85716b87bddcfc76eac5e430bba237d306597f6024`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4a3374c784248db3613d9ced57e4dd42c00893cc3350ec7d54f779835a418bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31334966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0161bd591d5447144f54e4f0d480bc3857492cfac2cd60c6761eb4dfc1f21ce`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74539728a8212e505639e97c7df496b47d96fa669bb483419166a21371f89edb`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 3.6 MB (3608338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1809990106832ac15586cf26fa679afb8b24c6c3a5d327ab9acfe77f2fd0eca1`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 1.9 KB (1905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506db5cbc7fa20a69ac92fe21e99d3ba2be0a37205001b2b3c3031a5497da400`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4542b32c44a098003f870b45643b451800d364820df4a28e5ddaecc412006150`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 111.3 KB (111265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e471022f5d6d291ae03f2a63518da48eac1ebe4b96dc7ef01134aea797596fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473a27ed0401e5146b69d4d16d0ddc92c156f29f3b412fc737a85f12cbe07a23`

```dockerfile
```

-	Layers:
	-	`sha256:bafba7fa6be02c729c1d763f4ee3f8e21cba36de3ff330918a6a385e8714d2c5`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f97fa71d88e83691d430b3cf581ab1a1e4e1639a20b447e7bfec148a7019862`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:96c327245ab2bfbb978777ef8b5a5e6de66b855dfb9f4d5bd16948459c08805a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4f66a662c2f57e5e52bb948f5bdc3e4369cb7469faf00a207e849002e8c76078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33477499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7ccbf92ee9fa9bd6b7d7c9bffd5bbcc8d980a0d769891d9f6b6920ea90edf5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:18 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591fe6b85ffde1608ef57c6ddc36830953a1f2ca0806a18b3534c5e906715dda`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 3.6 MB (3624765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3937ecac07f8ddacebd532bbf92d19c013524a12dd2e0d6b530bc9207e6e0a69`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2340ce9c7d09452bc3d22254be7594139e34e499321a722d264d3dd25e3322d7`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4a9621daa93506c6c182f720a9e1eee65e9b1676511663590ce790925b9d1`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 111.4 KB (111390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baa169c5e6c3b3327189ca883043e4b053b28519b7fc9809b395db52f21342d`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:671c86ea118e0a04da381f07ee5c8a1da5ebc6cca44350bab054c6cfa2d0d827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac3bfffcb46dc065fa85f310c590539168b4159d704506aed7156351b9d2cd3`

```dockerfile
```

-	Layers:
	-	`sha256:e069c6bb3677f1b6c138691acdf7ec0a0abb35d9817db5b22a30d4e1774d134a`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aa58724dd06a34127b10be28faaf68a7f9d6f9c131cb864e1dcc3da283dde8d`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:624191a8f9ca7a9fd6e8866e7ddbfd398a669ac9f46bb9cdb06da703cb182de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f92f6ebb44e077406ced4dfa1cdfd582abc5323f1fa45679aac1fdaec69d073`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:18 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f109a1e0760d3a9c80582931df80e08ea4c5e8f6ff7e17316b712707d4996e0`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 3.6 MB (3608370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469ded10dab061d0898bba8190de43eb28b7dbf76d67e05d7ee68b945118c7b4`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddca9a22f89fab9d5bb7f9c4048863fbc3e7de36c425dac1aff5b30c20b9261`  
		Last Modified: Thu, 02 Jul 2026 02:30:24 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2ae63b2a9bd7aae6bf76a52e0ca6575bb516fcf1e0df86346ae9b293b35899`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 111.3 KB (111269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa171d21792ffc4f6ab54dafba990d37ed27c10aaed936bb33e9e1b3e74e04dd`  
		Last Modified: Thu, 02 Jul 2026 02:30:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:80c2b3456f9788b01fc928d914a4d8152e2793e8f3d090e3296025ca63e29ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5160d69b8f562438770f064868e92f81b3b6044be4e290069db8f8a4971f230`

```dockerfile
```

-	Layers:
	-	`sha256:acf288c6671be5608940f43306b9745bf66ac1c060cfa38ae69e56fb6a8eabe0`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f0230d6d32def98ccb8ea3eade6cd9d098051797993160539e56184048be1be`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:88915a90b5726404f08b6163ab4a11d953f22b851dd9bc0bb37a81d9c01efc6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:latest` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6e5055393a816e6545cec22c90301632be214a80a636775067b6207a7536884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59699967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c570dbfa7cd7e8b170fe7d4a22f96697f3f14a5abcf051a85b02db7da6e8e407`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb7125a2b97bfd874ed48edbeceda28a113fc6368ba2f8c422f1d26985ffe9a`  
		Last Modified: Tue, 14 Jul 2026 01:47:21 GMT  
		Size: 10.3 MB (10294093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112c1141260149b45373e70becbf01aaccfbe567d9ef1f261b65bd87149577db`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9832854fa910eeec01982a3a64d64afb01c7a754f16d16eda6a8180d66b5e33c`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63138f0f8ad09a95dbab1c8257f2178bce09e1e0926c0eae78d478be61ff706`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 90.4 KB (90399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:be38e98eb1ea7f87546ce0258811eb7c3ad54b903650d103a037131dc380b37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f3317f89d2617feb6ef969223eb41ab18dac19fb00c8ce2a32e2605cbd1de`

```dockerfile
```

-	Layers:
	-	`sha256:c7661a9f2771fd7d85ac39744fef5f13079f848f19cb1c7e8f5fd84d4ead53a9`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 3.6 MB (3614218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bc4f26daa58f0175ef3affec27ca16f18c3424f24fa3b15fc41cad5124b4333`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:214b0f39d53624da138c99df2ae6004cefd65577bbf2848458cef8cdd3aa54a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59851645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871ba079b79b4d865948d9ceb8da4d6e9e5b84e3ae46854298eef670ddf1f9a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:48:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:35 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1a7f562d848861daa5ce8c7b529efa9e26077c1a7bace0dbce7e858c5c3cca`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 10.1 MB (10079284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6c7612a7d09bd33183e501a919315d65730599fe7de17b9a704e333f2e5d3f`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b0105f2108a660e230e37d221188bb39a711a6a45e68872b613afc681581e0`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e8ed006c01192d6075abaf0e641ff7f7fdbeff453366cebe462e8559b4726f`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 91.1 KB (91063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ff2e370c6559d65c19b669049700cd0cd027bf25243f5d94472aed33a74a5cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ea9a55c09ec45e1c2dfcd13c1cdfc228fd1703d6690cbb1fa92fd1e4091048`

```dockerfile
```

-	Layers:
	-	`sha256:3a50dd895d5961d343c85f2e9094f6b8729984c5cbd850601d717674ef904c08`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 3.6 MB (3615054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8252792a9a1122c7cf8d4163439c82d9111f90ee14dc23347013697eef22d530`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:573a601ea7279fab65fc6fe6422a964ec60f5e60105d8b7354b68939b379ee86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61397467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379de8bd00b23c78dea6a6a51e246ae3f136bf31557f659ea66b3acf7febfe3a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc384a594a22fb9cba56083166ad92415a8fae6492493635cb669e15a58ddaaf`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 10.5 MB (10468181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7be72cac78f9fab2e737c59dc780b7780871b6e29b62d1b92978fd80a032dd`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a708ed2acd10ec87ffd95e4b7a78040549e6d8f8f769a9c8590332b707c6c59`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee0ef2f2196a75b0ed4c3653f4d00c734d4734b5b5a19da2228001ce8faf2e5`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 90.7 KB (90725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dab603aa6079873cf14cd5f527c89f7d55b8ef5e888a0fd0914e5155dffdd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fcccc3dee48c489342bdad20dd8c7184cb11b1c856bbc8bdc79a16e47c2e80`

```dockerfile
```

-	Layers:
	-	`sha256:5e41957067f4a372f31992f1bbcd915c968d7de001e8c4b280e6418adac85b01`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 3.6 MB (3612112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721c0b75c262861c763fd019b92bc2eb3337333b69a48333693656477714ebac`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:d2cf2f9d2697af30ab356f96712059118d159568525c0b809b073d6212cc573d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd` - linux; amd64

```console
$ docker pull neurodebian@sha256:e0f30e8305945b199f59250dd48f19187eb89aff61f70ded58f5bb0fc93c55e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60436554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6244381a0e203ea3612d8b8e36b5370ae8e8c38e151c7f1b9bd83cce53b526`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d81634c3a22f19a3b5fa4166652b5c9aae34476e13650ad7bc652f61eb796384`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 11.5 MB (11479653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965d85a1e4c52f97488303f188e9d06237012bd57df0491060acf8708cc49a03`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d8f674de13f57dbadb2b6165dfa8b70eca13f8eff036950162321ae22ff167`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dcec96dd012321b11532ab105aa3e27b6e6e411a3b6cd7933fa447377b3f1a`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 90.0 KB (89962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b6dcfb1638dfd23580726a72650f9cef6f03afae5b21071e083656dc6e2d0b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272c68995b2bf35f711e0e5641b2beb2541111d378741df9cb696cd67130d963`

```dockerfile
```

-	Layers:
	-	`sha256:aa6794db4475742e596ca9f7ae53ef9af3437c9345c5bdef6402f51da7374307`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 3.6 MB (3555553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf477f1a04333cc042e3c813c595f222b4ea79a1f87cd21145cd4ebf1984326b`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 13.9 KB (13903 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8ee773cc9c805381d255fdda275eb13c8cfa46e7807d6f3fd69770db59b51125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60041657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e9bd5b8aaa9644d91200de581f9e50e875efa5f4d756f222eb2d74866d55c1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:48:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:49:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4fddf52615bf1690082a9d73cb8346614997b5b51315236c93a190fbd50fb899`  
		Last Modified: Wed, 24 Jun 2026 00:28:05 GMT  
		Size: 48.8 MB (48798835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c88467285b1c1b968cff309144c9e430af7c074be128bdc6cf4caab3114dee`  
		Last Modified: Wed, 24 Jun 2026 01:49:09 GMT  
		Size: 11.1 MB (11149471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d50ed34a6ab4f2ddde3d7ecd1c26f01093382a3187564bdf895fc94780a299`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f886bcfe5b666c3b7762dd45748af67744d2c0af7dd9abbf9ab630515245c031`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ed3f36352b32cca558b5bf46abb822ede4530e3dc70a10cbdf220b5bd29cc5`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 90.5 KB (90452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4ae34c7a40a3fb5c524558703196912b06c42b84bda4d518b8f3c7e140684719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3577053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e612ca2762c7538fd2033e54010d716dc34c59fa9eec91e6d32f353a4a4cc4`

```dockerfile
```

-	Layers:
	-	`sha256:245948f67dcb16514baa4e7156aebf246f2021b0baa2fd9d9e0a7c1119912bd4`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 3.6 MB (3563024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:910b77e11ed8481d55c9e8ecc927416305c390975cf938b7d891444f1060bd38`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:9818680b166763d4cba8100a46f14e9d58332f1fe82ec0a0732d82b7e0774d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61871687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b307c252def927240b96a69a452a0452145c179fa93fc6235617c9e727d0bec0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:45:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:466f7f9acdfac81cb720fa13d53a50111bee95182357f963947200187b3ae3fe`  
		Last Modified: Wed, 24 Jun 2026 00:28:18 GMT  
		Size: 50.1 MB (50080955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2283acadf304f3a69ec710b735a0744bce58269bca9c33a763c6a6817ebd5fb8`  
		Last Modified: Wed, 24 Jun 2026 01:45:58 GMT  
		Size: 11.7 MB (11697753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74779e8bd3a27443fc4cb66b65d67ebf43aee120fb4e2e8fc6c8f9684316f1f5`  
		Last Modified: Wed, 24 Jun 2026 01:45:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20da08ee4148d3d8b05f7e6f1ff4e1e029c8baae0a9de1d458e6bbd5e032361`  
		Last Modified: Wed, 24 Jun 2026 01:45:57 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d7ce12599aa6607c302cbeaa60e282efe5f6f71894b84d9b7d29c89ebc5716`  
		Last Modified: Wed, 24 Jun 2026 01:45:58 GMT  
		Size: 90.1 KB (90077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1fba4e4fa4651d2069721d5ef3846887a6534e37da0d5d2dc5ac089d0272ff3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3570151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd131bab76d5a1fd235415f2fb8567c377333f15ab803522e2ad4bb99edf126`

```dockerfile
```

-	Layers:
	-	`sha256:b129c2c7b5e14ca7e264ee6ac01147d229136ae6e30f4f79963b279681076475`  
		Last Modified: Wed, 24 Jun 2026 01:45:58 GMT  
		Size: 3.6 MB (3556275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5de8673fe5f1a69c7396d154a5350be92b978e6f5de36c6c95b80265c3478b31`  
		Last Modified: Wed, 24 Jun 2026 01:45:57 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:4dda0bb76c4b0fa34e985a26e1fd727baf3d908483e81e0a546248273e94b988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:37cf710cd62a340f23262bc0a341be1c932b52f187f54e21edc4c61e1d210726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60436945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23040e44a1a08a0e261ae6c0f779fcc20db8f2fbc448ba27717f77b7ff1e404`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:27 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91982b10edc630f7e808f915cfc15d51d1e0cad084aa1f3a49ca6b015b78c7c5`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 11.5 MB (11479642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35ff64bef9d2e3cac1ecac403283ed88a168b39c492a94640af6f8223dafab5`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d8f674de13f57dbadb2b6165dfa8b70eca13f8eff036950162321ae22ff167`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc5a8db4ccd991e9cf9d1c100cf6c65350c9f26cf82560e87b6e4c92b1cde25`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 90.0 KB (89950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6021371c1f35748d891e95928dd444f84b97dec0dd79f2d8999fe536708c548`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:45ad6d1ffac84bbdc88c2c0bcaa5f0175dcf9b3c4df4e9d3691a572d50ce3982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3571520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e4f839ce4bbca3c790dc5a47b37cc3ba52c5c50224e31bbc8e9c45f07fedda`

```dockerfile
```

-	Layers:
	-	`sha256:5b4490500f01980e51635872e38a131f421854e588644ab05283ab271ecc8630`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 3.6 MB (3555589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44c584572e84abeafb99d0ec2ffeaa013b0badc96233cf1717b95df0a6b1b4e8`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:7e61b50ffbac59dfd9583ba279990798f19b673a00580ffd8f88d7fd6ab0ff8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60042087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8c568d5a30102825cbd1783e90b9fd13889eba73c5bef9f21833718c20c5d4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:48:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:49:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:49:00 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:4fddf52615bf1690082a9d73cb8346614997b5b51315236c93a190fbd50fb899`  
		Last Modified: Wed, 24 Jun 2026 00:28:05 GMT  
		Size: 48.8 MB (48798835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0de53c870ac2c975727e1e6e262e6c67909ed871769e29804e9ccb5b75a55ab`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 11.1 MB (11149497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d3a9052c5fc69b30fe247c52919da76b510e8b194c75862cc38d3cc9064aa3`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f886bcfe5b666c3b7762dd45748af67744d2c0af7dd9abbf9ab630515245c031`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a335ddd10124e4ed92d2e4f4738cd58356c71246207fd8f85f4645668ce34d`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 90.4 KB (90435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d3cb9093cde8bcb80d597ff70df796d6ef6cb08fd8761928f583af2293f7fd`  
		Last Modified: Wed, 24 Jun 2026 01:49:09 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:eb91629b8d1f4ae0219e52b597a3df99885b45352c670e1271db99c00a52b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf046a1004c2f9bfe5ff2de9a9cfca500d99fd1c08950d02095c13ff97773d72`

```dockerfile
```

-	Layers:
	-	`sha256:c0a90934088e0b05bcf9b0411f67e2703b83cdcd7994ea2150f3f639e302f38c`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 3.6 MB (3563060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0ea1cd2cdc0c6fa480b0803e55f7f03f46055075aec54501e1bd2c0f475215d`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 16.1 KB (16070 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:46b7cb8f647a68a5248e01044e099b188dc0ef419c7ec680a19287545fd43a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61872131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76132dff404b68e08cf7f0cccafac943f1954212a6836a38fc29282927d8668c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:46:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:46:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:46:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:46:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:46:07 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:466f7f9acdfac81cb720fa13d53a50111bee95182357f963947200187b3ae3fe`  
		Last Modified: Wed, 24 Jun 2026 00:28:18 GMT  
		Size: 50.1 MB (50080955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0661dcf0892236c7ad6a3772cd577438245afa6a970cdd7d75f4ef1d4fcabcbb`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 11.7 MB (11697768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be0d6a535f0f2554e712d75691f577c3cbd2278774bb14085f694f2bb53f96`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5692dc14820ae2b6dc7893762711293c89add7cac576eb143644d4f190997b`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2467b2a5569126a69b9d278550ff2e9b7dd20d11b8b4100e817c521f82962c0`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 90.1 KB (90086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41d501b7bce95c0c3115cb5afd3fb72a90428f014abcc10986fd7148f58623c`  
		Last Modified: Wed, 24 Jun 2026 01:46:15 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bf5fdf943bf50b822dc9844879bcdf59dba86e72b2aa01f6471d3d0870843f01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0994ba1595a2933e6fe9b3c4f10eacdac01294daab404ad95b784879c973e03`

```dockerfile
```

-	Layers:
	-	`sha256:e331e30ede5af8691aafb177ae46b119274b0e1f3d7e03bdb3951745e4f0ba0c`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 3.6 MB (3556311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f2c584d176ec5681766d0c02764347fbbe2d6c677cd384d3141c439571a0fe5`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110`

```console
$ docker pull neurodebian@sha256:097aa5b340351a6c0f2750ab03fc6acf524ec30183c57118b49a00b6bf037c87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd110` - linux; amd64

```console
$ docker pull neurodebian@sha256:269dc147b283a31b14c6016930738a98fa82b176604e8cd22024d2f7ad5b2cbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64983524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd5217c62beab262ad626f521d96d63e9441f7f478581b773b261887601207a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:39 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1868e29dca8d06ec08c63ec980f73bd80cdb22b3813910c1873869b040ec3d8`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 11.1 MB (11103422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7087263fd78fb380f156c7edd254418253aca5e7b59dc9aa73d2b1b6cfe1eeda`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 1.9 KB (1896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d59d37b7f7672c731a3e8462229225236a916be67ffaea89452c374d7d4a2c5b`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d549ddb73a0a4de17371e0860fa6527688f898fbf08c79eaf70d5b2dbce04d`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 101.4 KB (101366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bd326cd3f8c9c5453282b146542d4dfd2d13e30987839440218069868b54a7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4374da68c99e956a9efcb4959e0ed2d04b1f115afa2dddccfdc695296cd63a`

```dockerfile
```

-	Layers:
	-	`sha256:a356c6ed04853a345d9b43294162eea5ef19882e15b766437d00f7454beb85ed`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:149388ac369bc109592412db29c3caab79a8b4e6bf6979e06d63b12b5d17bb28`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 14.0 KB (13966 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:db59150e751ebaa071eb88c9583017dcf50b6cc32b44d5066ef37d6672d96c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63470392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c5f54a99b92da342a05240b46cf097f9c2f2d13936aabc3188e1ee6db9cda`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:48:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037be84758bc22877872eb5e8bae0fb6b5a24b036a722baec88bce9d18cbb72d`  
		Last Modified: Wed, 24 Jun 2026 01:48:22 GMT  
		Size: 11.1 MB (11109739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1629be750b53935b30f20697f01e7ad67e4311230ad659d8f3ab4886977dc98e`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c053c356cd8dc393187e4945b31af66a06066b54b5b2fd067387a4fdc4effb87`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b076d91feb322621ed0ec2e6fec0508fe4221893de8b2d698b29db11fda8541c`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 101.3 KB (101274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6070782fb7e61c2aa5ce40d7ec6b5e256830d0d8c540bd2d05a5c4eddc0f9487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4e2450573dc185b54b0c1593696dddb4d2947e99f4723a3ee09ed26b182972`

```dockerfile
```

-	Layers:
	-	`sha256:6c316f1ea7db0f3b301010e7675b83e3629819025ee707d974b103a8ec4551d6`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f425de449966bd8f7d72af390daa02ed78e42a03953fc18faaea8f9159a64da`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; 386

```console
$ docker pull neurodebian@sha256:9f35da4ff70ed85a70ab71d39fb5f524016cc009c8fec5e7bb66b65777d9156b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66318703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c46c123906a6b6f4e05214801735f434fa222050e99e05827f8d42e0af0073f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:44:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:508ffc251196056212d40e318af0b7425af79fd3069a3f9ab15fd6220917ec75`  
		Last Modified: Wed, 24 Jun 2026 00:28:09 GMT  
		Size: 54.7 MB (54712884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298666005f69b95992813969bd32c4cae80a09d7a17409259401b918abbeb26c`  
		Last Modified: Wed, 24 Jun 2026 01:44:41 GMT  
		Size: 11.5 MB (11502409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac279db5a42d6355e94e1981ad3639bb2f054828fd54864b12506f48574260b1`  
		Last Modified: Wed, 24 Jun 2026 01:44:39 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d79ba6075cbe6463ecd9269efee1c58965da52722bbb3f1ec79e15f7c3a59a`  
		Last Modified: Wed, 24 Jun 2026 01:44:39 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a46ac06ab5d6ba6abdd9fe0c89da4ce35fbfb58a21aebaa0e637bf81fbbeaeb`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 101.3 KB (101253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6cf44b8104edff7b8af64d7c01dd3ee113221734d70e7ba192464ccfd19549e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdeda03f3056b1791d9164b1e5a1d6578d8bad73aa0a0096a4cdd4d78af79280`

```dockerfile
```

-	Layers:
	-	`sha256:2f50690e5b0c8d3d71bb1b9f6c83d01207b6c36353c3f7a09a28f161327f8beb`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138da5b781ae675e3c02e2e23d82f4d3f46b9b896840142ef2e9ccb107575ea1`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110-non-free`

```console
$ docker pull neurodebian@sha256:33484d659e76c170b74049045b70d0bd4e5eb37d0fa87e5e90fc7202f81a5473
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd110-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:69228837f4f549cc71265267c54d11ee5ec2deb2ed340dd03e2680e9eea2e8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64983973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e139a624714f20bcaffde982c7159ebb4aba944de4be075d8fab48d605a710`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:39 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:43 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453dcc39ee90bd64c5f9e7c79c88a87c90c963f6bd7260004c8747350b1f1a17`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 11.1 MB (11103425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f7d8cb6675890beed058ddf99dc83c86f9c1dbf7680ff6f45547a977c1fba3`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d59d37b7f7672c731a3e8462229225236a916be67ffaea89452c374d7d4a2c5b`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760a0e9ebeafb8be52ee111e37e9b8e1d78305da3a6f4c683b9509e6a2c95c72`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 101.4 KB (101431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70b566004ec36efb4bac679145c13f5d9194b922e6c3e5f9d089db1e041d976`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9bbe5ab91a021236ef7a580983defcd27ddb1999ebc15444fad9660dd18b4870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baf145ca5df809551b9da9678b2269af0c64f5c9d1741b2e39e11c631da17cf`

```dockerfile
```

-	Layers:
	-	`sha256:f7ed7c246650ac855ee82d750606accd6fe26719b6e9f8a1dcaeeecd267aba55`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cabea5b49740460da7d8244eb365df709057fb3cbf59c76c3c7af15d045682c6`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 16.0 KB (15994 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:7a636efaee6f21ebc76c6152ee8131206ff42801cf390de4c35d021b318d0e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63470935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe9b0400c0528d5e271b46d1468f575d2b78e60e209c31896f199e614505d14`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:48:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e39bc6bc1ed41eb506aced6924d9d25ecf1a3e84e238e489d672651e99758f`  
		Last Modified: Wed, 24 Jun 2026 01:48:28 GMT  
		Size: 11.1 MB (11109917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d4e87b399a6f38e8922bd55268f39d4624b38d7a87893932b9735adfa080f4`  
		Last Modified: Wed, 24 Jun 2026 01:48:27 GMT  
		Size: 1.9 KB (1895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038e239581ad7a245fc0ef7c5853326c75a8b67c911cd99d2301d0efc3e185a7`  
		Last Modified: Wed, 24 Jun 2026 01:48:27 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272f72ce7a51d3a2d4d295d158afc8b8bd75071fddd0dc59210bf54ab7ae1e8e`  
		Last Modified: Wed, 24 Jun 2026 01:48:27 GMT  
		Size: 101.3 KB (101251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba60756fd7175aa79a5bee9a36489e37055393bd362d903bd7de23b7257f7f57`  
		Last Modified: Wed, 24 Jun 2026 01:48:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b5c9b3c82a84c1a1dc6ff55123a42c82e1cf63d65e25397bff3ea0df61f1d40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e284f5c9621e66c31f20599a0f25ef384b39e1c39726d57fc4fd502aab47040f`

```dockerfile
```

-	Layers:
	-	`sha256:d14f341c977a733e9ba62f54755a75bc9d0befc983f2d207186e790c6854d433`  
		Last Modified: Wed, 24 Jun 2026 01:48:28 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da97c88180394054a2a94f92c089ad6bc62f9e532d4c8fc4a8b26407f0c80c6c`  
		Last Modified: Wed, 24 Jun 2026 01:48:27 GMT  
		Size: 16.1 KB (16134 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:59276fdf68cdf6c39f9f2b48adea89d87a69b799a451e0654695a04f8cc2d1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66319059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f05541b2fe796f61d1f458804828998fab7f060d538af08930063aa5f789798`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:44:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:44:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:52 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:508ffc251196056212d40e318af0b7425af79fd3069a3f9ab15fd6220917ec75`  
		Last Modified: Wed, 24 Jun 2026 00:28:09 GMT  
		Size: 54.7 MB (54712884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1003e73ff718fdd0ac720e6b2b133d9905cba574dc287b25be82e4ff3db864b2`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 11.5 MB (11502355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b007ad9eb044b5b1ec8d7f05615b58da2a62b453fd9cf797bb64b34839edadc9`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89546f6290ccf1e1f417f74f6c9355b14df28e67c1357fe5ade3f8a14355070`  
		Last Modified: Wed, 24 Jun 2026 01:44:59 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb4c67ad93bdabd1ab0abcb0c7f29461c23f753e1c83e7e190845bfd5b7a68f`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 101.3 KB (101275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f4c5d6b97b2aec70163c3b8b6c8655e50de53e907aee92fad6126127cac3fe`  
		Last Modified: Wed, 24 Jun 2026 01:45:01 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a5d0b50f8fbb42f876d06f7b914bbeaf551f110de946b00c9ab62be1e135634d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24869a05642126e1fd113e8a49c7c57b02a8779b4e52cc1df48985260eb767e`

```dockerfile
```

-	Layers:
	-	`sha256:d1980be7a551dc07a55478fd74893111004bf34dd26ef817a9137a20bc292842`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65207eb267d41599bbb9cacee1d8500e39c1952990aa0c30ca9ae57a275db454`  
		Last Modified: Wed, 24 Jun 2026 01:45:00 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120`

```console
$ docker pull neurodebian@sha256:91e7d9bb65892693cf7ee242858e113e7305f6b0f9a94a99ad3e5463acfc8464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd120` - linux; amd64

```console
$ docker pull neurodebian@sha256:9dcf142e45da10a07f1e7ce813116cc88b0f4bca575005c373166ccc1047431d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc6ac206da275ea9cc52c97ca1bcd0b19492aca82d70f574f0550b2c1af22e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4855bd21e4e8a3515dc466b892c870c3e2bf0247eba82536e99fa46e9fe57fd`  
		Last Modified: Tue, 14 Jul 2026 01:47:02 GMT  
		Size: 11.3 MB (11273505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d630e390af86f9810619d22b91a5b0999d3e6ad22fd91a771899e81cc31d1f5d`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab406595373f1dee101ab9a5fafaff0b9cd6a73ddc96b91b5e359c97dc4a7859`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fe06b79cf64e33ce3eea91fa4bdec8798b6d9b594a4bcfc91e14dfa3b63de4`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 93.4 KB (93394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d89f2793c262001b6654a070d6f3cad676014c4b229aa71e4f42adaaf9f1d651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69f0fa605d9bb46b456729a94655d33f24efcc6f58e2be2f218ba908e3fb8f8`

```dockerfile
```

-	Layers:
	-	`sha256:0e6cd4ee173b0f6caf3efbd982dd0a5ab00a5c15cd8843897ddc830aef0defb3`  
		Last Modified: Tue, 14 Jul 2026 01:47:02 GMT  
		Size: 4.1 MB (4075951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d671e4cfa9e7a58f0da3f348acf22ff81600d778d8a3bbd6d0376f4d90d797be`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:254fa1694836492e9aaf6440506c6b9911063d28c50b6d5ed465beb993d3d405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59737820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cc2e5ab9b16aee91e5248ebca11520c078c663794109e08669e37f4fea2103`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:48:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fabb664793f3a0913499054b45b475d92512b8d5ff529747269d441608c317`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 11.3 MB (11252896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1691f91d05f960b771036213951be296a17e38bc2e49f28312d7040235f7f6`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dfc09d74e7e4acf8eef033d39f35b3d9635eb6c95f63712ea5a8beb08d80417`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a819d23cfb4b067e3e0d4690c02915cf69ed970e7ae1532809c0bd47a84e804a`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 93.5 KB (93549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f24fcfab87c8620b5a2a501329d82cf9264da5543ca700f54122bb0cf5df4818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a00058d10bfdaa21bb9c312fca0094e9deb81d43ff0f1b00800359b1a45437`

```dockerfile
```

-	Layers:
	-	`sha256:0e382e4f547ab02162aa0ee51bf416c537810a0d2bd31c9710b42f7d1d95b625`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 4.1 MB (4076157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836c5eb651f47a0776dd8efc2d2dd95017ba2aab50704f5f0361f0fc4dcb0f16`  
		Last Modified: Wed, 24 Jun 2026 01:48:25 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; 386

```console
$ docker pull neurodebian@sha256:007a99edd7753df67ff50043632a55393ce7660a2539cefd4ce294bd33e3bd36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba4921fdb00b37961f495e202b635ba55549351e142fac3fd8410c735ad69f5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:44:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:44:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7058ba24da67d9c6203ecedbaa8d84fccec092ff57c19e281dba766b418c9d`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 11.7 MB (11693184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab2266aad1a9c343d326e16a32b9959738f3db6aa15de817328749c626a88c9`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85808ea636bebb0c873f995758d9c72b988066043f040414cf42e6d583eaacd`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0f317b450af5ec002523cdd104b04639efc63cc32f93a047d43ba332675c53`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 93.5 KB (93452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:44c97f363ab6fef57a756f725fa6c4a927ec1ee43f760da4bfa4c9245685162b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6557ddbac964b4c0a500ad0b08468a672fad0fecf11c4a80789143161f1b18`

```dockerfile
```

-	Layers:
	-	`sha256:9e38593ce321451d93744ae4adee0614bc19b8ed6c640bbfd38c49e769fc7e24`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 4.1 MB (4073882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1234996d8894105e4ce1b2e6888638254f204e9321e72a8926ddafb65d14fd2a`  
		Last Modified: Wed, 24 Jun 2026 01:45:02 GMT  
		Size: 13.9 KB (13936 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:6ae1d5f5bb732559c1a10807139773fca048ea2203a0b8843a19348a400602ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd120-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:a1cb2aa96523a78ed35991112115a6d402e7916fdf4ee010e85f5c06565163d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d402e2c0346af1bb26926d3f399b6aab53c2382c86bc2423acbd9dfdff474c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94bb8459869ec6e3955d6415a65c4dd063d5281ce2c130e8f23ccebc0a023fc3`  
		Last Modified: Tue, 14 Jul 2026 01:47:14 GMT  
		Size: 11.3 MB (11273524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bceb97d5b48caac32ae6e23db0d7e6a9efe075d67bd5b7b7945e8603447bf40c`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a006ef7289ea2e5aa9e3ffb8f9768e25c462cf9097214dc3d3ddf38ad11f28d`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7586680fc8fce5d7f90e316effc60ea3496c82f7dd336c046b30b04007bf83d5`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 93.4 KB (93383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051c03efdef6b4ea5c1a73b2e5b9143e769e744a9f6e5278c40f0986cd925b35`  
		Last Modified: Tue, 14 Jul 2026 01:47:14 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1b74b0aed9a9c498c921c4f0a3e9275aed6f99047e1c9fae4485f7078a3d37b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce0ce94d6700e135ab9e6cd2903b3ef8c0e523319df8f1baf613098065dc64b`

```dockerfile
```

-	Layers:
	-	`sha256:07b0f23f871b015fcb2e541483a31c5691a2c83e4daf5bb26472db3bfb2d68c2`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db2cc8a264f88f047caf2561ad253a13e3eb4b0fcda6ce148e9c848f9d5b6a8`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 16.0 KB (15991 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ff2802bfadec3407144f37eba255b77f364237da31d8b22943e71ceff1867e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59738341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725dd8aa12fb0161049b76fff8d404d979ed5e34835eb7864a6af7a0e296205f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57f8b6430338bdbd253e67f1211778a3249bc19b3d337b29b7d77f4bd2100a`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 11.3 MB (11252936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17449b4c84b5bfdafe2b666f8f92ea0c7a17ccbd33d13c2eb66b2ad76f4208a`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef7adcf92c1f89331058f54432cd0916e434637f5350b994de71cf0543c9da3`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c85c01505091d0017cfc26b5b19103aa4f743f49d33df9be6dbc15b60b7a0a`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 93.6 KB (93580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726b6a07115232dfe8c8c8bbeddec00e69552ac6b8ce225312398ab28bb6a034`  
		Last Modified: Wed, 24 Jun 2026 01:48:40 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3575ca857707abba734a2542b5d9cdbd56852ad914143ee1ad22f9d070fd2d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e6ded0e3c7666debc96f5f36c1eaf6ba4d6657482c4e1b3213b5cc3fbbc87f`

```dockerfile
```

-	Layers:
	-	`sha256:d681fd95442c46985aa5c0598999538e5eaf3e6a55544eaccab0f08e5e8a86db`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa81045ba757e5ec483d14cf83519eb057221ffa30eabbb18299a536022e0476`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 16.1 KB (16131 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a8b501055f1ee1088e65d5a8e82e588192c54432ad10ca5846c7afcc93fd2824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495f2e3d7f18ff4a2a76585708f8bb4c60d8b2672e5e98bc3756fcf411afd7c3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:04 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de7c6a2bc43aab7bba927950ce09da24387a65116705f1c1905ebf8a51d1776`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 11.7 MB (11693079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cb973994433f14f5335696271a5bce15ebcc853e5d89b15b07c8b38cff33b0`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee857f661b0cdd38b84f2718aa65773e71cb5558684ac802533e984748695c94`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a76d5905f55f0bdaf6a41fdcc8551b194ad190fd0a589ad5dd868056703bb2b`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 93.4 KB (93445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b41b61def5de9a066396aeb093d8d960241812a072992ffb9e9cac423dc2bb`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1f4e0e1f19b016a6a7369a0861be92ce0a9bc5608eef11a8d5e589b766e0e5a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011423bf913ebe70f934c3bef6e76d8b8d7071dba083236a48f3cad9c36394b3`

```dockerfile
```

-	Layers:
	-	`sha256:8d6655f756adb753001781a23b4bfd1975f332d1b4e7c4e4bcdbb4a16330ced6`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49454077d2a18b47b0b90e5b2eb932a8d4f9c4e915c402fcdd25b0940dc95a5b`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130`

```console
$ docker pull neurodebian@sha256:88915a90b5726404f08b6163ab4a11d953f22b851dd9bc0bb37a81d9c01efc6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd130` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6e5055393a816e6545cec22c90301632be214a80a636775067b6207a7536884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59699967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c570dbfa7cd7e8b170fe7d4a22f96697f3f14a5abcf051a85b02db7da6e8e407`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb7125a2b97bfd874ed48edbeceda28a113fc6368ba2f8c422f1d26985ffe9a`  
		Last Modified: Tue, 14 Jul 2026 01:47:21 GMT  
		Size: 10.3 MB (10294093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112c1141260149b45373e70becbf01aaccfbe567d9ef1f261b65bd87149577db`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9832854fa910eeec01982a3a64d64afb01c7a754f16d16eda6a8180d66b5e33c`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63138f0f8ad09a95dbab1c8257f2178bce09e1e0926c0eae78d478be61ff706`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 90.4 KB (90399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:be38e98eb1ea7f87546ce0258811eb7c3ad54b903650d103a037131dc380b37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f3317f89d2617feb6ef969223eb41ab18dac19fb00c8ce2a32e2605cbd1de`

```dockerfile
```

-	Layers:
	-	`sha256:c7661a9f2771fd7d85ac39744fef5f13079f848f19cb1c7e8f5fd84d4ead53a9`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 3.6 MB (3614218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bc4f26daa58f0175ef3affec27ca16f18c3424f24fa3b15fc41cad5124b4333`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:214b0f39d53624da138c99df2ae6004cefd65577bbf2848458cef8cdd3aa54a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59851645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871ba079b79b4d865948d9ceb8da4d6e9e5b84e3ae46854298eef670ddf1f9a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:48:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:35 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1a7f562d848861daa5ce8c7b529efa9e26077c1a7bace0dbce7e858c5c3cca`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 10.1 MB (10079284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6c7612a7d09bd33183e501a919315d65730599fe7de17b9a704e333f2e5d3f`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b0105f2108a660e230e37d221188bb39a711a6a45e68872b613afc681581e0`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e8ed006c01192d6075abaf0e641ff7f7fdbeff453366cebe462e8559b4726f`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 91.1 KB (91063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ff2e370c6559d65c19b669049700cd0cd027bf25243f5d94472aed33a74a5cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ea9a55c09ec45e1c2dfcd13c1cdfc228fd1703d6690cbb1fa92fd1e4091048`

```dockerfile
```

-	Layers:
	-	`sha256:3a50dd895d5961d343c85f2e9094f6b8729984c5cbd850601d717674ef904c08`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 3.6 MB (3615054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8252792a9a1122c7cf8d4163439c82d9111f90ee14dc23347013697eef22d530`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; 386

```console
$ docker pull neurodebian@sha256:573a601ea7279fab65fc6fe6422a964ec60f5e60105d8b7354b68939b379ee86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61397467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379de8bd00b23c78dea6a6a51e246ae3f136bf31557f659ea66b3acf7febfe3a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc384a594a22fb9cba56083166ad92415a8fae6492493635cb669e15a58ddaaf`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 10.5 MB (10468181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7be72cac78f9fab2e737c59dc780b7780871b6e29b62d1b92978fd80a032dd`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a708ed2acd10ec87ffd95e4b7a78040549e6d8f8f769a9c8590332b707c6c59`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee0ef2f2196a75b0ed4c3653f4d00c734d4734b5b5a19da2228001ce8faf2e5`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 90.7 KB (90725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dab603aa6079873cf14cd5f527c89f7d55b8ef5e888a0fd0914e5155dffdd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fcccc3dee48c489342bdad20dd8c7184cb11b1c856bbc8bdc79a16e47c2e80`

```dockerfile
```

-	Layers:
	-	`sha256:5e41957067f4a372f31992f1bbcd915c968d7de001e8c4b280e6418adac85b01`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 3.6 MB (3612112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721c0b75c262861c763fd019b92bc2eb3337333b69a48333693656477714ebac`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:fd8d220e33069228e1908c13795cf0f0d5f1e7005b3735b9aca9a314024a4b05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd130-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8dd2ae1a8cffe9e5b288a3cd84d1d8b83524cd3d4af7f361665754d606af852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59700608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c38f43b3b322ee576b210ba9c44ed33e58c989c172835ed4f8ce873296912a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:04 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0ab18ad126921d91f75d35cfcc8dd98768e6f37e61a9727de38c965b4d0897`  
		Last Modified: Tue, 14 Jul 2026 01:47:11 GMT  
		Size: 10.3 MB (10294213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67495945cfe5641c8963a924b0486c89117ead2c92a1062ac7186904d468f49`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f594d741ce2ffe3b50daf8fe99e7108ebb41e744af5f3e4d4b2a2aedd9edb8`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43012dc4989f9a71f02611693085a11ecc3e06ecee2f9efb158c4bcb6f5ad379`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 90.5 KB (90472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91cd8ece144717e9e101d28839754579b1a4dced6933b2aab3dc1a78d33acb7`  
		Last Modified: Tue, 14 Jul 2026 01:47:11 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1a848746553a0f87ec9978b8101745e6dd17f3658bbeb1000afba793dada963b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3630540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179f1578040b38c18d415b0e16c4d472f8f8059be7b701ec8b53977b22418f94`

```dockerfile
```

-	Layers:
	-	`sha256:f4f5638398829d20a38af25aa040d5acae8ddc2195e9ec05807fe3fbb3931454`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 3.6 MB (3614258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a2846fd49514193a79108e7bd3723f6293f131f60350e0fd118ac2eca12e8b`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e1b7336d1152f988b148e32442e5aff966ea043393c6db69f3416df34abc2f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59852003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3376fa39221b6b10d31402e4775bafb210811b7e3e5bd65c3a78d6fe4f6213cb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:48:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:51 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d30b3b982a47f971a69869bed1ee1ff394e43b96b7d6d1e59006710075c6c3`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 10.1 MB (10079195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990ebb8b34a3dbad6ebc63594e951b0665a35217e358d4a2d872c79dbf7832f6`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d412c65895e9719eb9ec70dbbfe3e27dbb14706b4f1b2a84d3a934c5ea89152f`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d4618a8413cad3a44195b11e837a0c74d8b9a67c3cff4167c719f10b0fe5e9`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 91.1 KB (91061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae49fdab44c557279e2faf224a1aaf256936ce951da15d75af7c8dab1dfc461`  
		Last Modified: Wed, 24 Jun 2026 01:49:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b6681c763ad36d4bc7d42e370706a23dcd1b763aef4daa69448a2145fddc96b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1c082653c6fa1791d575e1a7c572a7315769ec2ef4f872160a7dcbafd7475d`

```dockerfile
```

-	Layers:
	-	`sha256:1d5e593608435b092b2f5516efa4396f4fa3e2b72caed49be4fc22fb0876011b`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 3.6 MB (3615094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8e7c12c578700b059dd7ca7ee39e2f9f5494fa0da32eaa6da853f4006c3a81a`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:4ed0112526c9e2deceb040e27a68d4816c4d83ad6602ec0af763ee9fdfdff49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61397973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1280d00ddc8ce3338f6fe683c3aac020897b8c18d135f308b5488e0e2847e4db`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fce37cde330f8d1ae2506c6b080cac6bc79df4fe165dd82321baf47860c8368`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 10.5 MB (10468215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7be72cac78f9fab2e737c59dc780b7780871b6e29b62d1b92978fd80a032dd`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a708ed2acd10ec87ffd95e4b7a78040549e6d8f8f769a9c8590332b707c6c59`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a060711e22b48af24228ac3caf54a75641b66ab5718d4a05bb1e788c298257`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 90.8 KB (90752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efafdf85f98ab4243649d5602f7551ce71830901a987a21811778e61c90c5f3`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:436beb7e05bf9a36c9c3662487f14f0d7e2005841d572a8d23acd7d8b38e009e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcaf3c92b8bf587df181f5aef9534360fd5a075053f337343d1a8988c638878`

```dockerfile
```

-	Layers:
	-	`sha256:538d9c5d1bd4cb24fc78db37bdcea37f03c0bbcacc88e2e509c89980814aa876`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 3.6 MB (3612152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be3b4586065e90fd092c33c828c52a061efd5632acbc7a38512121453cd9f912`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140`

```console
$ docker pull neurodebian@sha256:0fba4b4f04c7d525090d88b009fe402ef04adfac1646387950e3a6133626a46f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd140` - linux; amd64

```console
$ docker pull neurodebian@sha256:e541774a8ae8c29e9db8916c2dd030fe0fbd66702c6d644b49a82ddad8593554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60355163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85597b86367553fd184628450de73c3d7f869d843744188cd8c7a4a948cd6a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f13a454822f3089040211605bedbd119d716a673282c155ca3d9e2352c9634`  
		Last Modified: Tue, 14 Jul 2026 01:47:19 GMT  
		Size: 11.4 MB (11396905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742051d6e27f7ea2dc0fc93b294c09e0ab805ea7374338450cf718161ebc8e86`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e4a808543a9d59404ce526d123f644c9c73ad677f07b4f531f02c3fcb30237`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4da09d83bcd8cb99a0958c00303b0738c1f1dd17207bf301352bccd48b36579`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 90.0 KB (90023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:375509c27cc2b396af55c84d6d1c07883ec708e7a465d524ece08259c9e43290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c6097bd0c08f31f59d3cb8b64c1e855195f6b7c013bd4d8986b37b1dbe7518`

```dockerfile
```

-	Layers:
	-	`sha256:663a93d592e745f2bc09175bde9e44fdcbb89ed7ac18f1938098cdd5d1d39ffe`  
		Last Modified: Tue, 14 Jul 2026 01:47:19 GMT  
		Size: 3.6 MB (3558591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbac11c8adfac262ed27eebe65e23303ac493e28ce14d733f52b794d12fa08d4`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:6cc33ebed78cf1fc3017ef761067669e44057e6fdd80cb810e377f1102801a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59954366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4be4ae37f69d7ea82d64e3682fa2a448f9b0db3c0b56e075f2064ef27fc9dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:48:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f5991d5bb2fa21186c9152bf0a9fa1c9c73892f68235c440c9967628fa5ecac9`  
		Last Modified: Wed, 24 Jun 2026 00:27:35 GMT  
		Size: 48.8 MB (48768712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2e1e0329984e9b822dec196fa02c3f7a9d106aa5c0489947abec911cfd14e4`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 11.1 MB (11092781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dad5cbd40d36b7dcba1ff82ceceee53b573a3e3141c6f551b72a507381a7a94`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05aaafa5adc8240521644a38d840cd8692076f1b2c5bf9ce510dd80143c7fa08`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5d1d43ce00fac375577f4758cc0413758cf478f194088cde6359150fad6ad4`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 90.0 KB (89967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6ac970a8de6aa62364d6fd17a12c5c90baed42c57d06fea34550d68a39b0282a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3578083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f015e7a47414d606ad5d4a8a6a3617becbe4681c5988c8f57ba80b2efd5c3c2`

```dockerfile
```

-	Layers:
	-	`sha256:37c282c3de9c5901577cf393ee1e753aaf1d6e0c3e58cd31df53dc5f88220215`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 3.6 MB (3564026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9e1f4f7e4e3c58d3df4e5f30031464cd5e851de49e450f6ef7a9da1db59e8a4`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; 386

```console
$ docker pull neurodebian@sha256:4f4f985c8cbfcab36b13efe05570cc679b7c5dc684966fe3fe6beaf84d31e55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61770724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734c0c5e840d915423cbb9d28000271df768d38d3b5c5a27b1eb6c971d936f2b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:45:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9b65e2e922e5570b1d72c057efc4f398b0b14051ad2a0b581d6669e50195e288`  
		Last Modified: Wed, 24 Jun 2026 00:28:28 GMT  
		Size: 50.1 MB (50051032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf69c87ba5a31526738f4bbb7ed287a0375e1c1136867a2d7d2a0bb94a9ada`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 11.6 MB (11627159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba245f059908d44ec77c0e21504512059f4cc111e10982a7426e4c4cac7070db`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfaf30e16259de14f4a0c86a7ac6c97405a8bf6938495310b75edcb1ec09803`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9bfa0db416ded583d48e9a1edeb92958432bfe1ab81594b0f79fcd1b2f2da6`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 89.6 KB (89626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d7b84a45695921e1d7a30de6d86a08d841360199c690ee0724564c14f762e509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3571179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea0b22104fd8ff7b8645c5097d632e2ef1b6fbaf5eb8f97269c8bf56307b980`

```dockerfile
```

-	Layers:
	-	`sha256:1e4693fb6eb6f43ee21dc1b4e1483f14eb55e56932bc13104e6af5d266e0aa95`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 3.6 MB (3557275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4626b7ae2ef016f6787da8f0ba3538efad23103181e5fec15a0bb84a6a1be575`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:ab67c47f6ec5c360f514b4d15fb2924ff697562773769d79de2d04cac69c99f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd140-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:5900d24ef53bb3e078fcf322aab3f4ac08d5414d3934c5922160e3ae751450f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60355654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:146012f23dee6dfa47b70294c8265d95da558a25806e3246f7ac4923305cdffc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:47:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ecf8a2dccc3ff6483dc94013a626cf8d1d2c570abbd8762780313faab534c2`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 11.4 MB (11396916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b69102d8a08bc334a36d49c37fe634a4305a78737cec0905bf5ad89b8cf682`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2221378bdc898bbabc521473650fe4789ad841e8884c38b0321f72cf2aa653`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6c8b583bc08448c519a6d8a1aedee46bfa3e4b39680d30ff10a03e29bf20df`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 90.1 KB (90053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9ed144b39747fae19d97671feff21ce7efa9b1f704658031fdad86f3e7261c`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ecfb0f2951e118d800b0be374e0bf761c3e75fa5565b9d6fae42b67c3bc3648f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3574586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d07745bfffe8138c87b3d5e2e1a8ddf1b2d48006e5f92fcd3de6b3c03a418c1`

```dockerfile
```

-	Layers:
	-	`sha256:7fc1ba0d0dfd09bc22420259cf1e0efbd5f4c7918e736c890f7f386ce9d541df`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 3.6 MB (3558627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae01a514f2c9417f5b712d29c69578b166801ed96d15dd64c93ffbcddba56e0`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e355b2aabfedf7aede8b74a034dd9055fd513ab80c85c2ffd5047a5519109670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59954853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986ae5a30481e5eaab366199b32717ac5e684665a168311fb16d921b9188b6d3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:48:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:58 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f5991d5bb2fa21186c9152bf0a9fa1c9c73892f68235c440c9967628fa5ecac9`  
		Last Modified: Wed, 24 Jun 2026 00:27:35 GMT  
		Size: 48.8 MB (48768712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e01d74273ee9f96a0289d4d9ed0dd60d7dbd12507f1208c11e6f72111097850`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 11.1 MB (11092824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e684f87a6be888a633181908b0e6359923379831c1e1ed3621cb3e3d90a1f6a`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ec11d1fcced0c3e2cdeb1b9c4a767164b303fadb93a0ef6efd79bb71de136d4`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a78a3f3527131ae5e35c1964d1de45ff075cd2294fe53fb52d49376ceea812`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 90.0 KB (89968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22186f3e48cdb66e822ad747e504769a877e5c2520669e70e8bff4bbb4406322`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c5ba037caa2fea4c3597207c5ac27d8b9689b4e4ca8a159a67335b66c24f1f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3580161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b748eb52b849f1882a2ae9e6c72acd725cb1b4b3934d58d51a1d22f3082f54`

```dockerfile
```

-	Layers:
	-	`sha256:87b321f89c659ff01a4a8b43e11598739a7e42dad2365bc49b0bf7365d25330d`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 3.6 MB (3564062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af3d8912f8883c0232675501ded187935c537e100b5cffedb09fcc9d72ae4807`  
		Last Modified: Wed, 24 Jun 2026 01:49:06 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:bfaeee17908403cc02ae0a3499cedabae1311c1e04218bdf82caefcd8e3e3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61771264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a2cd80f90bfd1af51d32c58bd18ffb098a9a5b38e1dfd077d8952dfda16215`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:45:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9b65e2e922e5570b1d72c057efc4f398b0b14051ad2a0b581d6669e50195e288`  
		Last Modified: Wed, 24 Jun 2026 00:28:28 GMT  
		Size: 50.1 MB (50051032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7336ec1003969be0143bc9fbe3c31e0ff036a32d586b032ebce59c60a6335d`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 11.6 MB (11627244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca48798ebf6c29aa4ab183e938fe9d6e7d5ac20966647ca4f12f47edc562214a`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85af424c5e2456bcd07e10905ea8eddda380c464a9579571fac01b7ef7b2f455`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4561b9efc49bfa9823dbcf0aec676d080fea2aef163503c1df0bb7c76a5dd202`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 89.6 KB (89633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe6964634b01a0d18a4bf64af05927c0d748d662fae42dfd86efa3435ea3d85`  
		Last Modified: Wed, 24 Jun 2026 01:45:57 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8700a5402396c84af551dd89ba0d4dc3abfb23ece249cc5e4b00324cdefc173e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3573240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30becd5c02a35b8211bfc91746193837dba4434850f0b953a89a3c55f8ea413`

```dockerfile
```

-	Layers:
	-	`sha256:7b2fef64f41dad56bea4a7df849cb1220a659fda0a0a2cbecb5b2efef61debe5`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 3.6 MB (3557311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42b066fd18c7e2259707c59e98d56dab1eb356da092371471c50c29bfa4c1425`  
		Last Modified: Wed, 24 Jun 2026 01:45:56 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04`

```console
$ docker pull neurodebian@sha256:efcb89d7cbff730ad8cfa0e7b9189af2815bdf09188a1a99033e39e12781a8a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:57a0d903470597e03e960e74763f83bcd7dbe9627644c824b6e60ac9dc8da499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33477207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df729bea0f9c0880a20423372a486333b9966e1c91cf23456164682555494d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:08 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680960a08fa958d14450503921588a75b60874dbb5855b7dcbe1c715ee174b70`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 3.6 MB (3624747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0b0597980ee97b77329874b11f91d2a76051933e951364470e32febbcba573`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbefa676e08d4b70c48469d71a02f194191ab19d0812e3b9b7ee15b5f88a1f1`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636f24e7cd1a6256cc28af0ac1e39457841247b1901368762e88cc4bf2cf5005`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 111.4 KB (111400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9436d31c7254e39f7728a2a33c3bf484610767fcc56f160c6c43f3c8fa7dc0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a39346d7b961ffe80620851c79907c27ba9cab61f1d97cc8e5a3988569cf78`

```dockerfile
```

-	Layers:
	-	`sha256:3f9e6153fb7954a4436bd2c5ef4592a2b205ac24555de7643d85227c86ae16ce`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5058e1b63c4ffe026ffbc85716b87bddcfc76eac5e430bba237d306597f6024`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4a3374c784248db3613d9ced57e4dd42c00893cc3350ec7d54f779835a418bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31334966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0161bd591d5447144f54e4f0d480bc3857492cfac2cd60c6761eb4dfc1f21ce`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74539728a8212e505639e97c7df496b47d96fa669bb483419166a21371f89edb`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 3.6 MB (3608338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1809990106832ac15586cf26fa679afb8b24c6c3a5d327ab9acfe77f2fd0eca1`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 1.9 KB (1905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506db5cbc7fa20a69ac92fe21e99d3ba2be0a37205001b2b3c3031a5497da400`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4542b32c44a098003f870b45643b451800d364820df4a28e5ddaecc412006150`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 111.3 KB (111265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e471022f5d6d291ae03f2a63518da48eac1ebe4b96dc7ef01134aea797596fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473a27ed0401e5146b69d4d16d0ddc92c156f29f3b412fc737a85f12cbe07a23`

```dockerfile
```

-	Layers:
	-	`sha256:bafba7fa6be02c729c1d763f4ee3f8e21cba36de3ff330918a6a385e8714d2c5`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f97fa71d88e83691d430b3cf581ab1a1e4e1639a20b447e7bfec148a7019862`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04-non-free`

```console
$ docker pull neurodebian@sha256:96c327245ab2bfbb978777ef8b5a5e6de66b855dfb9f4d5bd16948459c08805a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4f66a662c2f57e5e52bb948f5bdc3e4369cb7469faf00a207e849002e8c76078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33477499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7ccbf92ee9fa9bd6b7d7c9bffd5bbcc8d980a0d769891d9f6b6920ea90edf5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:18 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591fe6b85ffde1608ef57c6ddc36830953a1f2ca0806a18b3534c5e906715dda`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 3.6 MB (3624765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3937ecac07f8ddacebd532bbf92d19c013524a12dd2e0d6b530bc9207e6e0a69`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2340ce9c7d09452bc3d22254be7594139e34e499321a722d264d3dd25e3322d7`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4a9621daa93506c6c182f720a9e1eee65e9b1676511663590ce790925b9d1`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 111.4 KB (111390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baa169c5e6c3b3327189ca883043e4b053b28519b7fc9809b395db52f21342d`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:671c86ea118e0a04da381f07ee5c8a1da5ebc6cca44350bab054c6cfa2d0d827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac3bfffcb46dc065fa85f310c590539168b4159d704506aed7156351b9d2cd3`

```dockerfile
```

-	Layers:
	-	`sha256:e069c6bb3677f1b6c138691acdf7ec0a0abb35d9817db5b22a30d4e1774d134a`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aa58724dd06a34127b10be28faaf68a7f9d6f9c131cb864e1dcc3da283dde8d`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:624191a8f9ca7a9fd6e8866e7ddbfd398a669ac9f46bb9cdb06da703cb182de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f92f6ebb44e077406ced4dfa1cdfd582abc5323f1fa45679aac1fdaec69d073`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:18 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f109a1e0760d3a9c80582931df80e08ea4c5e8f6ff7e17316b712707d4996e0`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 3.6 MB (3608370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469ded10dab061d0898bba8190de43eb28b7dbf76d67e05d7ee68b945118c7b4`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddca9a22f89fab9d5bb7f9c4048863fbc3e7de36c425dac1aff5b30c20b9261`  
		Last Modified: Thu, 02 Jul 2026 02:30:24 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2ae63b2a9bd7aae6bf76a52e0ca6575bb516fcf1e0df86346ae9b293b35899`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 111.3 KB (111269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa171d21792ffc4f6ab54dafba990d37ed27c10aaed936bb33e9e1b3e74e04dd`  
		Last Modified: Thu, 02 Jul 2026 02:30:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:80c2b3456f9788b01fc928d914a4d8152e2793e8f3d090e3296025ca63e29ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5160d69b8f562438770f064868e92f81b3b6044be4e290069db8f8a4971f230`

```dockerfile
```

-	Layers:
	-	`sha256:acf288c6671be5608940f43306b9745bf66ac1c060cfa38ae69e56fb6a8eabe0`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f0230d6d32def98ccb8ea3eade6cd9d098051797993160539e56184048be1be`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04`

```console
$ docker pull neurodebian@sha256:e6d4b6378d62976fd09e95e40858160321d2094823adb232e9501ccd0c9dc70f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:b901de641755527e340f2b2000c3b0c457424435ec2194dda6690882b410e040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33407995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d4f3f1204ddb78f0f64b11cb93031c94e1f326f192ba4c7b673fbba991963d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4599e38a609c7bc720c69c8549e7463f3faaabcea0c9cc68cfc7a8aa96e85a9`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 3.6 MB (3564816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e1035a2df382e72934661708835e399b43e38746f210b532a8e8181101b9a5`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0322ac2539e412f11ce353d3c62f3449d1a341e9bfb3244d53f8833b0e9b1ca3`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ab66bd5f014e46182a2b08f70e31d740711ef0b383dcc1824f61780362d1b`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 104.7 KB (104664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d9f6ad7644a175ed27a31acd25a82d44abe4afd2605a357f462a244f25ebc342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2380dfe259ad8e683003fa8c6f06b170c5ef9bb18cf221ad99ad246b94ad560f`

```dockerfile
```

-	Layers:
	-	`sha256:d55645b24e2465cdb5e8437a6d398b883b7ccf175d11c9ccea154ad4a931890d`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 2.1 MB (2120917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef3a247b8986124c7a9066bf0de16cf5fd841541ad921768c2ca8874be0baedb`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:9e6632bdcfac844cff3a06b0c76ad33fc8b1da37413975d9baedbeed8ff5eb2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32554383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6609ef5b0245d415f2284729332ad0e47afc6aecd93d027a202c1a3744c9974`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117cb6396b5ebb65adc886a1432df3da4a0fd7213d4998184fa75ff1465bd8b4`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 3.6 MB (3561943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c17e8ce68c7b2e1d620f46e2756789ec1447f24840844e3600a9fe98a61cb2`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b356652a5566535ada7384cd67cf0e0f79bf10bce6ba13193caace71d31f80d`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46124fef3ceeeb490bbb07aafa9fd3b84abfa6fe223cc342b938a37c5e539`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 105.3 KB (105348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ce78283ee418d6ea7bd8875fb035cad02abe278e7d73bb74199d50b4dabeb5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d9ea7dfdb3749252fe0d838445ccc648ff17551d985d4c0d4ae084b99e1005`

```dockerfile
```

-	Layers:
	-	`sha256:f93e0feb882d6abc3d8faff3d97b6edc456ac923ca00ed81e37c6dced056cec0`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 2.1 MB (2121962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee94a7cb0cb87883ce21267e3bfd116f8136e1bc19b973393273f423d788d885`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04-non-free`

```console
$ docker pull neurodebian@sha256:ef78a3ad6252328c8594572e4daba0dc1d2930c425862b6329c2586b1eecc26a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8392f0f679026475d6fbf6bf6849ad06eb835418b0bfec285091fc4e0d5b3f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33408363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fe1717087a5a29ca290e83f2dfcbf19eaa042ab5ed7ada190bb42f96edfe74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1913ceff7e915116b4e5e378231643b5261622faede59b65c5472f5b853c90cf`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 3.6 MB (3564770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89821e696b6ac322e7aafef3a570ebeeb7820201913b3df04a64d49fb2e1b2b1`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3070d45bb0d391a4a1fb82882452c05203ed4767be3c5721899b9d60fa02d8b5`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e7b1731f988675a6586d855cae67135921ee3c4d2d5b4007ead74361242869`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 104.7 KB (104652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7479d21d1d494ad1b742c2293c6b097a94f198e74e302f267f35c08a2383a`  
		Last Modified: Thu, 02 Jul 2026 02:31:43 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9f151a988d25681b463722de052e0e0d3ee16c29a045768fa415fb2097208efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfda338a0c2d8a6b053080d46ae1661c9593182687fcf695ed5daed17c8295a`

```dockerfile
```

-	Layers:
	-	`sha256:77a772a11c9300add682d77d3fab4cd94b792d19e84f1ec3b5f907c6fcd0b68e`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 2.1 MB (2120953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b71458ad156fd4d7ba77ba0156151a97cd701d4d9ef54a2d3a74714cc88c979`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:63ed8e659e7c08a85de4e1a4b3e9b0910c5ba1f6f888e359d8ba2953a1cab7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32554763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4097e7be87c1b8d38ab19e9f990296199a6717afc6523b684e4fa833feed1bc6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:26 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f855e4fbc97bf64ab9df9db1443e3da44c8b35d214dadca28a738618323c91`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 3.6 MB (3561893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981e18d8434a8075cdcc7cc5bad8fe9cb6beed45106a473291b0ef910f95bf3f`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeaf15832f904d7a57e23ad851fc547ef936f0e08d122fcd0418c902dc19db0c`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb7c33d1a83f4aa54f99fc4d0ca3bead65a3d89dd5a9fad38c81897f4f46a9d`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 105.4 KB (105354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edb46da5c9d58fcee61f110ff1d9c0461dbf5ae6f77cfa079b545bfaf231eef`  
		Last Modified: Thu, 02 Jul 2026 02:30:39 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:53c2e4e6f8a6678f3da81a238557d28d2df3b6517c46886b970fa7f89de5cb11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892b67602e4b52fd10c0784fe652d2710989c70bb68fc6730acaf78c9414b5bd`

```dockerfile
```

-	Layers:
	-	`sha256:73ef97f498cc6e87a66a469994102cd7d68a676b0a297f419cdc4c40347de5be`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 2.1 MB (2121998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f46b080a6b92da71709f3048815c8f29e2bb02a23db107f2c77dcd7f307399a6`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:e6d4b6378d62976fd09e95e40858160321d2094823adb232e9501ccd0c9dc70f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:b901de641755527e340f2b2000c3b0c457424435ec2194dda6690882b410e040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33407995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d4f3f1204ddb78f0f64b11cb93031c94e1f326f192ba4c7b673fbba991963d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4599e38a609c7bc720c69c8549e7463f3faaabcea0c9cc68cfc7a8aa96e85a9`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 3.6 MB (3564816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e1035a2df382e72934661708835e399b43e38746f210b532a8e8181101b9a5`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0322ac2539e412f11ce353d3c62f3449d1a341e9bfb3244d53f8833b0e9b1ca3`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ab66bd5f014e46182a2b08f70e31d740711ef0b383dcc1824f61780362d1b`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 104.7 KB (104664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d9f6ad7644a175ed27a31acd25a82d44abe4afd2605a357f462a244f25ebc342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2380dfe259ad8e683003fa8c6f06b170c5ef9bb18cf221ad99ad246b94ad560f`

```dockerfile
```

-	Layers:
	-	`sha256:d55645b24e2465cdb5e8437a6d398b883b7ccf175d11c9ccea154ad4a931890d`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 2.1 MB (2120917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef3a247b8986124c7a9066bf0de16cf5fd841541ad921768c2ca8874be0baedb`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:9e6632bdcfac844cff3a06b0c76ad33fc8b1da37413975d9baedbeed8ff5eb2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32554383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6609ef5b0245d415f2284729332ad0e47afc6aecd93d027a202c1a3744c9974`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117cb6396b5ebb65adc886a1432df3da4a0fd7213d4998184fa75ff1465bd8b4`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 3.6 MB (3561943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c17e8ce68c7b2e1d620f46e2756789ec1447f24840844e3600a9fe98a61cb2`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b356652a5566535ada7384cd67cf0e0f79bf10bce6ba13193caace71d31f80d`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46124fef3ceeeb490bbb07aafa9fd3b84abfa6fe223cc342b938a37c5e539`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 105.3 KB (105348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ce78283ee418d6ea7bd8875fb035cad02abe278e7d73bb74199d50b4dabeb5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d9ea7dfdb3749252fe0d838445ccc648ff17551d985d4c0d4ae084b99e1005`

```dockerfile
```

-	Layers:
	-	`sha256:f93e0feb882d6abc3d8faff3d97b6edc456ac923ca00ed81e37c6dced056cec0`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 2.1 MB (2121962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee94a7cb0cb87883ce21267e3bfd116f8136e1bc19b973393273f423d788d885`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:ef78a3ad6252328c8594572e4daba0dc1d2930c425862b6329c2586b1eecc26a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8392f0f679026475d6fbf6bf6849ad06eb835418b0bfec285091fc4e0d5b3f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33408363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fe1717087a5a29ca290e83f2dfcbf19eaa042ab5ed7ada190bb42f96edfe74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1913ceff7e915116b4e5e378231643b5261622faede59b65c5472f5b853c90cf`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 3.6 MB (3564770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89821e696b6ac322e7aafef3a570ebeeb7820201913b3df04a64d49fb2e1b2b1`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3070d45bb0d391a4a1fb82882452c05203ed4767be3c5721899b9d60fa02d8b5`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e7b1731f988675a6586d855cae67135921ee3c4d2d5b4007ead74361242869`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 104.7 KB (104652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7479d21d1d494ad1b742c2293c6b097a94f198e74e302f267f35c08a2383a`  
		Last Modified: Thu, 02 Jul 2026 02:31:43 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9f151a988d25681b463722de052e0e0d3ee16c29a045768fa415fb2097208efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfda338a0c2d8a6b053080d46ae1661c9593182687fcf695ed5daed17c8295a`

```dockerfile
```

-	Layers:
	-	`sha256:77a772a11c9300add682d77d3fab4cd94b792d19e84f1ec3b5f907c6fcd0b68e`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 2.1 MB (2120953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b71458ad156fd4d7ba77ba0156151a97cd701d4d9ef54a2d3a74714cc88c979`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:63ed8e659e7c08a85de4e1a4b3e9b0910c5ba1f6f888e359d8ba2953a1cab7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32554763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4097e7be87c1b8d38ab19e9f990296199a6717afc6523b684e4fa833feed1bc6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:26 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f855e4fbc97bf64ab9df9db1443e3da44c8b35d214dadca28a738618323c91`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 3.6 MB (3561893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981e18d8434a8075cdcc7cc5bad8fe9cb6beed45106a473291b0ef910f95bf3f`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeaf15832f904d7a57e23ad851fc547ef936f0e08d122fcd0418c902dc19db0c`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb7c33d1a83f4aa54f99fc4d0ca3bead65a3d89dd5a9fad38c81897f4f46a9d`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 105.4 KB (105354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edb46da5c9d58fcee61f110ff1d9c0461dbf5ae6f77cfa079b545bfaf231eef`  
		Last Modified: Thu, 02 Jul 2026 02:30:39 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:53c2e4e6f8a6678f3da81a238557d28d2df3b6517c46886b970fa7f89de5cb11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892b67602e4b52fd10c0784fe652d2710989c70bb68fc6730acaf78c9414b5bd`

```dockerfile
```

-	Layers:
	-	`sha256:73ef97f498cc6e87a66a469994102cd7d68a676b0a297f419cdc4c40347de5be`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 2.1 MB (2121998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f46b080a6b92da71709f3048815c8f29e2bb02a23db107f2c77dcd7f307399a6`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:fd8d220e33069228e1908c13795cf0f0d5f1e7005b3735b9aca9a314024a4b05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8dd2ae1a8cffe9e5b288a3cd84d1d8b83524cd3d4af7f361665754d606af852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59700608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c38f43b3b322ee576b210ba9c44ed33e58c989c172835ed4f8ce873296912a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:04 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0ab18ad126921d91f75d35cfcc8dd98768e6f37e61a9727de38c965b4d0897`  
		Last Modified: Tue, 14 Jul 2026 01:47:11 GMT  
		Size: 10.3 MB (10294213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67495945cfe5641c8963a924b0486c89117ead2c92a1062ac7186904d468f49`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f594d741ce2ffe3b50daf8fe99e7108ebb41e744af5f3e4d4b2a2aedd9edb8`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43012dc4989f9a71f02611693085a11ecc3e06ecee2f9efb158c4bcb6f5ad379`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 90.5 KB (90472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91cd8ece144717e9e101d28839754579b1a4dced6933b2aab3dc1a78d33acb7`  
		Last Modified: Tue, 14 Jul 2026 01:47:11 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1a848746553a0f87ec9978b8101745e6dd17f3658bbeb1000afba793dada963b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3630540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179f1578040b38c18d415b0e16c4d472f8f8059be7b701ec8b53977b22418f94`

```dockerfile
```

-	Layers:
	-	`sha256:f4f5638398829d20a38af25aa040d5acae8ddc2195e9ec05807fe3fbb3931454`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 3.6 MB (3614258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a2846fd49514193a79108e7bd3723f6293f131f60350e0fd118ac2eca12e8b`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e1b7336d1152f988b148e32442e5aff966ea043393c6db69f3416df34abc2f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59852003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3376fa39221b6b10d31402e4775bafb210811b7e3e5bd65c3a78d6fe4f6213cb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:48:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:51 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d30b3b982a47f971a69869bed1ee1ff394e43b96b7d6d1e59006710075c6c3`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 10.1 MB (10079195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990ebb8b34a3dbad6ebc63594e951b0665a35217e358d4a2d872c79dbf7832f6`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d412c65895e9719eb9ec70dbbfe3e27dbb14706b4f1b2a84d3a934c5ea89152f`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d4618a8413cad3a44195b11e837a0c74d8b9a67c3cff4167c719f10b0fe5e9`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 91.1 KB (91061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae49fdab44c557279e2faf224a1aaf256936ce951da15d75af7c8dab1dfc461`  
		Last Modified: Wed, 24 Jun 2026 01:49:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b6681c763ad36d4bc7d42e370706a23dcd1b763aef4daa69448a2145fddc96b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1c082653c6fa1791d575e1a7c572a7315769ec2ef4f872160a7dcbafd7475d`

```dockerfile
```

-	Layers:
	-	`sha256:1d5e593608435b092b2f5516efa4396f4fa3e2b72caed49be4fc22fb0876011b`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 3.6 MB (3615094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8e7c12c578700b059dd7ca7ee39e2f9f5494fa0da32eaa6da853f4006c3a81a`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:4ed0112526c9e2deceb040e27a68d4816c4d83ad6602ec0af763ee9fdfdff49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61397973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1280d00ddc8ce3338f6fe683c3aac020897b8c18d135f308b5488e0e2847e4db`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fce37cde330f8d1ae2506c6b080cac6bc79df4fe165dd82321baf47860c8368`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 10.5 MB (10468215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7be72cac78f9fab2e737c59dc780b7780871b6e29b62d1b92978fd80a032dd`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a708ed2acd10ec87ffd95e4b7a78040549e6d8f8f769a9c8590332b707c6c59`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a060711e22b48af24228ac3caf54a75641b66ab5718d4a05bb1e788c298257`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 90.8 KB (90752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efafdf85f98ab4243649d5602f7551ce71830901a987a21811778e61c90c5f3`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:436beb7e05bf9a36c9c3662487f14f0d7e2005841d572a8d23acd7d8b38e009e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcaf3c92b8bf587df181f5aef9534360fd5a075053f337343d1a8988c638878`

```dockerfile
```

-	Layers:
	-	`sha256:538d9c5d1bd4cb24fc78db37bdcea37f03c0bbcacc88e2e509c89980814aa876`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 3.6 MB (3612152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be3b4586065e90fd092c33c828c52a061efd5632acbc7a38512121453cd9f912`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:d2cf2f9d2697af30ab356f96712059118d159568525c0b809b073d6212cc573d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:e0f30e8305945b199f59250dd48f19187eb89aff61f70ded58f5bb0fc93c55e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60436554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6244381a0e203ea3612d8b8e36b5370ae8e8c38e151c7f1b9bd83cce53b526`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d81634c3a22f19a3b5fa4166652b5c9aae34476e13650ad7bc652f61eb796384`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 11.5 MB (11479653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965d85a1e4c52f97488303f188e9d06237012bd57df0491060acf8708cc49a03`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d8f674de13f57dbadb2b6165dfa8b70eca13f8eff036950162321ae22ff167`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dcec96dd012321b11532ab105aa3e27b6e6e411a3b6cd7933fa447377b3f1a`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 90.0 KB (89962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b6dcfb1638dfd23580726a72650f9cef6f03afae5b21071e083656dc6e2d0b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272c68995b2bf35f711e0e5641b2beb2541111d378741df9cb696cd67130d963`

```dockerfile
```

-	Layers:
	-	`sha256:aa6794db4475742e596ca9f7ae53ef9af3437c9345c5bdef6402f51da7374307`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 3.6 MB (3555553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf477f1a04333cc042e3c813c595f222b4ea79a1f87cd21145cd4ebf1984326b`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 13.9 KB (13903 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8ee773cc9c805381d255fdda275eb13c8cfa46e7807d6f3fd69770db59b51125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60041657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e9bd5b8aaa9644d91200de581f9e50e875efa5f4d756f222eb2d74866d55c1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:48:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:49:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4fddf52615bf1690082a9d73cb8346614997b5b51315236c93a190fbd50fb899`  
		Last Modified: Wed, 24 Jun 2026 00:28:05 GMT  
		Size: 48.8 MB (48798835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c88467285b1c1b968cff309144c9e430af7c074be128bdc6cf4caab3114dee`  
		Last Modified: Wed, 24 Jun 2026 01:49:09 GMT  
		Size: 11.1 MB (11149471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d50ed34a6ab4f2ddde3d7ecd1c26f01093382a3187564bdf895fc94780a299`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f886bcfe5b666c3b7762dd45748af67744d2c0af7dd9abbf9ab630515245c031`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ed3f36352b32cca558b5bf46abb822ede4530e3dc70a10cbdf220b5bd29cc5`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 90.5 KB (90452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4ae34c7a40a3fb5c524558703196912b06c42b84bda4d518b8f3c7e140684719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3577053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e612ca2762c7538fd2033e54010d716dc34c59fa9eec91e6d32f353a4a4cc4`

```dockerfile
```

-	Layers:
	-	`sha256:245948f67dcb16514baa4e7156aebf246f2021b0baa2fd9d9e0a7c1119912bd4`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 3.6 MB (3563024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:910b77e11ed8481d55c9e8ecc927416305c390975cf938b7d891444f1060bd38`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:9818680b166763d4cba8100a46f14e9d58332f1fe82ec0a0732d82b7e0774d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61871687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b307c252def927240b96a69a452a0452145c179fa93fc6235617c9e727d0bec0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:45:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:466f7f9acdfac81cb720fa13d53a50111bee95182357f963947200187b3ae3fe`  
		Last Modified: Wed, 24 Jun 2026 00:28:18 GMT  
		Size: 50.1 MB (50080955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2283acadf304f3a69ec710b735a0744bce58269bca9c33a763c6a6817ebd5fb8`  
		Last Modified: Wed, 24 Jun 2026 01:45:58 GMT  
		Size: 11.7 MB (11697753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74779e8bd3a27443fc4cb66b65d67ebf43aee120fb4e2e8fc6c8f9684316f1f5`  
		Last Modified: Wed, 24 Jun 2026 01:45:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20da08ee4148d3d8b05f7e6f1ff4e1e029c8baae0a9de1d458e6bbd5e032361`  
		Last Modified: Wed, 24 Jun 2026 01:45:57 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d7ce12599aa6607c302cbeaa60e282efe5f6f71894b84d9b7d29c89ebc5716`  
		Last Modified: Wed, 24 Jun 2026 01:45:58 GMT  
		Size: 90.1 KB (90077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1fba4e4fa4651d2069721d5ef3846887a6534e37da0d5d2dc5ac089d0272ff3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3570151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd131bab76d5a1fd235415f2fb8567c377333f15ab803522e2ad4bb99edf126`

```dockerfile
```

-	Layers:
	-	`sha256:b129c2c7b5e14ca7e264ee6ac01147d229136ae6e30f4f79963b279681076475`  
		Last Modified: Wed, 24 Jun 2026 01:45:58 GMT  
		Size: 3.6 MB (3556275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5de8673fe5f1a69c7396d154a5350be92b978e6f5de36c6c95b80265c3478b31`  
		Last Modified: Wed, 24 Jun 2026 01:45:57 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:4dda0bb76c4b0fa34e985a26e1fd727baf3d908483e81e0a546248273e94b988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:37cf710cd62a340f23262bc0a341be1c932b52f187f54e21edc4c61e1d210726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60436945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23040e44a1a08a0e261ae6c0f779fcc20db8f2fbc448ba27717f77b7ff1e404`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:27 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91982b10edc630f7e808f915cfc15d51d1e0cad084aa1f3a49ca6b015b78c7c5`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 11.5 MB (11479642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35ff64bef9d2e3cac1ecac403283ed88a168b39c492a94640af6f8223dafab5`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d8f674de13f57dbadb2b6165dfa8b70eca13f8eff036950162321ae22ff167`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc5a8db4ccd991e9cf9d1c100cf6c65350c9f26cf82560e87b6e4c92b1cde25`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 90.0 KB (89950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6021371c1f35748d891e95928dd444f84b97dec0dd79f2d8999fe536708c548`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:45ad6d1ffac84bbdc88c2c0bcaa5f0175dcf9b3c4df4e9d3691a572d50ce3982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3571520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e4f839ce4bbca3c790dc5a47b37cc3ba52c5c50224e31bbc8e9c45f07fedda`

```dockerfile
```

-	Layers:
	-	`sha256:5b4490500f01980e51635872e38a131f421854e588644ab05283ab271ecc8630`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 3.6 MB (3555589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44c584572e84abeafb99d0ec2ffeaa013b0badc96233cf1717b95df0a6b1b4e8`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:7e61b50ffbac59dfd9583ba279990798f19b673a00580ffd8f88d7fd6ab0ff8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60042087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8c568d5a30102825cbd1783e90b9fd13889eba73c5bef9f21833718c20c5d4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:48:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:49:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:49:00 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:4fddf52615bf1690082a9d73cb8346614997b5b51315236c93a190fbd50fb899`  
		Last Modified: Wed, 24 Jun 2026 00:28:05 GMT  
		Size: 48.8 MB (48798835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0de53c870ac2c975727e1e6e262e6c67909ed871769e29804e9ccb5b75a55ab`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 11.1 MB (11149497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d3a9052c5fc69b30fe247c52919da76b510e8b194c75862cc38d3cc9064aa3`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f886bcfe5b666c3b7762dd45748af67744d2c0af7dd9abbf9ab630515245c031`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a335ddd10124e4ed92d2e4f4738cd58356c71246207fd8f85f4645668ce34d`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 90.4 KB (90435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d3cb9093cde8bcb80d597ff70df796d6ef6cb08fd8761928f583af2293f7fd`  
		Last Modified: Wed, 24 Jun 2026 01:49:09 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:eb91629b8d1f4ae0219e52b597a3df99885b45352c670e1271db99c00a52b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf046a1004c2f9bfe5ff2de9a9cfca500d99fd1c08950d02095c13ff97773d72`

```dockerfile
```

-	Layers:
	-	`sha256:c0a90934088e0b05bcf9b0411f67e2703b83cdcd7994ea2150f3f639e302f38c`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 3.6 MB (3563060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0ea1cd2cdc0c6fa480b0803e55f7f03f46055075aec54501e1bd2c0f475215d`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 16.1 KB (16070 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:46b7cb8f647a68a5248e01044e099b188dc0ef419c7ec680a19287545fd43a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61872131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76132dff404b68e08cf7f0cccafac943f1954212a6836a38fc29282927d8668c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:46:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:46:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:46:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:46:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:46:07 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:466f7f9acdfac81cb720fa13d53a50111bee95182357f963947200187b3ae3fe`  
		Last Modified: Wed, 24 Jun 2026 00:28:18 GMT  
		Size: 50.1 MB (50080955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0661dcf0892236c7ad6a3772cd577438245afa6a970cdd7d75f4ef1d4fcabcbb`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 11.7 MB (11697768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be0d6a535f0f2554e712d75691f577c3cbd2278774bb14085f694f2bb53f96`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5692dc14820ae2b6dc7893762711293c89add7cac576eb143644d4f190997b`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2467b2a5569126a69b9d278550ff2e9b7dd20d11b8b4100e817c521f82962c0`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 90.1 KB (90086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41d501b7bce95c0c3115cb5afd3fb72a90428f014abcc10986fd7148f58623c`  
		Last Modified: Wed, 24 Jun 2026 01:46:15 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bf5fdf943bf50b822dc9844879bcdf59dba86e72b2aa01f6471d3d0870843f01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0994ba1595a2933e6fe9b3c4f10eacdac01294daab404ad95b784879c973e03`

```dockerfile
```

-	Layers:
	-	`sha256:e331e30ede5af8691aafb177ae46b119274b0e1f3d7e03bdb3951745e4f0ba0c`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 3.6 MB (3556311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f2c584d176ec5681766d0c02764347fbbe2d6c677cd384d3141c439571a0fe5`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:88915a90b5726404f08b6163ab4a11d953f22b851dd9bc0bb37a81d9c01efc6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:trixie` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6e5055393a816e6545cec22c90301632be214a80a636775067b6207a7536884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59699967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c570dbfa7cd7e8b170fe7d4a22f96697f3f14a5abcf051a85b02db7da6e8e407`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb7125a2b97bfd874ed48edbeceda28a113fc6368ba2f8c422f1d26985ffe9a`  
		Last Modified: Tue, 14 Jul 2026 01:47:21 GMT  
		Size: 10.3 MB (10294093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112c1141260149b45373e70becbf01aaccfbe567d9ef1f261b65bd87149577db`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9832854fa910eeec01982a3a64d64afb01c7a754f16d16eda6a8180d66b5e33c`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63138f0f8ad09a95dbab1c8257f2178bce09e1e0926c0eae78d478be61ff706`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 90.4 KB (90399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:be38e98eb1ea7f87546ce0258811eb7c3ad54b903650d103a037131dc380b37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f3317f89d2617feb6ef969223eb41ab18dac19fb00c8ce2a32e2605cbd1de`

```dockerfile
```

-	Layers:
	-	`sha256:c7661a9f2771fd7d85ac39744fef5f13079f848f19cb1c7e8f5fd84d4ead53a9`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 3.6 MB (3614218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bc4f26daa58f0175ef3affec27ca16f18c3424f24fa3b15fc41cad5124b4333`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:214b0f39d53624da138c99df2ae6004cefd65577bbf2848458cef8cdd3aa54a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59851645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871ba079b79b4d865948d9ceb8da4d6e9e5b84e3ae46854298eef670ddf1f9a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:48:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:35 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1a7f562d848861daa5ce8c7b529efa9e26077c1a7bace0dbce7e858c5c3cca`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 10.1 MB (10079284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6c7612a7d09bd33183e501a919315d65730599fe7de17b9a704e333f2e5d3f`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b0105f2108a660e230e37d221188bb39a711a6a45e68872b613afc681581e0`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e8ed006c01192d6075abaf0e641ff7f7fdbeff453366cebe462e8559b4726f`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 91.1 KB (91063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ff2e370c6559d65c19b669049700cd0cd027bf25243f5d94472aed33a74a5cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ea9a55c09ec45e1c2dfcd13c1cdfc228fd1703d6690cbb1fa92fd1e4091048`

```dockerfile
```

-	Layers:
	-	`sha256:3a50dd895d5961d343c85f2e9094f6b8729984c5cbd850601d717674ef904c08`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 3.6 MB (3615054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8252792a9a1122c7cf8d4163439c82d9111f90ee14dc23347013697eef22d530`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:573a601ea7279fab65fc6fe6422a964ec60f5e60105d8b7354b68939b379ee86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61397467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379de8bd00b23c78dea6a6a51e246ae3f136bf31557f659ea66b3acf7febfe3a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc384a594a22fb9cba56083166ad92415a8fae6492493635cb669e15a58ddaaf`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 10.5 MB (10468181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7be72cac78f9fab2e737c59dc780b7780871b6e29b62d1b92978fd80a032dd`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a708ed2acd10ec87ffd95e4b7a78040549e6d8f8f769a9c8590332b707c6c59`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee0ef2f2196a75b0ed4c3653f4d00c734d4734b5b5a19da2228001ce8faf2e5`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 90.7 KB (90725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dab603aa6079873cf14cd5f527c89f7d55b8ef5e888a0fd0914e5155dffdd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fcccc3dee48c489342bdad20dd8c7184cb11b1c856bbc8bdc79a16e47c2e80`

```dockerfile
```

-	Layers:
	-	`sha256:5e41957067f4a372f31992f1bbcd915c968d7de001e8c4b280e6418adac85b01`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 3.6 MB (3612112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721c0b75c262861c763fd019b92bc2eb3337333b69a48333693656477714ebac`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:fd8d220e33069228e1908c13795cf0f0d5f1e7005b3735b9aca9a314024a4b05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:trixie-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8dd2ae1a8cffe9e5b288a3cd84d1d8b83524cd3d4af7f361665754d606af852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59700608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c38f43b3b322ee576b210ba9c44ed33e58c989c172835ed4f8ce873296912a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:04 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0ab18ad126921d91f75d35cfcc8dd98768e6f37e61a9727de38c965b4d0897`  
		Last Modified: Tue, 14 Jul 2026 01:47:11 GMT  
		Size: 10.3 MB (10294213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67495945cfe5641c8963a924b0486c89117ead2c92a1062ac7186904d468f49`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f594d741ce2ffe3b50daf8fe99e7108ebb41e744af5f3e4d4b2a2aedd9edb8`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43012dc4989f9a71f02611693085a11ecc3e06ecee2f9efb158c4bcb6f5ad379`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 90.5 KB (90472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91cd8ece144717e9e101d28839754579b1a4dced6933b2aab3dc1a78d33acb7`  
		Last Modified: Tue, 14 Jul 2026 01:47:11 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1a848746553a0f87ec9978b8101745e6dd17f3658bbeb1000afba793dada963b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3630540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179f1578040b38c18d415b0e16c4d472f8f8059be7b701ec8b53977b22418f94`

```dockerfile
```

-	Layers:
	-	`sha256:f4f5638398829d20a38af25aa040d5acae8ddc2195e9ec05807fe3fbb3931454`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 3.6 MB (3614258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a2846fd49514193a79108e7bd3723f6293f131f60350e0fd118ac2eca12e8b`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e1b7336d1152f988b148e32442e5aff966ea043393c6db69f3416df34abc2f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59852003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3376fa39221b6b10d31402e4775bafb210811b7e3e5bd65c3a78d6fe4f6213cb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:48:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:51 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d30b3b982a47f971a69869bed1ee1ff394e43b96b7d6d1e59006710075c6c3`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 10.1 MB (10079195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990ebb8b34a3dbad6ebc63594e951b0665a35217e358d4a2d872c79dbf7832f6`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d412c65895e9719eb9ec70dbbfe3e27dbb14706b4f1b2a84d3a934c5ea89152f`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d4618a8413cad3a44195b11e837a0c74d8b9a67c3cff4167c719f10b0fe5e9`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 91.1 KB (91061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae49fdab44c557279e2faf224a1aaf256936ce951da15d75af7c8dab1dfc461`  
		Last Modified: Wed, 24 Jun 2026 01:49:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b6681c763ad36d4bc7d42e370706a23dcd1b763aef4daa69448a2145fddc96b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1c082653c6fa1791d575e1a7c572a7315769ec2ef4f872160a7dcbafd7475d`

```dockerfile
```

-	Layers:
	-	`sha256:1d5e593608435b092b2f5516efa4396f4fa3e2b72caed49be4fc22fb0876011b`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 3.6 MB (3615094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8e7c12c578700b059dd7ca7ee39e2f9f5494fa0da32eaa6da853f4006c3a81a`  
		Last Modified: Wed, 24 Jun 2026 01:48:59 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:4ed0112526c9e2deceb040e27a68d4816c4d83ad6602ec0af763ee9fdfdff49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61397973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1280d00ddc8ce3338f6fe683c3aac020897b8c18d135f308b5488e0e2847e4db`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fce37cde330f8d1ae2506c6b080cac6bc79df4fe165dd82321baf47860c8368`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 10.5 MB (10468215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7be72cac78f9fab2e737c59dc780b7780871b6e29b62d1b92978fd80a032dd`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a708ed2acd10ec87ffd95e4b7a78040549e6d8f8f769a9c8590332b707c6c59`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a060711e22b48af24228ac3caf54a75641b66ab5718d4a05bb1e788c298257`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 90.8 KB (90752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efafdf85f98ab4243649d5602f7551ce71830901a987a21811778e61c90c5f3`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:436beb7e05bf9a36c9c3662487f14f0d7e2005841d572a8d23acd7d8b38e009e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcaf3c92b8bf587df181f5aef9534360fd5a075053f337343d1a8988c638878`

```dockerfile
```

-	Layers:
	-	`sha256:538d9c5d1bd4cb24fc78db37bdcea37f03c0bbcacc88e2e509c89980814aa876`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 3.6 MB (3612152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be3b4586065e90fd092c33c828c52a061efd5632acbc7a38512121453cd9f912`  
		Last Modified: Wed, 24 Jun 2026 01:45:27 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
