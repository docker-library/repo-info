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
$ docker pull neurodebian@sha256:28f2fd540f7b766036b557ac8190d78b967470b7ffe3ec357b3043b5a321efbd
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
$ docker pull neurodebian@sha256:367c93cb9b46c053da55cb20ff9170be49e55af90b0d2b5b7b5cf4d0379b309c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5da598d22c60c2520add740d1d85d644c2169190d675b7e631dc599e2b72c7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9f3b8bd24bc6de117aa842b9de4080e0b9a24e986305e04d093a198ca0f75c`  
		Last Modified: Tue, 14 Jul 2026 01:50:31 GMT  
		Size: 11.3 MB (11252941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c19695fcbcaabe817efd9dbd602cce1a20ea91c3251b7993c6e450e4db027b`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3135cd19cdc87bf9de6577b99b8a71f72092dc47e19da5665d87d4c2adc0fe5d`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f6fed1672777b188d82c2c4e452ebe8139773b26d2614c56ff6a3ccae257af`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 93.6 KB (93582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2eb6e5a0fea6ce27e22c093652264255c0da0a83f51062855c1b4c1ae4394b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a482da23d487878bb071209df6de369910a8e861b07386383902ccfb14124b39`

```dockerfile
```

-	Layers:
	-	`sha256:4fa6d9a017f9d9f788f18f9757e52a9b100747d7c16857d5442d0b2f1647e7cb`  
		Last Modified: Tue, 14 Jul 2026 01:50:31 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27bbb0d9b3a56b12c66bb37c671d379fc388b11914f483d8b0a14c320e5f0da6`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 14.1 KB (14089 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:38302a000bea1e8c5af617a5012ef723ab050b136e4eaf20fcc4382097ab4622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb455368650de2bf2122ca7e43e3e06149ab49b2dbd8e011b0040b01ac32c8d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:48:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5701209877286384a72fc65bd913b909f5ce768bad1e96b92c976f61728ec0b`  
		Last Modified: Tue, 14 Jul 2026 01:48:38 GMT  
		Size: 11.7 MB (11693007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cc8c8d28df8ec6e95338de947bb3b77200af835da38d3c8c9083aafd6b4bde`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5a057379cd72530cdca33265f704314100de9b76fd59783559b3197eae4b2f`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1fc12449d016568ff5e9d28c1c0517022281d3455aa83eea109dd87d93ce3a`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 93.4 KB (93418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8437d08a7e58b2a2df1ef57b6cf4340ea7b924a2614e0d7911b5930f609f3006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de77ad3e248e162fc30551fbe8b99669c44b6457f0c61794826583f0c794763`

```dockerfile
```

-	Layers:
	-	`sha256:6aa7a915d398015b61ac8990f7760bdc55e98c50e4b0596395c3f029d27da59b`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6359e6eaf4a30ae057b6f3f9abd7f8e6c7b89bbb67b44afee9b2489b197d46c9`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 13.9 KB (13936 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:cefcfb188b76b20952e09f88f012ee9972b3387f8d7ccc665fdeac0d2349f7f6
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
$ docker pull neurodebian@sha256:a0c725c90bd82a07b763b48817bbe18e11f0976e499ab913f7451b180386816e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08065a33d2e5933cd148cf006c7b31bdeccdc4cda15a50f031090f2e740a1b48`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:50:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34608e75f7ab99b9437d7c478aafd910752d4bd234a0439c98636dff43f90ecb`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 11.3 MB (11252901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4aeb2fb86266a5add6c9a3b5610dc2d7efef5c82ec3fc80fe3b6d55e54185d`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2c91c7a6f0200dec2bf014d9cb31d19f3a90de2c99303ce3a6a2b372503339`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56f34877001491b19301af6ef5a3c313fb6445898dfccc2290666bfc6211f0c`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 93.5 KB (93528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be74fefbde0fe24ffa25617d793c273c1d5f5384fd4cd780cf5105df3c77173`  
		Last Modified: Tue, 14 Jul 2026 01:50:25 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9c5ed594615a0cdc595cc32011a2aa9e3343d922d2ebe0090e3cf8fa23973524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539dd36bab5278ba714e4fcda749eac3f527750abaecfa1c49ac1481f9106b19`

```dockerfile
```

-	Layers:
	-	`sha256:80d0e174ae8b450e6e384d6c8ddd8d179be211fb917043f07ad08526dd2c11d7`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:715e11e9ab3cdfbafee2c092550362321551cc9bfadf2eb15b800cb6e863fc79`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 16.1 KB (16131 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:46eea2eb331ea78f0504671855c3777bd3dc0f9a2ea9d08e2b21fee480652e6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d840b2a3abe39096a3e8e64cc622d7969372e030d70c78e3a91d7f53619e18`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:48:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:44 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5701209877286384a72fc65bd913b909f5ce768bad1e96b92c976f61728ec0b`  
		Last Modified: Tue, 14 Jul 2026 01:48:38 GMT  
		Size: 11.7 MB (11693007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cc8c8d28df8ec6e95338de947bb3b77200af835da38d3c8c9083aafd6b4bde`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5a057379cd72530cdca33265f704314100de9b76fd59783559b3197eae4b2f`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1fc12449d016568ff5e9d28c1c0517022281d3455aa83eea109dd87d93ce3a`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 93.4 KB (93418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b83eaf1bd38ffb0f8c94cb426887b841175442803e259830012becd399cc8a`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5baede45330cb3eced3ce3a4af9d530f4cb9084e87e91fd7bb88acb7f5f8010f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b97ce6b7ac02b7f3dafbcb5faa5eaf3dfe3b1d6c8455ff15c8a731aa541d6a2`

```dockerfile
```

-	Layers:
	-	`sha256:250f8639803ebebb3a190f00e4db2738cc54a4b68a3f8de97425765c20e5756d`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a775971579e7a8e0d745768bc1ab076b1e3e876bd40ce7d43ae4d43d94af9dba`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 16.0 KB (15961 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye`

```console
$ docker pull neurodebian@sha256:8a74de3cbf85fb39ea5b5d3a9475b3c78bfcda7fe32efdd460b8fc54eddc183f
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
$ docker pull neurodebian@sha256:d53d4c1142e51468b27914711417f584a80cd82c624965b154c73a536f9410c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f6f9cae79f670c9ec1c7e9d6baef458c7f2ba1fea956403a8159582931c964`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4ec3d3c70bc13f7b3e86037e26f59261f767b39e6c18312121218daf062a54`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 11.1 MB (11109939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441b4150d4888e161ed19f911c88bc3a62f7e67739f97c10a730ad9af330cc3d`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c49de997feda00df07ee88181324df013515b8dd4e71d721f9572a7c9e27965`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df04c222d20bf1bbcda0a3d37e4777dad112d455acf521165db5f45fc906204`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 101.3 KB (101258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2ffcf7480b68c0c12b48921165c261b8ded9578531e8e9b7702243ece598ccbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb231e61db39eecdea04aa54e93fa9014bb10cc88f1cfec50eace44811a19d9`

```dockerfile
```

-	Layers:
	-	`sha256:a927a469deec1f1e06e0c807b0d362d32dd5325cacec8d80795239590148d7a0`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a6d52879a580050b3d55afb9fab4085afee6e580701ab3e7081ba620ac2de90`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; 386

```console
$ docker pull neurodebian@sha256:9c27d120700afbc64e65703da2144f8e69f46061331887ad62bd0e5aea8b5f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66321316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf16aeb9d787877512923556a72ff5c31f7738299240569638577f874f631bcd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7e12e9bb789922b409fd797c5262d751ab726dc751b019b9c132c37f39f8f60f`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 54.7 MB (54715607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2de1bc8c8fdbb986078e565bd2ce54545c1dda87960ba9608d6f602df428a1`  
		Last Modified: Tue, 14 Jul 2026 01:48:03 GMT  
		Size: 11.5 MB (11502319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba32a8c82e7a50093dfdd409188d3eea237634f93d697e657e21aa191e68e35`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a94cdfd794859edf1b9fbbfde9a1dfad1eadb8937b027515d02cf6c79c564a`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305c8b31e01bb1280a7b3bbff17a140593edcc0c3d26097c35fb294df63fa5d3`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 101.2 KB (101231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a6abdf1248eb559ded732bb09a94439ec0934344e75037d26b94332866e7094a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ef693ba04349d543d053c0856836e956beb4dddfb28ac7dfe79628659eb0b5`

```dockerfile
```

-	Layers:
	-	`sha256:555deef5108bf7bc1dd6c5404b9779a4b38462a7fe398c363554bac6870b1712`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:195cf0919381f782affd70e2ebe525501522540c7a171e8988aa27139fe010bf`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye-non-free`

```console
$ docker pull neurodebian@sha256:72a31d3575257f4130f9c7fe10c6d25f04552d960bc0dee18f470c9cba37d3b5
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
$ docker pull neurodebian@sha256:e721531755f27d8533db36f5c54e0f461b4e7845a11ce2f27d0b0494241aa146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fa02991cd51b39ac6a969aa74a7971aaf89dbd7d99b9a8905e58de1a4de642`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:50:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:07 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47334cabac90b2fa11336f1249078ad3d7789aaea210e259e07ef058f2b3c8bf`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 11.1 MB (11109945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b79bfe7be1f13ef5e230bc89523152ca8acd01189d0b46a37e1e9f7fe9d068`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5b198dfa82ae194a4addd578c9d8cf1b34045d7b3e425434290f715717a926`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f0e2a87857f445bc6a5bffc83137d97707d965e4c1e3c0a3966b70931a5831`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 101.2 KB (101246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995fe447bdfd0c178935afb34128be10043610e83e5508259f3c67bb37b408d`  
		Last Modified: Tue, 14 Jul 2026 01:50:17 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:65106c2fcc8a08882f3fd2b97472e8b53675a9ab1f4176b5dfa5291460fd9079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853dddce4dbc66826135b1e1c26b4f71fe71df1c062f314b8dce9ffd3efabc55`

```dockerfile
```

-	Layers:
	-	`sha256:311fc035f205dc80515ebca63c24214053a7b2103f14b559fb652039df00c2c8`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966cc923df94269b9c8c4499703a5a0fae2d1434e0d971ed14aba3b437de2d44`  
		Last Modified: Tue, 14 Jul 2026 01:50:15 GMT  
		Size: 16.1 KB (16133 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a22f36ef0d7d13338a5ada4226f37ee670bd38f2cb15bdf675d75f104cb90c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66321703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ae4da29f31ef39b760ea9d3c9887b24069ccd406ae4970552ba050401ee95a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7e12e9bb789922b409fd797c5262d751ab726dc751b019b9c132c37f39f8f60f`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 54.7 MB (54715607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2de1bc8c8fdbb986078e565bd2ce54545c1dda87960ba9608d6f602df428a1`  
		Last Modified: Tue, 14 Jul 2026 01:48:03 GMT  
		Size: 11.5 MB (11502319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba32a8c82e7a50093dfdd409188d3eea237634f93d697e657e21aa191e68e35`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a94cdfd794859edf1b9fbbfde9a1dfad1eadb8937b027515d02cf6c79c564a`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305c8b31e01bb1280a7b3bbff17a140593edcc0c3d26097c35fb294df63fa5d3`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 101.2 KB (101231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304a95f86ffe2925ffd9d31412f602530129a8bc9f35a47bd3771492da655583`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:de6ddfd80d2834ede1692c51cda6c5c13717c5b69f3913cea788d08484d81fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40143c35ea6a6a70c250c5bd8f6dbaccfe6b6cce5027b5786c102b400d33d6b`

```dockerfile
```

-	Layers:
	-	`sha256:e0c880b3e9916bd6409a91338081160e207b9aa8f6c9c66f829e9d826024e1e1`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564b55afc5839e7726f8570774b72a936a2153a153915501eb900bd55664a44a`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:7a2b2e4934d6ea223a4f096078f285516a44802e2cbd57f7abd99dae3c3c3780
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
$ docker pull neurodebian@sha256:f7eb6d6c43832734ca27f9e1f1bb2a611ed3b945faea15eb0daf9d10db767f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60078711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23b56102a5ed59ae4b6c4846c0d4bea11f2e94b881b67a6be3eba2e17aec695`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:50:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5f100256131454009d84f466673a6662cc10090cb9a9229277e4e137e8f0cf`  
		Last Modified: Tue, 14 Jul 2026 01:50:54 GMT  
		Size: 11.1 MB (11094588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770771fc197df0bb7a27ce8058e0fd73791e4b6d67235228d2b25c040576af5b`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2071fe038cfbac83fcce637118209dc167bdcc7810e7b8ee337dec35875447`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bf1734d51610d223876e9d4c8af6431fb275e6b4817785d2e11cc03bda35c8`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 90.6 KB (90611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:314762236deede5ba686e99fe753f5514850942af3f2996f5e4951c2dda4b7db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3577353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd7525c182ee64bee906650e8f7b2e521fb9f0327a73a59e89b10410a1f214b`

```dockerfile
```

-	Layers:
	-	`sha256:c171a3d74716cc5db8f017af877d20f95f722cf72d01d5deab40c1fa04eec6fe`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 3.6 MB (3563296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a811bb1da74715aafd4e83aa701ad953c93fde6a482cddfae259cab64f2b45d6`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:27818cbadc6ed2583769ff5e4fe0c06c271b1cc959533bc6a62590db3c0df9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61913070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f141a2f3a7b196b2c168628189f0358cbfa2e455e3ecfe27664b5d54afb6b3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:49:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3ac49795fc0ae8c2bf74ac22963cde9f992dd28c1fa65f7fcb4b1446030bc5`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 11.6 MB (11628730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc75036536397686f4503ccd064e313f5a117ec98a3b23934ed3629fc6bd0832`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cbbcbc5945afaeb1dbbb26ccaab59a0b45afc9885b67ebc26626c2b421c55d`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33df9f28112c7ddb6165092bedb0ce52c07313a1fa1f23895e1c7df8f1b0ddf`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 90.3 KB (90282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d4dbd901ef576a0a7c3ca41fa1338e5ebb855463bc3460a5e11e2063b2ce51c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3570451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e812bb91fb9c0af5b0eb70ef9844b4528911d9a54557b20c8c52222d4f2268c`

```dockerfile
```

-	Layers:
	-	`sha256:d676759a805cac31029bd85f7cc616c1c704f6e4eb7aa1c2d8d247cb1faa82da`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 3.6 MB (3556547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a2b3a9a585fa4ed468729bc37875b1136999885d5b6b7f870bc6620e292f9fe`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:00d216ec372fb67ee8d7278a6e7d0c7dc113af84a6f3a4b0b43292a23f0e0297
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
$ docker pull neurodebian@sha256:1fd87a7596acc01cefa14024028f8a8c16e3d36a899448867e61e0512e9fc9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60079293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba08276b092d5cf763d51d36fa93ae2e34d3eb7c63c87d6028f17507fafa71c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:50:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a4a7782124dd8ee8eaceb9b1fdbbc19c3f5fb426b8b72292db7438710adcd4`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 11.1 MB (11094690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83511319f8c7f8b86c98a0af3e8425a9c6cbb2701aa54ed684084eef61265f`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790c49bcc820ad2a60eaf03c8fc3b59cbfb9db8f1b02c2ab34bba119a79b66f8`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af60c9f5780678635aa0c3a1a3e8b57ef1f9c97f397038d4ba8facc76d3f9e45`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 90.6 KB (90647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b0f3ee2df3981ff9691e191f7aadb066abc8cf492b6696676d8282b8de3855`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:05ecabfbe764f0791ce8e77b97223c8d9f892c7704f91a511b54bed4c2712114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34adb82748fb2e4d59214e2016ec12b70ea69a49a4fdb70d6ade6b846c2ab4d`

```dockerfile
```

-	Layers:
	-	`sha256:ae854cdfaa1be06f2ea6783d9775d71baa0822c2597998544bd6360d4d3aed95`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 3.6 MB (3563332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad99bd442a316b4b4fff727c0bcb546fbec4f066117191af9adc8042efd1ceb8`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:69e8d8118d775ccb87c5b7133f07fd9d380842ec91e9fe80ba5f4549fcd8e503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61913475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1fea9bf6b47e2c693a0ccc332e0f0256f997741dbbcebe1d6a619c5c15fdb9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:49:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:33 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b089c3211ff931d2900d8557b90e464810026c792b816025403c6f29a99228f9`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 11.6 MB (11628704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3e098c848961aef70a2bf222b479de79d672c8ce002bd654fdac13d975d64c`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5591ff2c8d32c3a16cd0f123c1e40b36e93628caa22d2818bef6acb92fd396ae`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bb19a47b800f9b33b5e72961759f618c2880dcae40dbbeacbeedd9a6421f3e`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 90.3 KB (90273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c248f35238ec882847ac7cdfd1871dd0f430e537f9a546bc2514a83b235efc`  
		Last Modified: Tue, 14 Jul 2026 01:49:42 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:79d2dafdf86e7e5e8f678f58220eead1ea98481d823f6d1782f668b83b003fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b08dd24acd3c35673428f677fe92ced98992ec555e63d1b695f745ef9e45ef4`

```dockerfile
```

-	Layers:
	-	`sha256:77b2785bf4809ab7214a8ebea5aad527fec17045376087851d75abe9512d56d0`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 3.6 MB (3556583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ea5fb72ec4068c2911a08bc227785fddb968e89791d6958c686002630470e23`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:ab9cf4485871c3dd9eb47fb2e2981df4e3b0c3ac32f98617afa0762be33b015d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:700b0aafbbee0e55d6c7f085a18b07d65a5c97631d1f500235df0d0491fc9fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e3b5ad3dbe3e712dd0c2a1535c4f52caab81ea5d777b78ef6aeb31217d114b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8ef2e44a3a69d0281ba6056017f4fad3396a2b62aab843e3cc4ab69819dc0`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9a2366387c8c2defc5160c07c6cb7b1fb0de930a7c424b0f2ec41b1a345d15`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419775e147df7fbfb49fbf5490a6691ba9050fe5d0d2e6129143bc6768e1a625`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66390f9da5ab1baa263edca144e8b56c9393f315e3e7a79d8db9404921bc8f94`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5d8ceb9365030a8e7eb95c1a912292a4da3ded5f2d4c92d0703b1dd9f83dbe19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415433ad84c9e55b31430dfc23d1a6d2ef6cda7e80bd8c442330bb680b203522`

```dockerfile
```

-	Layers:
	-	`sha256:1b6f27002f0e1e8ca98b3c0684cf277db67db6c4fc06de4306743485b849a00d`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4240a77100fb2b8db1a2ac302684221ce33ed23196ae53b936ec17b86655a22`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:833114c643e31673574dd1e30a193c07dcfdb23510a2313efc6905447f6fd46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab3fda33941f2a5650a18c9cdce4f81100eb2ddca96e107e3bb602e685b5da1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a3effaf5e12b6751acab8afa1205e3390a8aa1477b0fcc985d863d61ca10fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:19 GMT  
		Size: 3.6 MB (3608545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364052cefec1e8d77a9f9b709718852194bea9cdd07187fa3431fa8de7e51b6d`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5a8482f7b4498345ee397ab396350e6b2cd82ab2839aa66c67119da6b8efa7`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13d5d52634cb4d7db7dc1227f9a93f1cfc05a3397229dabe32993a09c7408fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 111.3 KB (111264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:28b5ab2cdcbd217dc8ad4b00162049acf35a5021a4ac980ab9110edf2da25fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db269c6096ff356bf9ff3cce835f78760a0385721a777ecdb805b75d99e16b8c`

```dockerfile
```

-	Layers:
	-	`sha256:c77d99333e658dfec0182fb77e2adfce5c088a525bf0bcf7f42678d59121ede8`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3813e8b78957f9a85b1cca01bb65187a5cfcb69f875aade18ad846c662c96aed`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:c45fee5d7e11b8d2ea916c4d90720143d07f89856a20f1962d0b8f4ec622b6ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:9d3b3e9bb9c65c4ae02f92ef8a4ef68614ceb452c8270d9d6b1a211dcbcf9edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa7b6a6e9ac8d036b365256bc8d35ec6fe97e8fc439aa58f0aabbbf18fc3a3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09be92cc852304128454ac5e16f857ba6004281fd0e9d59e65cd0e526671b155`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c286ff70976a5913e2308771c253f55c44793c8a0aaff7cb3cb713a6fd560c2`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0854fc368adab451eb9fe1d7ee8ebe251a17ba6c36c2297f5a4dbe074b50df34`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e229f6659192d466b97213bb05db47042baf2fd47e16cbfaea8798c15f2441e`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e996df809c1bcd6dd896942c0dffe075f3e80fa156f30dace8fc0124fb98f456`  
		Last Modified: Tue, 04 Aug 2026 01:42:46 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8d2c9a83bc7d511cfed01a84b71039e6dfd9dd79f73ba083c79e79e5b549a726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95746f99bdc5ea144c0c89f531ce57b0d436768a00d11c16acfc2016c224bed`

```dockerfile
```

-	Layers:
	-	`sha256:664f72a719aa46aa391f13b301762b2a572f3d79a564b252f8c6580315595326`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b885ea1fd54edcfd96293e5c339da2ac5f99fdf413260f917194089db7e6a9e`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:11186fb6700b06c32c3e905b80c5c29941f5ba3d82566cc0618687c1267a3b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfaacc66f7409e55ac0c76bc458d9a4fc08b1baed23320fcf2343aa866f613c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a8a7b7d16848dd296791691322b103014e4a774441b4df04592500121c13fd`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 3.6 MB (3608553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd32a8645ca77ff8095d39707c1cce83cc0d5eeb1e11e55a2a597c3698707cc`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d301c93c8c6f5c0ad7dc24ba982c456dfa9626331be78b55159b07c01c6222`  
		Last Modified: Tue, 04 Aug 2026 01:43:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23808888cbdba764d05589f9d61dab5173f0e86aaffa49d7e55367fbcef4d1e8`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 111.3 KB (111294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7eebc2589d29f8f237cdfb08100df726e35616d803e9b28a17dc256e408e1c2`  
		Last Modified: Tue, 04 Aug 2026 01:43:30 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3def81c72e52c0465ce200717b948bce8c013073206223e64b2fb9dcb0bc4324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187d1e8379c84125e6ec6b67f9cf3cd09cb7978eb9517e11cbb2db7b9ab87457`

```dockerfile
```

-	Layers:
	-	`sha256:9afffeed59fdd2ff685012e8a4a9302b344642f60e98a24a14655062cd748c45`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ce7f7934be9010f0b6d7e2b792eeb2efcfb60f61b023ec5b401d3a4bd886d7d`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:9af790a0469f8405c7c7c9e9dfb36ca1d6d87ff11797098fe0ed390b67e914f6
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
$ docker pull neurodebian@sha256:64d582a5d039579fa8b6b80c6861141086ef4ff80a57e0e2094ff8d5e191fe20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59846979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78985e182948116d3a3f19392ee151073e477ef117c25170c0940863e865bce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998dd9c3404edb1c257fa3ac74b94abe1cbbb56a5a61b86baf9eb3f8ceefa3ee`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 10.1 MB (10078850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dd83b3c43c0c8336c758c9146febe7c85ddc16694ab5cff15a5870d00184cf`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d5ff97801089c05e52ad9313e72fd67bf4f8e51110943885ed83e4ee7a102c0`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28b4fac948ad13178ab3c9a43b6146352801a96468e04460c467f4eff6cce3`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 91.0 KB (91043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:47db71744232a7d4d4718f36dbcbd19e3736cf1e7e6e2c12bfc4ceae53ae4923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be31fdec34f8cb5921fec791908a53e370e9378344c84ff936ef16684cb3b9f`

```dockerfile
```

-	Layers:
	-	`sha256:67c6d6b3c5896b93589b3e6fe67468f4f8a205c858b26ef6211c5418dbe6d8e0`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 3.6 MB (3615108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4b674c386b165834b76361eca729c5abf53d7fc81e4b32e6e3f0337578ad2fe`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:07118ca5090a5cc92f507d2a1b4106df6f3999a7334c76adc4a12766632f3c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf60c4b8c5a2cb42257c67eae93e12a2cdc70f08f1d4c8cf0a13e3acfe71cdc9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff8c7d4c72f649648ab293a2aec475b50fb99b76c10ba63e76c08a2ebbea741`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 10.5 MB (10468156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d607a4edde04e26fcfe2b20c9276d66b158a4aee47280c0c050f9987874fe74`  
		Last Modified: Tue, 14 Jul 2026 01:49:14 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ba916cf350814c004d8fd46544d5a1fb83ae526114f22311adf635701cb971`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b5f9e7613185669dc9e4c121b3ad8e8b2b42331332db2ad2c720dfa6dbd8c0`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 90.7 KB (90748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4cd200513f3fbff5472c040ea593c67b666556cd05a3755d2ec503a11c9c1b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0469bc42a43ff5585aad830c59f5252162827f7018150868df9a7e90d5665065`

```dockerfile
```

-	Layers:
	-	`sha256:cf5a12b152b342191aff6985f9e525d3ea3e23078aa1b45448efeaa216bbc1b9`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 3.6 MB (3612166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76106827f65b5612a7d9150284968b1786b970569050a989f78fb6387554d7a7`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:42fcec5f62c6bbf7d83b60a3fe9b5f858e3fae6a284d1decd9e63895890d5191
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
$ docker pull neurodebian@sha256:621034cbd7caa731c8f762752bed24c54d0d599296e4e28c319367f1c8075790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60145064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fc2d205dcc9abfb90dff287983cdb4b16fa1bf8081ce99ee78eb39928f3586`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04c1d1bc54c5c16c3486ec856efa2849631dbf2c91003ad8c035905fa5451c4`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 11.2 MB (11171258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4fe75b2ea427837b40b765f5bdfd24bf8bedb4aa9d7afa9caf3d2bda430f39`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9403142a6721d1366a03933e51860db98fdc81013924fd60b1e0c027353500f`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc54ab011b64e7232c7066456d8a98645a87b54e0221969b2049e329efc49477`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 90.6 KB (90588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5307e7c0568d1aec59d254535b52b102f50abd12216fa7651ad5f8ca54c7145c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3574286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311e17baa3341f53898f918761a061ca8d9ecb7e788bf5faae2d7502f1853ad1`

```dockerfile
```

-	Layers:
	-	`sha256:9c766e65a85759975b28fde5f58ae1838e8266e7bb01317e6009bec6871dd46a`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 3.6 MB (3560258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:395feb9ae49fdb225f390a8536f5502442554ee33ef7f10cafa6712a91d0967f`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 14.0 KB (14028 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:a5a9066447a7a55bd5f1859f10fdb25a50956bb49cddfa4643b73195d662020d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61991599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c9077c97ec01aeb0645a6a6f2fa8433d7a772facd4148f733983d042a7c19c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91721b67c616012a670e88429a719047b855a62a048a2529ea00c97e3af63972`  
		Last Modified: Tue, 14 Jul 2026 01:49:59 GMT  
		Size: 11.7 MB (11707253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8b94ed4ea9ed269a12b6492cc1ee43e81b6dc56b0933f86afe170cb6043692`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4853159577408e363f7faeb3217a3cb86c08797ba594cd5ad7005484bc9895a`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d978f3cae5c76583308efe98d1367f0837c2cd69d28c45c13c1b01df42a065`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 90.2 KB (90245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2cc646a6dbf433ee103a51e0420c924312c5d49eb193a2326ddcf3f02b707b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3567388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de638548608b9cfe8161f7a406cf714a1042fe7918ad3f4216fc1b38440737d`

```dockerfile
```

-	Layers:
	-	`sha256:44a11e65b716df5afb13976df315ea433c4a763b85bbaf46bbc70fb9e67ac0c5`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 3.6 MB (3553512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05873fca6350d5409d2820b29f0287e1f64a28bb1fad65acdc7b8a2205f26b0`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:4127db4a28824047f2f46e17f0feffd2376e6e9dcb7ff57db69689dda5ee936b
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
$ docker pull neurodebian@sha256:70794004389583f129e3c72e45ec2864c2ab2a2c178bf2af9d4a43c58240cb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60145428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54197c204305565b3a91c9a5b932f76aa26b68c1ffaae2b44a6fffd59a493fd1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:50:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:55 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:55 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278f2392984e5d0d879a6000b9eff1af77d3b56529a8f05d21642b211cd32212`  
		Last Modified: Tue, 14 Jul 2026 01:51:08 GMT  
		Size: 11.2 MB (11171222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e09cc93e799afcc572501c3046d75e89007c4b5ab7c16d0f4146c0e709a64c8`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5acc31381253b04a05e03b30e92fad74fbbe02ead4480c21228503517bd72a4`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d701755c0848ad308188fc894c14802e4e8d9cd3c249bc7566761ce9f7427e8`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 90.6 KB (90569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371aa45fa0336f4fbcc64ca879a4c8ad734102a5f2c7299333351c1302d7f207`  
		Last Modified: Tue, 14 Jul 2026 01:51:08 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1323ff6ffc4a18102918b2dae9cf98820b3cc1cd033585137b278fea5165b968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3576365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83d7f0868ade6c08dee43acde297f2d8d6c4fd33f2f4be7c9b9ec6275fae3ed`

```dockerfile
```

-	Layers:
	-	`sha256:7410dd5e4385dcbb33b73f7c1309fb633a48a8a3d13b465d64d32bd695a6cd74`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 3.6 MB (3560294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ec371e60c307236c74c5325af0936e469d0c6153d0bc5007fa73a57f5de7bf`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:3f4c53b96c66b6fdbacb262088c28ea10935a683b0b520736e85555ddddcc6c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61992017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f54a5cbd131a49f0d8d225acd46e657802600eba2ff8b756463d4dc25d1722`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb0a8820e87035c5c6fe37b489eef3f619a61a88f99b309e69d9fd7c8939ef2`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 11.7 MB (11707262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f051ec6bd6ab1255b74f17bac6b4afaaa8cbf6d52ed32331dec6006e5f76f397`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4853159577408e363f7faeb3217a3cb86c08797ba594cd5ad7005484bc9895a`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0783960df29aa2496b0efdd82a539fdabbe1d62506788e95abc89e13c1f2e9`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 90.2 KB (90237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85ef0a95de8575e11f57df93b118fd806393843dc381eb30f3760af9c434eaa`  
		Last Modified: Tue, 14 Jul 2026 01:49:59 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fbc3db2e65a941aa08dfe84a5eddc316c99a817ae57e0cb33d4fed855dc550b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85180309e3588bb5e996614f5ae0493b13f79d23a4eb9e50ec75a2e2a58553e`

```dockerfile
```

-	Layers:
	-	`sha256:6844e30618387ef3ec7f51e88e1477a4743ea362d4715d99053bc834366cdb4b`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 3.6 MB (3553548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11bc097fa9a2848a5f200a3c9b4f896ed6b57fdbc00c43879a4a2aa3136f1746`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110`

```console
$ docker pull neurodebian@sha256:8a74de3cbf85fb39ea5b5d3a9475b3c78bfcda7fe32efdd460b8fc54eddc183f
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
$ docker pull neurodebian@sha256:d53d4c1142e51468b27914711417f584a80cd82c624965b154c73a536f9410c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f6f9cae79f670c9ec1c7e9d6baef458c7f2ba1fea956403a8159582931c964`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4ec3d3c70bc13f7b3e86037e26f59261f767b39e6c18312121218daf062a54`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 11.1 MB (11109939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441b4150d4888e161ed19f911c88bc3a62f7e67739f97c10a730ad9af330cc3d`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c49de997feda00df07ee88181324df013515b8dd4e71d721f9572a7c9e27965`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df04c222d20bf1bbcda0a3d37e4777dad112d455acf521165db5f45fc906204`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 101.3 KB (101258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2ffcf7480b68c0c12b48921165c261b8ded9578531e8e9b7702243ece598ccbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb231e61db39eecdea04aa54e93fa9014bb10cc88f1cfec50eace44811a19d9`

```dockerfile
```

-	Layers:
	-	`sha256:a927a469deec1f1e06e0c807b0d362d32dd5325cacec8d80795239590148d7a0`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a6d52879a580050b3d55afb9fab4085afee6e580701ab3e7081ba620ac2de90`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; 386

```console
$ docker pull neurodebian@sha256:9c27d120700afbc64e65703da2144f8e69f46061331887ad62bd0e5aea8b5f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66321316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf16aeb9d787877512923556a72ff5c31f7738299240569638577f874f631bcd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7e12e9bb789922b409fd797c5262d751ab726dc751b019b9c132c37f39f8f60f`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 54.7 MB (54715607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2de1bc8c8fdbb986078e565bd2ce54545c1dda87960ba9608d6f602df428a1`  
		Last Modified: Tue, 14 Jul 2026 01:48:03 GMT  
		Size: 11.5 MB (11502319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba32a8c82e7a50093dfdd409188d3eea237634f93d697e657e21aa191e68e35`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a94cdfd794859edf1b9fbbfde9a1dfad1eadb8937b027515d02cf6c79c564a`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305c8b31e01bb1280a7b3bbff17a140593edcc0c3d26097c35fb294df63fa5d3`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 101.2 KB (101231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a6abdf1248eb559ded732bb09a94439ec0934344e75037d26b94332866e7094a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ef693ba04349d543d053c0856836e956beb4dddfb28ac7dfe79628659eb0b5`

```dockerfile
```

-	Layers:
	-	`sha256:555deef5108bf7bc1dd6c5404b9779a4b38462a7fe398c363554bac6870b1712`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:195cf0919381f782affd70e2ebe525501522540c7a171e8988aa27139fe010bf`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110-non-free`

```console
$ docker pull neurodebian@sha256:72a31d3575257f4130f9c7fe10c6d25f04552d960bc0dee18f470c9cba37d3b5
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
$ docker pull neurodebian@sha256:e721531755f27d8533db36f5c54e0f461b4e7845a11ce2f27d0b0494241aa146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fa02991cd51b39ac6a969aa74a7971aaf89dbd7d99b9a8905e58de1a4de642`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:50:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:07 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47334cabac90b2fa11336f1249078ad3d7789aaea210e259e07ef058f2b3c8bf`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 11.1 MB (11109945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b79bfe7be1f13ef5e230bc89523152ca8acd01189d0b46a37e1e9f7fe9d068`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5b198dfa82ae194a4addd578c9d8cf1b34045d7b3e425434290f715717a926`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f0e2a87857f445bc6a5bffc83137d97707d965e4c1e3c0a3966b70931a5831`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 101.2 KB (101246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995fe447bdfd0c178935afb34128be10043610e83e5508259f3c67bb37b408d`  
		Last Modified: Tue, 14 Jul 2026 01:50:17 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:65106c2fcc8a08882f3fd2b97472e8b53675a9ab1f4176b5dfa5291460fd9079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853dddce4dbc66826135b1e1c26b4f71fe71df1c062f314b8dce9ffd3efabc55`

```dockerfile
```

-	Layers:
	-	`sha256:311fc035f205dc80515ebca63c24214053a7b2103f14b559fb652039df00c2c8`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966cc923df94269b9c8c4499703a5a0fae2d1434e0d971ed14aba3b437de2d44`  
		Last Modified: Tue, 14 Jul 2026 01:50:15 GMT  
		Size: 16.1 KB (16133 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a22f36ef0d7d13338a5ada4226f37ee670bd38f2cb15bdf675d75f104cb90c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66321703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ae4da29f31ef39b760ea9d3c9887b24069ccd406ae4970552ba050401ee95a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7e12e9bb789922b409fd797c5262d751ab726dc751b019b9c132c37f39f8f60f`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 54.7 MB (54715607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2de1bc8c8fdbb986078e565bd2ce54545c1dda87960ba9608d6f602df428a1`  
		Last Modified: Tue, 14 Jul 2026 01:48:03 GMT  
		Size: 11.5 MB (11502319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba32a8c82e7a50093dfdd409188d3eea237634f93d697e657e21aa191e68e35`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a94cdfd794859edf1b9fbbfde9a1dfad1eadb8937b027515d02cf6c79c564a`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305c8b31e01bb1280a7b3bbff17a140593edcc0c3d26097c35fb294df63fa5d3`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 101.2 KB (101231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304a95f86ffe2925ffd9d31412f602530129a8bc9f35a47bd3771492da655583`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:de6ddfd80d2834ede1692c51cda6c5c13717c5b69f3913cea788d08484d81fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40143c35ea6a6a70c250c5bd8f6dbaccfe6b6cce5027b5786c102b400d33d6b`

```dockerfile
```

-	Layers:
	-	`sha256:e0c880b3e9916bd6409a91338081160e207b9aa8f6c9c66f829e9d826024e1e1`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564b55afc5839e7726f8570774b72a936a2153a153915501eb900bd55664a44a`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120`

```console
$ docker pull neurodebian@sha256:28f2fd540f7b766036b557ac8190d78b967470b7ffe3ec357b3043b5a321efbd
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
$ docker pull neurodebian@sha256:367c93cb9b46c053da55cb20ff9170be49e55af90b0d2b5b7b5cf4d0379b309c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5da598d22c60c2520add740d1d85d644c2169190d675b7e631dc599e2b72c7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9f3b8bd24bc6de117aa842b9de4080e0b9a24e986305e04d093a198ca0f75c`  
		Last Modified: Tue, 14 Jul 2026 01:50:31 GMT  
		Size: 11.3 MB (11252941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c19695fcbcaabe817efd9dbd602cce1a20ea91c3251b7993c6e450e4db027b`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3135cd19cdc87bf9de6577b99b8a71f72092dc47e19da5665d87d4c2adc0fe5d`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f6fed1672777b188d82c2c4e452ebe8139773b26d2614c56ff6a3ccae257af`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 93.6 KB (93582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2eb6e5a0fea6ce27e22c093652264255c0da0a83f51062855c1b4c1ae4394b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a482da23d487878bb071209df6de369910a8e861b07386383902ccfb14124b39`

```dockerfile
```

-	Layers:
	-	`sha256:4fa6d9a017f9d9f788f18f9757e52a9b100747d7c16857d5442d0b2f1647e7cb`  
		Last Modified: Tue, 14 Jul 2026 01:50:31 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27bbb0d9b3a56b12c66bb37c671d379fc388b11914f483d8b0a14c320e5f0da6`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 14.1 KB (14089 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; 386

```console
$ docker pull neurodebian@sha256:38302a000bea1e8c5af617a5012ef723ab050b136e4eaf20fcc4382097ab4622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb455368650de2bf2122ca7e43e3e06149ab49b2dbd8e011b0040b01ac32c8d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:48:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5701209877286384a72fc65bd913b909f5ce768bad1e96b92c976f61728ec0b`  
		Last Modified: Tue, 14 Jul 2026 01:48:38 GMT  
		Size: 11.7 MB (11693007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cc8c8d28df8ec6e95338de947bb3b77200af835da38d3c8c9083aafd6b4bde`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5a057379cd72530cdca33265f704314100de9b76fd59783559b3197eae4b2f`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1fc12449d016568ff5e9d28c1c0517022281d3455aa83eea109dd87d93ce3a`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 93.4 KB (93418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8437d08a7e58b2a2df1ef57b6cf4340ea7b924a2614e0d7911b5930f609f3006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de77ad3e248e162fc30551fbe8b99669c44b6457f0c61794826583f0c794763`

```dockerfile
```

-	Layers:
	-	`sha256:6aa7a915d398015b61ac8990f7760bdc55e98c50e4b0596395c3f029d27da59b`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6359e6eaf4a30ae057b6f3f9abd7f8e6c7b89bbb67b44afee9b2489b197d46c9`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 13.9 KB (13936 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:cefcfb188b76b20952e09f88f012ee9972b3387f8d7ccc665fdeac0d2349f7f6
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
$ docker pull neurodebian@sha256:a0c725c90bd82a07b763b48817bbe18e11f0976e499ab913f7451b180386816e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08065a33d2e5933cd148cf006c7b31bdeccdc4cda15a50f031090f2e740a1b48`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:50:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34608e75f7ab99b9437d7c478aafd910752d4bd234a0439c98636dff43f90ecb`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 11.3 MB (11252901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4aeb2fb86266a5add6c9a3b5610dc2d7efef5c82ec3fc80fe3b6d55e54185d`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2c91c7a6f0200dec2bf014d9cb31d19f3a90de2c99303ce3a6a2b372503339`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56f34877001491b19301af6ef5a3c313fb6445898dfccc2290666bfc6211f0c`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 93.5 KB (93528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be74fefbde0fe24ffa25617d793c273c1d5f5384fd4cd780cf5105df3c77173`  
		Last Modified: Tue, 14 Jul 2026 01:50:25 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9c5ed594615a0cdc595cc32011a2aa9e3343d922d2ebe0090e3cf8fa23973524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539dd36bab5278ba714e4fcda749eac3f527750abaecfa1c49ac1481f9106b19`

```dockerfile
```

-	Layers:
	-	`sha256:80d0e174ae8b450e6e384d6c8ddd8d179be211fb917043f07ad08526dd2c11d7`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:715e11e9ab3cdfbafee2c092550362321551cc9bfadf2eb15b800cb6e863fc79`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 16.1 KB (16131 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:46eea2eb331ea78f0504671855c3777bd3dc0f9a2ea9d08e2b21fee480652e6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d840b2a3abe39096a3e8e64cc622d7969372e030d70c78e3a91d7f53619e18`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:48:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:44 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5701209877286384a72fc65bd913b909f5ce768bad1e96b92c976f61728ec0b`  
		Last Modified: Tue, 14 Jul 2026 01:48:38 GMT  
		Size: 11.7 MB (11693007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cc8c8d28df8ec6e95338de947bb3b77200af835da38d3c8c9083aafd6b4bde`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5a057379cd72530cdca33265f704314100de9b76fd59783559b3197eae4b2f`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1fc12449d016568ff5e9d28c1c0517022281d3455aa83eea109dd87d93ce3a`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 93.4 KB (93418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b83eaf1bd38ffb0f8c94cb426887b841175442803e259830012becd399cc8a`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5baede45330cb3eced3ce3a4af9d530f4cb9084e87e91fd7bb88acb7f5f8010f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b97ce6b7ac02b7f3dafbcb5faa5eaf3dfe3b1d6c8455ff15c8a731aa541d6a2`

```dockerfile
```

-	Layers:
	-	`sha256:250f8639803ebebb3a190f00e4db2738cc54a4b68a3f8de97425765c20e5756d`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a775971579e7a8e0d745768bc1ab076b1e3e876bd40ce7d43ae4d43d94af9dba`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 16.0 KB (15961 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130`

```console
$ docker pull neurodebian@sha256:9af790a0469f8405c7c7c9e9dfb36ca1d6d87ff11797098fe0ed390b67e914f6
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
$ docker pull neurodebian@sha256:64d582a5d039579fa8b6b80c6861141086ef4ff80a57e0e2094ff8d5e191fe20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59846979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78985e182948116d3a3f19392ee151073e477ef117c25170c0940863e865bce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998dd9c3404edb1c257fa3ac74b94abe1cbbb56a5a61b86baf9eb3f8ceefa3ee`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 10.1 MB (10078850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dd83b3c43c0c8336c758c9146febe7c85ddc16694ab5cff15a5870d00184cf`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d5ff97801089c05e52ad9313e72fd67bf4f8e51110943885ed83e4ee7a102c0`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28b4fac948ad13178ab3c9a43b6146352801a96468e04460c467f4eff6cce3`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 91.0 KB (91043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:47db71744232a7d4d4718f36dbcbd19e3736cf1e7e6e2c12bfc4ceae53ae4923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be31fdec34f8cb5921fec791908a53e370e9378344c84ff936ef16684cb3b9f`

```dockerfile
```

-	Layers:
	-	`sha256:67c6d6b3c5896b93589b3e6fe67468f4f8a205c858b26ef6211c5418dbe6d8e0`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 3.6 MB (3615108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4b674c386b165834b76361eca729c5abf53d7fc81e4b32e6e3f0337578ad2fe`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; 386

```console
$ docker pull neurodebian@sha256:07118ca5090a5cc92f507d2a1b4106df6f3999a7334c76adc4a12766632f3c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf60c4b8c5a2cb42257c67eae93e12a2cdc70f08f1d4c8cf0a13e3acfe71cdc9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff8c7d4c72f649648ab293a2aec475b50fb99b76c10ba63e76c08a2ebbea741`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 10.5 MB (10468156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d607a4edde04e26fcfe2b20c9276d66b158a4aee47280c0c050f9987874fe74`  
		Last Modified: Tue, 14 Jul 2026 01:49:14 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ba916cf350814c004d8fd46544d5a1fb83ae526114f22311adf635701cb971`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b5f9e7613185669dc9e4c121b3ad8e8b2b42331332db2ad2c720dfa6dbd8c0`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 90.7 KB (90748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4cd200513f3fbff5472c040ea593c67b666556cd05a3755d2ec503a11c9c1b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0469bc42a43ff5585aad830c59f5252162827f7018150868df9a7e90d5665065`

```dockerfile
```

-	Layers:
	-	`sha256:cf5a12b152b342191aff6985f9e525d3ea3e23078aa1b45448efeaa216bbc1b9`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 3.6 MB (3612166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76106827f65b5612a7d9150284968b1786b970569050a989f78fb6387554d7a7`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:bba26853d2568348e9058c28c40d55f21fba500b179719db00403079c44e5809
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
$ docker pull neurodebian@sha256:6e258759d23744b45b9c765a784652054cc68ef382a845326466f3b54821d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45d1cfd95676f538b33ae52e83e6db9ccf327a47f2256162edd3a194c62f427`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af72c6e43d291c85ea8488f2ef44f514bbe9ce9a2a60fcbbf58b229c50951ed5`  
		Last Modified: Tue, 14 Jul 2026 01:50:43 GMT  
		Size: 10.1 MB (10078849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c85b3dfc2482a89b3cc99f2a7878b51a39aa1b7b6114bcb295d38649c11e0e`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedae1662f9dc59e7cd4cafff9f8f9aa93b6b205b4a8c8e5f508746071a9c636`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa19e2a2f3da9fac55d231af2287a2ca381109efc3a8a63deae38cdc813264`  
		Last Modified: Tue, 14 Jul 2026 01:50:43 GMT  
		Size: 91.1 KB (91064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec66613bc05f0b39d33b3dae81ed39163d2b323f7546d598caefa20d4b4d7ed`  
		Last Modified: Tue, 14 Jul 2026 01:50:44 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:480db0662ce442e910d74c1b13d32766f0d90cce7cd552e57fd98c058561f13b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534d4a6a223ce823679f1a7131804a9a30b970ffa64d96b3fa6cbb570f1adc79`

```dockerfile
```

-	Layers:
	-	`sha256:f0e4b61c1d78c963bfb4cf676cebd03349cc4f2a06ca311b22204abbf50d5c1d`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 3.6 MB (3615148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a47a3262302879413375173ddb127cfb60dc33a4a2f81ad9ddeccd8f6adc29c`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:38f4b4c65ef397ea6aacf3288d2e24d2e8a766ca2bac69eb45e9accc071616fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238df2a59a1e76b9be73243cb8bb858d8a66c3c2ccfbdd46bf7506b77d652012`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:27 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db44c9213402e31f29756c3ed53ff6b7be23254571414a92f761c652e76aaba`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 10.5 MB (10468082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c8689680d0d7a4c6553397bdecad441fdd5f955999fae1d4cabc550dc27c7b`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c34942cd0041b2efec4ef216a7786d94e87bb54e1978c1fd44cb202f258f67e`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06fe7080e545760e2da0880d9b11214cff22dd3639d1654e6fa7a483ebeb7a0`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 90.8 KB (90769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3147279df8712b31ee3656b24d87785d28892863bde6a87d2c6c2510f7ec02eb`  
		Last Modified: Tue, 14 Jul 2026 01:49:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2969ccae600758d98bfe47b7cb24e98e0b4a9ead8a1124f12c20e03d0f8fa89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ef32753cb41de2e5fbc87138e50d901a2c8109d66a40fae210dbe8e52ef2f2`

```dockerfile
```

-	Layers:
	-	`sha256:5285469ad2f9fc6bd50bf20ae080fcd1ec084419896210c4c3853c998bb92a27`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 3.6 MB (3612206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc7085afc18961454ff1a3b9fbf484db2ea87f98df22f1a4b7451d3b7c03b5b`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140`

```console
$ docker pull neurodebian@sha256:7a2b2e4934d6ea223a4f096078f285516a44802e2cbd57f7abd99dae3c3c3780
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
$ docker pull neurodebian@sha256:f7eb6d6c43832734ca27f9e1f1bb2a611ed3b945faea15eb0daf9d10db767f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60078711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23b56102a5ed59ae4b6c4846c0d4bea11f2e94b881b67a6be3eba2e17aec695`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:50:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5f100256131454009d84f466673a6662cc10090cb9a9229277e4e137e8f0cf`  
		Last Modified: Tue, 14 Jul 2026 01:50:54 GMT  
		Size: 11.1 MB (11094588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770771fc197df0bb7a27ce8058e0fd73791e4b6d67235228d2b25c040576af5b`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2071fe038cfbac83fcce637118209dc167bdcc7810e7b8ee337dec35875447`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bf1734d51610d223876e9d4c8af6431fb275e6b4817785d2e11cc03bda35c8`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 90.6 KB (90611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:314762236deede5ba686e99fe753f5514850942af3f2996f5e4951c2dda4b7db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3577353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd7525c182ee64bee906650e8f7b2e521fb9f0327a73a59e89b10410a1f214b`

```dockerfile
```

-	Layers:
	-	`sha256:c171a3d74716cc5db8f017af877d20f95f722cf72d01d5deab40c1fa04eec6fe`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 3.6 MB (3563296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a811bb1da74715aafd4e83aa701ad953c93fde6a482cddfae259cab64f2b45d6`  
		Last Modified: Tue, 14 Jul 2026 01:50:53 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; 386

```console
$ docker pull neurodebian@sha256:27818cbadc6ed2583769ff5e4fe0c06c271b1cc959533bc6a62590db3c0df9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61913070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f141a2f3a7b196b2c168628189f0358cbfa2e455e3ecfe27664b5d54afb6b3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:49:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3ac49795fc0ae8c2bf74ac22963cde9f992dd28c1fa65f7fcb4b1446030bc5`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 11.6 MB (11628730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc75036536397686f4503ccd064e313f5a117ec98a3b23934ed3629fc6bd0832`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cbbcbc5945afaeb1dbbb26ccaab59a0b45afc9885b67ebc26626c2b421c55d`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33df9f28112c7ddb6165092bedb0ce52c07313a1fa1f23895e1c7df8f1b0ddf`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 90.3 KB (90282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d4dbd901ef576a0a7c3ca41fa1338e5ebb855463bc3460a5e11e2063b2ce51c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3570451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e812bb91fb9c0af5b0eb70ef9844b4528911d9a54557b20c8c52222d4f2268c`

```dockerfile
```

-	Layers:
	-	`sha256:d676759a805cac31029bd85f7cc616c1c704f6e4eb7aa1c2d8d247cb1faa82da`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 3.6 MB (3556547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a2b3a9a585fa4ed468729bc37875b1136999885d5b6b7f870bc6620e292f9fe`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:00d216ec372fb67ee8d7278a6e7d0c7dc113af84a6f3a4b0b43292a23f0e0297
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
$ docker pull neurodebian@sha256:1fd87a7596acc01cefa14024028f8a8c16e3d36a899448867e61e0512e9fc9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60079293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba08276b092d5cf763d51d36fa93ae2e34d3eb7c63c87d6028f17507fafa71c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:50:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a4a7782124dd8ee8eaceb9b1fdbbc19c3f5fb426b8b72292db7438710adcd4`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 11.1 MB (11094690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83511319f8c7f8b86c98a0af3e8425a9c6cbb2701aa54ed684084eef61265f`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790c49bcc820ad2a60eaf03c8fc3b59cbfb9db8f1b02c2ab34bba119a79b66f8`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af60c9f5780678635aa0c3a1a3e8b57ef1f9c97f397038d4ba8facc76d3f9e45`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 90.6 KB (90647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b0f3ee2df3981ff9691e191f7aadb066abc8cf492b6696676d8282b8de3855`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:05ecabfbe764f0791ce8e77b97223c8d9f892c7704f91a511b54bed4c2712114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34adb82748fb2e4d59214e2016ec12b70ea69a49a4fdb70d6ade6b846c2ab4d`

```dockerfile
```

-	Layers:
	-	`sha256:ae854cdfaa1be06f2ea6783d9775d71baa0822c2597998544bd6360d4d3aed95`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 3.6 MB (3563332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad99bd442a316b4b4fff727c0bcb546fbec4f066117191af9adc8042efd1ceb8`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:69e8d8118d775ccb87c5b7133f07fd9d380842ec91e9fe80ba5f4549fcd8e503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61913475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1fea9bf6b47e2c693a0ccc332e0f0256f997741dbbcebe1d6a619c5c15fdb9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:49:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:33 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b089c3211ff931d2900d8557b90e464810026c792b816025403c6f29a99228f9`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 11.6 MB (11628704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3e098c848961aef70a2bf222b479de79d672c8ce002bd654fdac13d975d64c`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5591ff2c8d32c3a16cd0f123c1e40b36e93628caa22d2818bef6acb92fd396ae`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bb19a47b800f9b33b5e72961759f618c2880dcae40dbbeacbeedd9a6421f3e`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 90.3 KB (90273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c248f35238ec882847ac7cdfd1871dd0f430e537f9a546bc2514a83b235efc`  
		Last Modified: Tue, 14 Jul 2026 01:49:42 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:79d2dafdf86e7e5e8f678f58220eead1ea98481d823f6d1782f668b83b003fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b08dd24acd3c35673428f677fe92ced98992ec555e63d1b695f745ef9e45ef4`

```dockerfile
```

-	Layers:
	-	`sha256:77b2785bf4809ab7214a8ebea5aad527fec17045376087851d75abe9512d56d0`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 3.6 MB (3556583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ea5fb72ec4068c2911a08bc227785fddb968e89791d6958c686002630470e23`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04`

```console
$ docker pull neurodebian@sha256:ab9cf4485871c3dd9eb47fb2e2981df4e3b0c3ac32f98617afa0762be33b015d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:700b0aafbbee0e55d6c7f085a18b07d65a5c97631d1f500235df0d0491fc9fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e3b5ad3dbe3e712dd0c2a1535c4f52caab81ea5d777b78ef6aeb31217d114b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8ef2e44a3a69d0281ba6056017f4fad3396a2b62aab843e3cc4ab69819dc0`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9a2366387c8c2defc5160c07c6cb7b1fb0de930a7c424b0f2ec41b1a345d15`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419775e147df7fbfb49fbf5490a6691ba9050fe5d0d2e6129143bc6768e1a625`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66390f9da5ab1baa263edca144e8b56c9393f315e3e7a79d8db9404921bc8f94`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5d8ceb9365030a8e7eb95c1a912292a4da3ded5f2d4c92d0703b1dd9f83dbe19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415433ad84c9e55b31430dfc23d1a6d2ef6cda7e80bd8c442330bb680b203522`

```dockerfile
```

-	Layers:
	-	`sha256:1b6f27002f0e1e8ca98b3c0684cf277db67db6c4fc06de4306743485b849a00d`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4240a77100fb2b8db1a2ac302684221ce33ed23196ae53b936ec17b86655a22`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:833114c643e31673574dd1e30a193c07dcfdb23510a2313efc6905447f6fd46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab3fda33941f2a5650a18c9cdce4f81100eb2ddca96e107e3bb602e685b5da1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a3effaf5e12b6751acab8afa1205e3390a8aa1477b0fcc985d863d61ca10fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:19 GMT  
		Size: 3.6 MB (3608545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364052cefec1e8d77a9f9b709718852194bea9cdd07187fa3431fa8de7e51b6d`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5a8482f7b4498345ee397ab396350e6b2cd82ab2839aa66c67119da6b8efa7`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13d5d52634cb4d7db7dc1227f9a93f1cfc05a3397229dabe32993a09c7408fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 111.3 KB (111264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:28b5ab2cdcbd217dc8ad4b00162049acf35a5021a4ac980ab9110edf2da25fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db269c6096ff356bf9ff3cce835f78760a0385721a777ecdb805b75d99e16b8c`

```dockerfile
```

-	Layers:
	-	`sha256:c77d99333e658dfec0182fb77e2adfce5c088a525bf0bcf7f42678d59121ede8`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3813e8b78957f9a85b1cca01bb65187a5cfcb69f875aade18ad846c662c96aed`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04-non-free`

```console
$ docker pull neurodebian@sha256:c45fee5d7e11b8d2ea916c4d90720143d07f89856a20f1962d0b8f4ec622b6ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:9d3b3e9bb9c65c4ae02f92ef8a4ef68614ceb452c8270d9d6b1a211dcbcf9edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa7b6a6e9ac8d036b365256bc8d35ec6fe97e8fc439aa58f0aabbbf18fc3a3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09be92cc852304128454ac5e16f857ba6004281fd0e9d59e65cd0e526671b155`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c286ff70976a5913e2308771c253f55c44793c8a0aaff7cb3cb713a6fd560c2`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0854fc368adab451eb9fe1d7ee8ebe251a17ba6c36c2297f5a4dbe074b50df34`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e229f6659192d466b97213bb05db47042baf2fd47e16cbfaea8798c15f2441e`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e996df809c1bcd6dd896942c0dffe075f3e80fa156f30dace8fc0124fb98f456`  
		Last Modified: Tue, 04 Aug 2026 01:42:46 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8d2c9a83bc7d511cfed01a84b71039e6dfd9dd79f73ba083c79e79e5b549a726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95746f99bdc5ea144c0c89f531ce57b0d436768a00d11c16acfc2016c224bed`

```dockerfile
```

-	Layers:
	-	`sha256:664f72a719aa46aa391f13b301762b2a572f3d79a564b252f8c6580315595326`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b885ea1fd54edcfd96293e5c339da2ac5f99fdf413260f917194089db7e6a9e`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:11186fb6700b06c32c3e905b80c5c29941f5ba3d82566cc0618687c1267a3b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfaacc66f7409e55ac0c76bc458d9a4fc08b1baed23320fcf2343aa866f613c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a8a7b7d16848dd296791691322b103014e4a774441b4df04592500121c13fd`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 3.6 MB (3608553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd32a8645ca77ff8095d39707c1cce83cc0d5eeb1e11e55a2a597c3698707cc`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d301c93c8c6f5c0ad7dc24ba982c456dfa9626331be78b55159b07c01c6222`  
		Last Modified: Tue, 04 Aug 2026 01:43:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23808888cbdba764d05589f9d61dab5173f0e86aaffa49d7e55367fbcef4d1e8`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 111.3 KB (111294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7eebc2589d29f8f237cdfb08100df726e35616d803e9b28a17dc256e408e1c2`  
		Last Modified: Tue, 04 Aug 2026 01:43:30 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3def81c72e52c0465ce200717b948bce8c013073206223e64b2fb9dcb0bc4324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187d1e8379c84125e6ec6b67f9cf3cd09cb7978eb9517e11cbb2db7b9ab87457`

```dockerfile
```

-	Layers:
	-	`sha256:9afffeed59fdd2ff685012e8a4a9302b344642f60e98a24a14655062cd748c45`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ce7f7934be9010f0b6d7e2b792eeb2efcfb60f61b023ec5b401d3a4bd886d7d`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04`

```console
$ docker pull neurodebian@sha256:a2eb9a28bf3ed31d981ca3a92f8eeefb9cc37faa82d43d9a19c8293674b8c86d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:b62075f6fc540b833dd75af0f3616d4f7d45972abc7f0ebaeffb7dd4dd606abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33424266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc233f6c025f2c3f6d0568acc75b6c1a98bff9b19c2d19097ee126b1ea96d47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cac36e42bdd063315078baac44c91230e61af814ce8db1416a48739f324bcf`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 3.6 MB (3565276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70a23c3139b89cbaf94cc07d5f40b0d8d1c5af0e959e079fbcfd63db4a81518`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b6f97be274a0c8084c0f33da867495f08bacbca3b2d033331a3ec3a1e011a9`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a7f12d511800499bc2162846d59972f82e34384427375b934f282d0314caab`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 105.0 KB (104969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:776a01677ae4782b54897194302c5089690ff87d775612e6b38eb73afd05e6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38453c18c0bdadb39ecb8b61d14db4fda2dbb8851c8989881b9cbe87e71eee8e`

```dockerfile
```

-	Layers:
	-	`sha256:81dd4af055be4b36af9bcaa920550ab57df8940bb94a555d55a2bd221dcd659c`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 2.1 MB (2120943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688ea038072c0c014bc98998fba5f82654e725118eaeb0b11f91100113e4909`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ee635844e7379fe4435bfb1f08c729b37609a903f6a1a7e9699abcea15dca645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32557962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c90bd1959ac011c3ff0ea6296bbe8aafc0e79577e28f9729ae2ded5b961d6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b150b2ab3824e7dc70666b713d3e606c9eb2528d2239c528c82b31494cc036a`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 3.6 MB (3562519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8051b3e8fae5246fa52d2e7cae3bbadad56b3a784032211d9870102b097df0`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01427917492c38901c18d8f1db9b6d2c0371fd6e95f99401c939d1f840ab07ba`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c06339a4189b990ea172b5769e2be64c0a6caa61912f03c69261b1685212338`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 105.7 KB (105713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dd9d1e6b8f3ff722717614ab50d85e24708ea68a5b6c1155caeb92554646c1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aa2bf8335f7b803de070f47912c729938ffd7e6af57a94a4627ada5776ebc0`

```dockerfile
```

-	Layers:
	-	`sha256:d0ef206735c0b6e2b445ba8e145b055a6b1cdffb2c2712243c2afe6bcf654c73`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 2.1 MB (2121988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d67c51b74817b1ce2f8e39c5469c2dc5053e19aded542248b29aa236fc5c5958`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04-non-free`

```console
$ docker pull neurodebian@sha256:4bcf37fdd088c6d149b1e1e7fac0b7c651578edad57bddf5956ea1afbed780be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d90bb9f39302500d3db213fa956d460dbbe8fc06b6aa76c9ca240233729c3fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33424643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7169f7387b65f62b6c46e20cfb9a86c28496f2ab1695539c59f50141e12b240`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a26135b8a78006a6f45554812dce3ff865a35b288a76a081717f0c5e70ceb22`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 3.6 MB (3565262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94c883a8c67bc876c41c9aa382a8aac2c1a30da182a7c6140d5efd43cccde8a`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa4e3c25c2ccc348dd71819a2eb6db9eb12c7f1497f0fc61dcd6568e793605b`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec948f0f43fd10fa95c757a86e9d309c8579e81071be09e092aaa328a851f4c4`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 104.9 KB (104933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43302de703b5075b2e0eb14bdf44edcc726ce16a65b2d3509208598dd70b231`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:02e8b306d5586527d252b3d5c7dbb9aa55fa18e3b40c5d1bc594b59ad179d8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22c744ca7154e218656e8f66a5a9d6b6662d972a83e5b49660860d3d9e7aecf`

```dockerfile
```

-	Layers:
	-	`sha256:29816cf1bfb3982feff0bd1ef8709bb447d269afa1791aed42f41a0610518035`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.1 MB (2120979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b775917114cea7a72993c1948934b461974f2547927eb9ac0d0271cce289c36f`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:75fb7d66a1350d467b1b760dc9747bfd0bcfd61d1cdc6483922666412a241046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af78bd46120900065b3f7f362bb9f891901161060a4d71d1aaddd47be58f4eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:14 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6d5a36168c7221d1ab4ad892464f1619a32564c810958c18814a3a42d83efc`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 3.6 MB (3562658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba29619473a5d66d8eeac8a647b16cfdc14d01a6944fda321191816847cbbcf`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e86b46f8605ad1480bdba8f69ed1de11576792087eee20065af4784ea9c874`  
		Last Modified: Tue, 04 Aug 2026 01:43:20 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d730a24301cb3ed14efb5b1bbbe4856716d43e86bae93a3a01aa18c600d9a5ea`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 105.7 KB (105738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d17afe1ae97930f3a19676032ef2768a4d546a3bf281a5f9589983578195384`  
		Last Modified: Tue, 04 Aug 2026 01:43:22 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:cd443fb1e66303815ad3c6de8407654f0b0680f16394d0e2486f4746bd8f1135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d556f784dbe92dc7615469d1e42df9f6034339897e606d09cf8c54161b15884`

```dockerfile
```

-	Layers:
	-	`sha256:f778f58543f6a81ed00937a7359a64012c5ed805d02d8a8984a66ff22939d34a`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.1 MB (2122024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b34f3255d2c8198fe7088790859742ae24544d646c24e1991c4b5ed8922d32`  
		Last Modified: Tue, 04 Aug 2026 01:43:20 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:a2eb9a28bf3ed31d981ca3a92f8eeefb9cc37faa82d43d9a19c8293674b8c86d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:b62075f6fc540b833dd75af0f3616d4f7d45972abc7f0ebaeffb7dd4dd606abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33424266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc233f6c025f2c3f6d0568acc75b6c1a98bff9b19c2d19097ee126b1ea96d47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cac36e42bdd063315078baac44c91230e61af814ce8db1416a48739f324bcf`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 3.6 MB (3565276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70a23c3139b89cbaf94cc07d5f40b0d8d1c5af0e959e079fbcfd63db4a81518`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b6f97be274a0c8084c0f33da867495f08bacbca3b2d033331a3ec3a1e011a9`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a7f12d511800499bc2162846d59972f82e34384427375b934f282d0314caab`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 105.0 KB (104969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:776a01677ae4782b54897194302c5089690ff87d775612e6b38eb73afd05e6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38453c18c0bdadb39ecb8b61d14db4fda2dbb8851c8989881b9cbe87e71eee8e`

```dockerfile
```

-	Layers:
	-	`sha256:81dd4af055be4b36af9bcaa920550ab57df8940bb94a555d55a2bd221dcd659c`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 2.1 MB (2120943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688ea038072c0c014bc98998fba5f82654e725118eaeb0b11f91100113e4909`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ee635844e7379fe4435bfb1f08c729b37609a903f6a1a7e9699abcea15dca645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32557962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c90bd1959ac011c3ff0ea6296bbe8aafc0e79577e28f9729ae2ded5b961d6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b150b2ab3824e7dc70666b713d3e606c9eb2528d2239c528c82b31494cc036a`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 3.6 MB (3562519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8051b3e8fae5246fa52d2e7cae3bbadad56b3a784032211d9870102b097df0`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01427917492c38901c18d8f1db9b6d2c0371fd6e95f99401c939d1f840ab07ba`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c06339a4189b990ea172b5769e2be64c0a6caa61912f03c69261b1685212338`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 105.7 KB (105713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dd9d1e6b8f3ff722717614ab50d85e24708ea68a5b6c1155caeb92554646c1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aa2bf8335f7b803de070f47912c729938ffd7e6af57a94a4627ada5776ebc0`

```dockerfile
```

-	Layers:
	-	`sha256:d0ef206735c0b6e2b445ba8e145b055a6b1cdffb2c2712243c2afe6bcf654c73`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 2.1 MB (2121988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d67c51b74817b1ce2f8e39c5469c2dc5053e19aded542248b29aa236fc5c5958`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:4bcf37fdd088c6d149b1e1e7fac0b7c651578edad57bddf5956ea1afbed780be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d90bb9f39302500d3db213fa956d460dbbe8fc06b6aa76c9ca240233729c3fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33424643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7169f7387b65f62b6c46e20cfb9a86c28496f2ab1695539c59f50141e12b240`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a26135b8a78006a6f45554812dce3ff865a35b288a76a081717f0c5e70ceb22`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 3.6 MB (3565262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94c883a8c67bc876c41c9aa382a8aac2c1a30da182a7c6140d5efd43cccde8a`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa4e3c25c2ccc348dd71819a2eb6db9eb12c7f1497f0fc61dcd6568e793605b`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec948f0f43fd10fa95c757a86e9d309c8579e81071be09e092aaa328a851f4c4`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 104.9 KB (104933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43302de703b5075b2e0eb14bdf44edcc726ce16a65b2d3509208598dd70b231`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:02e8b306d5586527d252b3d5c7dbb9aa55fa18e3b40c5d1bc594b59ad179d8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22c744ca7154e218656e8f66a5a9d6b6662d972a83e5b49660860d3d9e7aecf`

```dockerfile
```

-	Layers:
	-	`sha256:29816cf1bfb3982feff0bd1ef8709bb447d269afa1791aed42f41a0610518035`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.1 MB (2120979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b775917114cea7a72993c1948934b461974f2547927eb9ac0d0271cce289c36f`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:75fb7d66a1350d467b1b760dc9747bfd0bcfd61d1cdc6483922666412a241046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af78bd46120900065b3f7f362bb9f891901161060a4d71d1aaddd47be58f4eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:14 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6d5a36168c7221d1ab4ad892464f1619a32564c810958c18814a3a42d83efc`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 3.6 MB (3562658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba29619473a5d66d8eeac8a647b16cfdc14d01a6944fda321191816847cbbcf`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e86b46f8605ad1480bdba8f69ed1de11576792087eee20065af4784ea9c874`  
		Last Modified: Tue, 04 Aug 2026 01:43:20 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d730a24301cb3ed14efb5b1bbbe4856716d43e86bae93a3a01aa18c600d9a5ea`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 105.7 KB (105738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d17afe1ae97930f3a19676032ef2768a4d546a3bf281a5f9589983578195384`  
		Last Modified: Tue, 04 Aug 2026 01:43:22 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:cd443fb1e66303815ad3c6de8407654f0b0680f16394d0e2486f4746bd8f1135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d556f784dbe92dc7615469d1e42df9f6034339897e606d09cf8c54161b15884`

```dockerfile
```

-	Layers:
	-	`sha256:f778f58543f6a81ed00937a7359a64012c5ed805d02d8a8984a66ff22939d34a`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.1 MB (2122024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b34f3255d2c8198fe7088790859742ae24544d646c24e1991c4b5ed8922d32`  
		Last Modified: Tue, 04 Aug 2026 01:43:20 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:bba26853d2568348e9058c28c40d55f21fba500b179719db00403079c44e5809
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
$ docker pull neurodebian@sha256:6e258759d23744b45b9c765a784652054cc68ef382a845326466f3b54821d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45d1cfd95676f538b33ae52e83e6db9ccf327a47f2256162edd3a194c62f427`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af72c6e43d291c85ea8488f2ef44f514bbe9ce9a2a60fcbbf58b229c50951ed5`  
		Last Modified: Tue, 14 Jul 2026 01:50:43 GMT  
		Size: 10.1 MB (10078849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c85b3dfc2482a89b3cc99f2a7878b51a39aa1b7b6114bcb295d38649c11e0e`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedae1662f9dc59e7cd4cafff9f8f9aa93b6b205b4a8c8e5f508746071a9c636`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa19e2a2f3da9fac55d231af2287a2ca381109efc3a8a63deae38cdc813264`  
		Last Modified: Tue, 14 Jul 2026 01:50:43 GMT  
		Size: 91.1 KB (91064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec66613bc05f0b39d33b3dae81ed39163d2b323f7546d598caefa20d4b4d7ed`  
		Last Modified: Tue, 14 Jul 2026 01:50:44 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:480db0662ce442e910d74c1b13d32766f0d90cce7cd552e57fd98c058561f13b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534d4a6a223ce823679f1a7131804a9a30b970ffa64d96b3fa6cbb570f1adc79`

```dockerfile
```

-	Layers:
	-	`sha256:f0e4b61c1d78c963bfb4cf676cebd03349cc4f2a06ca311b22204abbf50d5c1d`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 3.6 MB (3615148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a47a3262302879413375173ddb127cfb60dc33a4a2f81ad9ddeccd8f6adc29c`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:38f4b4c65ef397ea6aacf3288d2e24d2e8a766ca2bac69eb45e9accc071616fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238df2a59a1e76b9be73243cb8bb858d8a66c3c2ccfbdd46bf7506b77d652012`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:27 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db44c9213402e31f29756c3ed53ff6b7be23254571414a92f761c652e76aaba`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 10.5 MB (10468082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c8689680d0d7a4c6553397bdecad441fdd5f955999fae1d4cabc550dc27c7b`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c34942cd0041b2efec4ef216a7786d94e87bb54e1978c1fd44cb202f258f67e`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06fe7080e545760e2da0880d9b11214cff22dd3639d1654e6fa7a483ebeb7a0`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 90.8 KB (90769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3147279df8712b31ee3656b24d87785d28892863bde6a87d2c6c2510f7ec02eb`  
		Last Modified: Tue, 14 Jul 2026 01:49:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2969ccae600758d98bfe47b7cb24e98e0b4a9ead8a1124f12c20e03d0f8fa89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ef32753cb41de2e5fbc87138e50d901a2c8109d66a40fae210dbe8e52ef2f2`

```dockerfile
```

-	Layers:
	-	`sha256:5285469ad2f9fc6bd50bf20ae080fcd1ec084419896210c4c3853c998bb92a27`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 3.6 MB (3612206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc7085afc18961454ff1a3b9fbf484db2ea87f98df22f1a4b7451d3b7c03b5b`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:42fcec5f62c6bbf7d83b60a3fe9b5f858e3fae6a284d1decd9e63895890d5191
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
$ docker pull neurodebian@sha256:621034cbd7caa731c8f762752bed24c54d0d599296e4e28c319367f1c8075790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60145064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fc2d205dcc9abfb90dff287983cdb4b16fa1bf8081ce99ee78eb39928f3586`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04c1d1bc54c5c16c3486ec856efa2849631dbf2c91003ad8c035905fa5451c4`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 11.2 MB (11171258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4fe75b2ea427837b40b765f5bdfd24bf8bedb4aa9d7afa9caf3d2bda430f39`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9403142a6721d1366a03933e51860db98fdc81013924fd60b1e0c027353500f`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc54ab011b64e7232c7066456d8a98645a87b54e0221969b2049e329efc49477`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 90.6 KB (90588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5307e7c0568d1aec59d254535b52b102f50abd12216fa7651ad5f8ca54c7145c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3574286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311e17baa3341f53898f918761a061ca8d9ecb7e788bf5faae2d7502f1853ad1`

```dockerfile
```

-	Layers:
	-	`sha256:9c766e65a85759975b28fde5f58ae1838e8266e7bb01317e6009bec6871dd46a`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 3.6 MB (3560258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:395feb9ae49fdb225f390a8536f5502442554ee33ef7f10cafa6712a91d0967f`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 14.0 KB (14028 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:a5a9066447a7a55bd5f1859f10fdb25a50956bb49cddfa4643b73195d662020d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61991599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c9077c97ec01aeb0645a6a6f2fa8433d7a772facd4148f733983d042a7c19c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91721b67c616012a670e88429a719047b855a62a048a2529ea00c97e3af63972`  
		Last Modified: Tue, 14 Jul 2026 01:49:59 GMT  
		Size: 11.7 MB (11707253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8b94ed4ea9ed269a12b6492cc1ee43e81b6dc56b0933f86afe170cb6043692`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4853159577408e363f7faeb3217a3cb86c08797ba594cd5ad7005484bc9895a`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d978f3cae5c76583308efe98d1367f0837c2cd69d28c45c13c1b01df42a065`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 90.2 KB (90245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2cc646a6dbf433ee103a51e0420c924312c5d49eb193a2326ddcf3f02b707b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3567388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de638548608b9cfe8161f7a406cf714a1042fe7918ad3f4216fc1b38440737d`

```dockerfile
```

-	Layers:
	-	`sha256:44a11e65b716df5afb13976df315ea433c4a763b85bbaf46bbc70fb9e67ac0c5`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 3.6 MB (3553512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05873fca6350d5409d2820b29f0287e1f64a28bb1fad65acdc7b8a2205f26b0`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:4127db4a28824047f2f46e17f0feffd2376e6e9dcb7ff57db69689dda5ee936b
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
$ docker pull neurodebian@sha256:70794004389583f129e3c72e45ec2864c2ab2a2c178bf2af9d4a43c58240cb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60145428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54197c204305565b3a91c9a5b932f76aa26b68c1ffaae2b44a6fffd59a493fd1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:50:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:55 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:55 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278f2392984e5d0d879a6000b9eff1af77d3b56529a8f05d21642b211cd32212`  
		Last Modified: Tue, 14 Jul 2026 01:51:08 GMT  
		Size: 11.2 MB (11171222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e09cc93e799afcc572501c3046d75e89007c4b5ab7c16d0f4146c0e709a64c8`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5acc31381253b04a05e03b30e92fad74fbbe02ead4480c21228503517bd72a4`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d701755c0848ad308188fc894c14802e4e8d9cd3c249bc7566761ce9f7427e8`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 90.6 KB (90569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371aa45fa0336f4fbcc64ca879a4c8ad734102a5f2c7299333351c1302d7f207`  
		Last Modified: Tue, 14 Jul 2026 01:51:08 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1323ff6ffc4a18102918b2dae9cf98820b3cc1cd033585137b278fea5165b968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3576365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83d7f0868ade6c08dee43acde297f2d8d6c4fd33f2f4be7c9b9ec6275fae3ed`

```dockerfile
```

-	Layers:
	-	`sha256:7410dd5e4385dcbb33b73f7c1309fb633a48a8a3d13b465d64d32bd695a6cd74`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 3.6 MB (3560294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ec371e60c307236c74c5325af0936e469d0c6153d0bc5007fa73a57f5de7bf`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:3f4c53b96c66b6fdbacb262088c28ea10935a683b0b520736e85555ddddcc6c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61992017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f54a5cbd131a49f0d8d225acd46e657802600eba2ff8b756463d4dc25d1722`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb0a8820e87035c5c6fe37b489eef3f619a61a88f99b309e69d9fd7c8939ef2`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 11.7 MB (11707262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f051ec6bd6ab1255b74f17bac6b4afaaa8cbf6d52ed32331dec6006e5f76f397`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4853159577408e363f7faeb3217a3cb86c08797ba594cd5ad7005484bc9895a`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0783960df29aa2496b0efdd82a539fdabbe1d62506788e95abc89e13c1f2e9`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 90.2 KB (90237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85ef0a95de8575e11f57df93b118fd806393843dc381eb30f3760af9c434eaa`  
		Last Modified: Tue, 14 Jul 2026 01:49:59 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fbc3db2e65a941aa08dfe84a5eddc316c99a817ae57e0cb33d4fed855dc550b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85180309e3588bb5e996614f5ae0493b13f79d23a4eb9e50ec75a2e2a58553e`

```dockerfile
```

-	Layers:
	-	`sha256:6844e30618387ef3ec7f51e88e1477a4743ea362d4715d99053bc834366cdb4b`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 3.6 MB (3553548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11bc097fa9a2848a5f200a3c9b4f896ed6b57fdbc00c43879a4a2aa3136f1746`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:9af790a0469f8405c7c7c9e9dfb36ca1d6d87ff11797098fe0ed390b67e914f6
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
$ docker pull neurodebian@sha256:64d582a5d039579fa8b6b80c6861141086ef4ff80a57e0e2094ff8d5e191fe20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59846979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78985e182948116d3a3f19392ee151073e477ef117c25170c0940863e865bce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998dd9c3404edb1c257fa3ac74b94abe1cbbb56a5a61b86baf9eb3f8ceefa3ee`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 10.1 MB (10078850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dd83b3c43c0c8336c758c9146febe7c85ddc16694ab5cff15a5870d00184cf`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d5ff97801089c05e52ad9313e72fd67bf4f8e51110943885ed83e4ee7a102c0`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28b4fac948ad13178ab3c9a43b6146352801a96468e04460c467f4eff6cce3`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 91.0 KB (91043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:47db71744232a7d4d4718f36dbcbd19e3736cf1e7e6e2c12bfc4ceae53ae4923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be31fdec34f8cb5921fec791908a53e370e9378344c84ff936ef16684cb3b9f`

```dockerfile
```

-	Layers:
	-	`sha256:67c6d6b3c5896b93589b3e6fe67468f4f8a205c858b26ef6211c5418dbe6d8e0`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 3.6 MB (3615108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4b674c386b165834b76361eca729c5abf53d7fc81e4b32e6e3f0337578ad2fe`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:07118ca5090a5cc92f507d2a1b4106df6f3999a7334c76adc4a12766632f3c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf60c4b8c5a2cb42257c67eae93e12a2cdc70f08f1d4c8cf0a13e3acfe71cdc9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff8c7d4c72f649648ab293a2aec475b50fb99b76c10ba63e76c08a2ebbea741`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 10.5 MB (10468156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d607a4edde04e26fcfe2b20c9276d66b158a4aee47280c0c050f9987874fe74`  
		Last Modified: Tue, 14 Jul 2026 01:49:14 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ba916cf350814c004d8fd46544d5a1fb83ae526114f22311adf635701cb971`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b5f9e7613185669dc9e4c121b3ad8e8b2b42331332db2ad2c720dfa6dbd8c0`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 90.7 KB (90748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4cd200513f3fbff5472c040ea593c67b666556cd05a3755d2ec503a11c9c1b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0469bc42a43ff5585aad830c59f5252162827f7018150868df9a7e90d5665065`

```dockerfile
```

-	Layers:
	-	`sha256:cf5a12b152b342191aff6985f9e525d3ea3e23078aa1b45448efeaa216bbc1b9`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 3.6 MB (3612166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76106827f65b5612a7d9150284968b1786b970569050a989f78fb6387554d7a7`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:bba26853d2568348e9058c28c40d55f21fba500b179719db00403079c44e5809
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
$ docker pull neurodebian@sha256:6e258759d23744b45b9c765a784652054cc68ef382a845326466f3b54821d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45d1cfd95676f538b33ae52e83e6db9ccf327a47f2256162edd3a194c62f427`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af72c6e43d291c85ea8488f2ef44f514bbe9ce9a2a60fcbbf58b229c50951ed5`  
		Last Modified: Tue, 14 Jul 2026 01:50:43 GMT  
		Size: 10.1 MB (10078849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c85b3dfc2482a89b3cc99f2a7878b51a39aa1b7b6114bcb295d38649c11e0e`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedae1662f9dc59e7cd4cafff9f8f9aa93b6b205b4a8c8e5f508746071a9c636`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa19e2a2f3da9fac55d231af2287a2ca381109efc3a8a63deae38cdc813264`  
		Last Modified: Tue, 14 Jul 2026 01:50:43 GMT  
		Size: 91.1 KB (91064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec66613bc05f0b39d33b3dae81ed39163d2b323f7546d598caefa20d4b4d7ed`  
		Last Modified: Tue, 14 Jul 2026 01:50:44 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:480db0662ce442e910d74c1b13d32766f0d90cce7cd552e57fd98c058561f13b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534d4a6a223ce823679f1a7131804a9a30b970ffa64d96b3fa6cbb570f1adc79`

```dockerfile
```

-	Layers:
	-	`sha256:f0e4b61c1d78c963bfb4cf676cebd03349cc4f2a06ca311b22204abbf50d5c1d`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 3.6 MB (3615148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a47a3262302879413375173ddb127cfb60dc33a4a2f81ad9ddeccd8f6adc29c`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:38f4b4c65ef397ea6aacf3288d2e24d2e8a766ca2bac69eb45e9accc071616fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238df2a59a1e76b9be73243cb8bb858d8a66c3c2ccfbdd46bf7506b77d652012`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:27 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db44c9213402e31f29756c3ed53ff6b7be23254571414a92f761c652e76aaba`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 10.5 MB (10468082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c8689680d0d7a4c6553397bdecad441fdd5f955999fae1d4cabc550dc27c7b`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c34942cd0041b2efec4ef216a7786d94e87bb54e1978c1fd44cb202f258f67e`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06fe7080e545760e2da0880d9b11214cff22dd3639d1654e6fa7a483ebeb7a0`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 90.8 KB (90769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3147279df8712b31ee3656b24d87785d28892863bde6a87d2c6c2510f7ec02eb`  
		Last Modified: Tue, 14 Jul 2026 01:49:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2969ccae600758d98bfe47b7cb24e98e0b4a9ead8a1124f12c20e03d0f8fa89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ef32753cb41de2e5fbc87138e50d901a2c8109d66a40fae210dbe8e52ef2f2`

```dockerfile
```

-	Layers:
	-	`sha256:5285469ad2f9fc6bd50bf20ae080fcd1ec084419896210c4c3853c998bb92a27`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 3.6 MB (3612206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc7085afc18961454ff1a3b9fbf484db2ea87f98df22f1a4b7451d3b7c03b5b`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
