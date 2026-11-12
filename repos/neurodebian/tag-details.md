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
$ docker pull neurodebian@sha256:e57ef3ca62439b4f7f731028b116410b261273fa257df846b8143bf7bc6f8d44
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
$ docker pull neurodebian@sha256:e3206419f33050d70032a892eef59fb8f6614900977ffbf7d48606e7eea7706e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59895909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65aed23edadfe120001df8cf9d91c1f257211ab3f32b4b5582831ff9a3aa4c4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:40:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ba3ede49b92af0b8bb15615e4e9b2584f413fe2f752ee8c401c0fb23d91d7c`  
		Last Modified: Thu, 05 Nov 2026 07:40:56 GMT  
		Size: 11.3 MB (11273842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d813c386337e324e486fecba81fceabcfc6f0813f85e2d811ac92322a6c927f`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 1.9 KB (1900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17e8d88d3ea208c91111824f45de2b3298e1bb599560d0bb3b1e9a24995d620`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e36d8f7abd3ce1bc9c670e9f9615465d349b6c3f6f0917aa943dcde91e60c1`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 93.4 KB (93410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:73e5a7abf76b24321b6a9db4d15f352826ac6695b80e37c746b6191e78508998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f69cb46811934dd04f69678b66d014dc5e82cfb0fe2a369606b6f76f215892`

```dockerfile
```

-	Layers:
	-	`sha256:78e9122ab416607556ea2b01bdb0b2e859e232391e57568e25f0f3c9c9ef9306`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 4.1 MB (4076041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70b9171bed42d71760071f080bd501eb6cf7b78ad4e719f3519887902967b0da`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 14.0 KB (13964 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:13bd55d82e2347eea08be85c788697454e13eedfde7716f33ab42556b6af0578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8306f16fcc90e0cca80146b9471280b55a4aa3158bc3a07a4a2af34db2f4c153`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:44:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184b937b34ff72643cb9e1be71000f96d34bfa3df554c253d5c0382f4b9a3a4f`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 11.3 MB (11252896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478384fd40ae8ca5a459359423a57b54ad3a1fe73fc563f44af70c8a7ca13869`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6827d0bd1827ff315ea645345e84acb34e08626504a463722449059db54d80`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a9c52403ba99f8a4c54b2399c939fb5ad65de4faaf03ebe303e9ec16ddc800`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 93.6 KB (93594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a02d5de39db4d9a0998825709a4f43f7a5312301a6ec39ce3675d7a1064e1dcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588766d2f4996f1207824d5599a5dbae9fa22df1b266eaf91a11b75cbcca7cab`

```dockerfile
```

-	Layers:
	-	`sha256:3b79df702f9799d58fe062ca5b3727c300bc1aab0f33032c16e4a008ae24116f`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 4.1 MB (4076283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:313989bfaf4ae1d2d8b7b7d207075491a7248a4b5c42ef948c07cc6b5b99d319`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:bdc22ad155fa405583292c59d119f786038c14a125d1b0df475c304eedfe33aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61305645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f18af248fb194093510d35e805461ebfa4b2fe7a555d4c562fb01cafdb82389`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4480e6407b5dade156d7cacfdfaa752b5e70afb347d4e5572fa70a172a1c5780`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 11.7 MB (11694353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c449948ab1c19270f2ab0274dd7fd825f061da9efca34234ab10cc0c144b133d`  
		Last Modified: Thu, 05 Nov 2026 07:41:54 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbe03523b1e58c79fdc7bbbc92efb899518c6d189bac07a32b19fe2a52d6552`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22641883b3fbda1f16a6b795453ca5d865c3c7a96860e94efcb0be97e5d0a85`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 93.4 KB (93426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:01e3f7348c396de26ad34f7df25a38655e84fc5f85853f8b181cb007fc93892e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e125ef566e3654b5225821e46c304443a22a69c9a6da01c4753a8696578bee`

```dockerfile
```

-	Layers:
	-	`sha256:89f0cdcd214e5d2c258113c889ae5ab50304934940289c0234b97aabef155856`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 4.1 MB (4074008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d2aad0ac3486ae5a9a03b85a250c668e8d73d959e89b2fd902c638bbb30b9b2`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:e0d329a188218273f7e831b66c770d4a3bf81ab158118bf9d9622feafc579238
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
$ docker pull neurodebian@sha256:1e668e912522a108d60c3602a33882b7e845af8897ed4042f84121973163fd1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a213fd64bafaf2975c3e8b8e06579f38f5c671362374a36b6ccad22b9171993`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:40:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbac99e4ac2cf3bbadc4c7ff858020487a5a2faba5461670df24f811950b972`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 11.3 MB (11273826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308e63639489ccca261cec3512ee868ac1674a1e167294ec7611bc09d00e787b`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1934dd94465445855802b453c9779497b0aa950972e33a302220a32dae601d3d`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470bf179d4b92ccae73a1597eaa38d80ccd1663e2e8d54299fb9d7899e873797`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 93.4 KB (93417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3cc6e3c4da7a568fd52f45a098508b8a22c176f9425f68ae6450a73b6ab164`  
		Last Modified: Thu, 05 Nov 2026 07:41:03 GMT  
		Size: 453.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:61429c653dd9a3e37a52211a85f32c02b94b12d5a59a4dc03af48d985aa1ef2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492fabb1dd625f51493c36171aa52f4080818ff80fad29c2984090ef0f373c57`

```dockerfile
```

-	Layers:
	-	`sha256:44a87f243ce9a11709c701255e5f015cea9ebcf2d6b2cbc95c562b6579d29014`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 4.1 MB (4076077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aed2cb45a3434682ca6c658d1b0b2c9086bcd0d18a178a6a2e2110e96b64b52`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1ea6068d171d2e441541e43ac9c7eb740fa036bdcb8295bc804b69bb37583797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c11179eb3800d6c31df31e28bdf6f43f83b52ada93bd9a1a30d6665d2e8244`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:44:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74cb8f07d55e28fd1fffea133c49e1d932ded251a187e1841ebe801e38a9a8f`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 11.3 MB (11252975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d960620d01942c1453340e16679f508b1a04a3b2b8d52818e41cac62a6064c1`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7135a1715b8a8e63d1ffb5ee85f528aa4b61c6758f67f5788f26bd1018eb73c0`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5351569b2909bc9e490ccc9b55f7eb5660d67a2fb0496452bb9c9a6bca98f4a5`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 93.6 KB (93590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0f895bfc11bfb204cd58ed8dd27d9087b26967c6de989244f6ba057bd5b16c`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 453.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:858bcf5328415e65f74a66d6e70d7d0cb0ef33033eeb0cdcf64dc7bd55bae23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990b9b3c548a9c5fd47a6af2ddfd191b349c1cbe8def543ea8cfafa756a5a7e0`

```dockerfile
```

-	Layers:
	-	`sha256:96683b6c3778a2f1f84cce9e2094d4bc4f7b58638a7fb882fc5092618d710383`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 4.1 MB (4076319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7760068417e6bf9cd1ce23e4c6a9d25ae1890c8f9c5fad0225e9bde273904c69`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:38f687ff3fec8de0bcc4ed7035ace72af10463744e10beaf83e3e4e9b3809c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61306035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa6571d83518c9e4ef48591ad56081328378f643b12ca369f8d33c7b55c14cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c0c133ff29c2bdfc1002e5a0b8198424e1198133f84b69daf84ab82771afc1`  
		Last Modified: Thu, 05 Nov 2026 07:41:57 GMT  
		Size: 11.7 MB (11694282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0383210776a939ff37b5168c8dcc8e2167f29bda9430a65f775c795919e5d38`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ce89a9616e3ce0c57547092ca4f9c40e6a789cc89ebe9891f9211784be00e`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2900d6b2db4d445ab6ebf79eb8f699cd85ab3e25599795c1cd6cf842807bf7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 93.4 KB (93432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cb09bea34a4b952ba04365c1a3e6e6f353a74ca708186d9376577075cecca4`  
		Last Modified: Thu, 05 Nov 2026 07:41:57 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4802280e3628c0173f96d992a77e54efb7af305b4f0f0628c877848832074796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652511a6d3acd1b72131ecf12ae3d90027bd5232ea17bfe6a7f6732767f1481b`

```dockerfile
```

-	Layers:
	-	`sha256:9ed2056c5f1eb35a6c4dfcbec0c895158df68d12e134cba8285caa4a8fb76fb7`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 4.1 MB (4074044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:903870df4c7667496969ebbb5d724b693a6148978df9fdfa5824ee4aff7d7cf3`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye`

```console
$ docker pull neurodebian@sha256:e4b3734c909afcc26d893e27aa72089cc8812dbc85f0483d41e10c63e57efdb0
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
$ docker pull neurodebian@sha256:c4e146a63d0da80337add33e80e84ade9dcd28bfd853c3b1ed4e289e646e93da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e3db308e407fea4d3851ca8b0cc172890dad416819817a321cb187646e4065`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76000aafacd8816fbd8cf97ee81a6a2fce234b4dcd65868c7af2e0c3feae6de9`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 11.1 MB (11103350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09a9c2a463bb512ca01dbcbf50ddc96cff0661750b19ef34abf93ca38272566`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0158e4d7144df5b8075d9119f67e2b58504f5c865db9eb07dd667a357344df`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2432e2df63ed9bd4a2d928366c732eeae57d30ea5623b0ac09579ecef4f321ad`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 101.4 KB (101386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:19c7b8162d90a5d152b473cc26cef7ad7e9af3c10ab3112d1a44ebf9ec646074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7295d88b5d13736fd29394bdf2ebe407af76d0c7733e9ffe1d086d786f21c60`

```dockerfile
```

-	Layers:
	-	`sha256:8b3cb19f44668ed1f325c084d55e059f9896456946bdca051e4d5bbef95ba111`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:599e8e7516fb2631a8091ce2f4695390b41cd0aabe30a5caf74034c03181c5af`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 14.0 KB (13966 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:33963c667b694d0ca22c1d75de40a8f4e605636d7c8d6a47a167f7693cebb14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18884dab2f7c4e948656d123566cbf96f94fc2e31d3da559ae207726f832f331`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5a7542207426662effd3e699135ad2bf524acda8906028fcd0846364c40fbe`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 11.1 MB (11109978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312289dacd6459491d155bc367e065ead4c48053cd7eaeaa4e31982d2a6fdbd2`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0105e6997f403ddbebce613326588d8f91c37c51fdbf04c6f80333a5de65621d`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78646afeedc40ba8fdfe088ceac1649498608db070697fa0e0e34c7c0c4d0ad7`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 101.3 KB (101264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ed3c3799752649aae6238e3676a27f4e2f628ba669093857203f7cf0f78f0715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd2860cffea387b0fc36a6416e74e0502a2ab3da3a1a8fdcd13435d03587ce5`

```dockerfile
```

-	Layers:
	-	`sha256:a6492380268d2cdba9ef2fd9b1150d9c496d63b233f4405853431280305c6a71`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:600582c0a6823188743ada767c7695ac2b3a29914aad192fbe60f33abfd0d534`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; 386

```console
$ docker pull neurodebian@sha256:ea4c2d937d34187cb11976acb5ea2742a40e0e8e5df2458e8b52f47f4eadf63c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a085fc93cdd59cc39668f60ca3ea5f4f5c17e4a9f023e697b1fc91ca0007e1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb8dc8200f61140c45a29b8ad59cc971698bdc77a8aa0e2e11712d651d9d99b`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 11.5 MB (11502420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d03e1f53fa510826f0d8f3386b290fcb87f234316ad96bd186c91770ec6d09`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73826de2ad6c8e2b918da4fddd8255d89d3ec47ddf331f2ef3c34919e12ef0fc`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172becca597faa21aebaf85822ce2cc02490238cba10ed90adff93972f6b0fde`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 101.3 KB (101279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8c6fef6a08a1a1114b2ccb0c1d9c77f303b1bc3015e5f67e118f71cc0411767b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c7778a694e4c625d5f3e6931b99b17fecb6e09ca6bd4df904b399fed8b896f`

```dockerfile
```

-	Layers:
	-	`sha256:710e858810f0b6883c6c01e5cc80311f17d1264173682516958aaf5e0409de93`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a319c8b0cbe746dc64f86c74eb53ebcd08fca33b5294c1b76e49e065ac97204`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye-non-free`

```console
$ docker pull neurodebian@sha256:7e97da8b6892d33e557e688e7b5795f730f7304cede7fd866f27d56b1f37af82
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
$ docker pull neurodebian@sha256:0d0fa351aaf9757917863b4d57f1c361143d352b7a31d9c10f74efe3084f12f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b8d1a07ac8b9c7bf1f0d9b07ab2b9108229ff0e7717ff1fd7e050d4eedaf80`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4124e8f54912c16b2111a87ff0e79902ba790f490abd2a4eb79289f7d2b51c2`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 11.1 MB (11103414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d81fdd92194a0187437e48f00142eb39694e0a9db33d436babc46aed7ae622`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb577a9e54e29a4bf6d5e88ad422f5ac835569b6a5297be9cc83f8104317d46`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094c2a9113f514c53c25db0e533db45af17e770af47fe9214cd7c33d8d336c40`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 101.4 KB (101386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ac35525dd8d5e50f337bfba5a14f20f1ffc7c14b016918eed2860a250866a4`  
		Last Modified: Tue, 25 Aug 2026 00:54:10 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3825ea79b9e8db9cb7f2722684de720a55529b1dbf209c78bd824821581cee21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e086f608d93629ef18776ffd5f89739cabb2ace9d422f911134f236e006c9`

```dockerfile
```

-	Layers:
	-	`sha256:6631cc8e1aec11ffb259941f17faced3fbb40db982ef81bfa6c61d47d87b2c10`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cdb897c72854335107ab8111cd1037f5ab1b0ce4ee2955a5f691954ddf5c19e`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e6d87a01005f8ed4f5bf8d6201973341ea9abd57f0fa145501416dd46714b1db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63475076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50f681c917d9f057fe0c4cad0e0016ab746294418a822a1ac7eadbd21ec64df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5bdbdeeffb7b29a91e6d886ab9b6cc41d4f84d594057885734b05710f9cf903`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 11.1 MB (11109935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72131d3391fc34884a7134b186d48509013cf962c3b1ac8ae4475ffed4d38586`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4ab63acd5e9e64b7b41c1cf6c8bcecd614339063052844d3d5050e4bf93db9`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5a6a0013ea40c96d46e4daaefb13d988511949fbbc7646162228f6942d6368`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 101.3 KB (101253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c5da5680ad0f83a3cb0e76cfaf824d4231f039402a43bbfb592198ac628c71`  
		Last Modified: Tue, 25 Aug 2026 00:56:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9ab8c9fd7e86e6eef946ebdd8700368ad6c1a26367f6544201daf868d27e5921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a50cb9e0062fce01e92afc2c2baa66e097c6b735302e28aa50c6a794c7324fc`

```dockerfile
```

-	Layers:
	-	`sha256:69d0fa87784592d621c64f0b6eeb3ab878ea8f9c6f860d5a74deedc8f49a1f0c`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2901dc5f7ec3adc9f9905b6b3757cd949a6071d1d6386f1126b38b3d38ab6b16`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 16.1 KB (16134 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c4db051361d46bc0c23e7268368f46b1f2f164830ea01ae620bdc31b91845b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adce4ff8d29856da035d71fe508666b82c8cac257d90f7b3101c14effeab66c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:51:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7072e62a6d4e449ac0df726896aafdaf13b77a88a028b25f91e356ad9f80611`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 11.5 MB (11502444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d757649f936df42263da41ee6afc02a10191445f56997d24f05d5b79fb2f1`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76471cbeee5d83a2ceccd7a91211531d73f88160cbe4062a1e818815afe9fbd2`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fdfe1792ce7ccacc30f06304a5be7b81712e1a22ef57208f582378cd68ef8`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 101.3 KB (101268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137b62f177ffb6436227e59ac961ef6151a1b4faaabc21a2cdd6313e77260db`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88c2674b5b6aab18a598642c31857a6f177faddc2bc12f5cd6d617474bfac84a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7989a2c3effaa8f3de7d2add9af0b47a47bf24fbdbdcc04560cfae80af5219d3`

```dockerfile
```

-	Layers:
	-	`sha256:67eb7f1b4cfa4b714a541cdc27564e5ccd1de389abdc9ce31ce98c0b5287ab95`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:276c2691ff11ddf8a3882b10eea0e7ee0ee1e9294c53966cf1411cc1f355d796`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:6b364551e5d85fb9c57a4311a288d777b88afd6d031bc6634e22d7b33f19eb78
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
$ docker pull neurodebian@sha256:500b75e6da54fff3f3c74010c35a1f2459df9942bb1dc7414e61cbdfbfac59a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61599575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cf0096a348d5306c353f8fd1c4101cea4fccf45d1452356895b7283fc56b8c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:41:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e27120031fdd696b2bee68d4a31e12e7c2066f717f24ccb86a96eaf107e0d7`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 11.7 MB (11668979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b19f6cfa328c68b367218e95caefccf2a9d02951dddabe212e15eb0ae29e57b`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36027519c438067e7bc6002f189d9675d0dcd53f82a880012b48cd09ca5795a7`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b40298f4535984a61f8cbf1000a476f5e98858ee7c6b3060cb56fb67c8149e`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 90.2 KB (90177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fc268c06a2553d0273e3a2cdda74144f588c87c61fed89fbde4b4379015b81fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abdf14e98372e98698c9a615492104c4cb43f545ce36fa5e496fec9a5ab0ad90`

```dockerfile
```

-	Layers:
	-	`sha256:210edaccb6954489315a22f8d42263cc17acb8db4ad1e0e5c89afcbc2371bd19`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 3.6 MB (3582580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3a2811e4d5f2e43b13a9f25c427e8233638b54cd8475b9e3ab2a60e278c43bc`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8be7b0b15a7032b86155c1068d73530cae59b724bfde284191688a5426e27f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60455789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bad94e8b0ec77f3d3e72a8a8d172e724e1a6a02f3fed2a092f737dea179006`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:45:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b43532f8491089efbdc4c387ab625de2f2a0c44e4fff4388306eeec17e395f`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 11.2 MB (11182012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427e44b21a28ae55358ba61d7c25e5d1daa7c002e5bb59c1b2b41653ddaf7def`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f71b24452832b265aa826f683416e8dcd21698e764e904ec01304676a990d43`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f9cdb154517230e22d231e5f8123e16b4b4251a72563665a80236b07ce6335`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 90.6 KB (90633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:74a33cfd5348421b43fb3b7429680b55f0f6d78d8b8623c74077188a7b696a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3600120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9a7a52788932e6c7b221dbceab009fc7e841e6f4a6bb857b75ff68502a846c`

```dockerfile
```

-	Layers:
	-	`sha256:0119b3d8c61288417530a0f428c0c4fe3881a31705907d9f53bcb5994903791d`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 3.6 MB (3586064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b358ac7a0771f6ca7f277074fbf004d0463f00459168f2abf3f7a295e9d1d29`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:a9a391aacf5ab7b7f2e6537ec04865947f199b5cf297c6aba6129b7a2f6bd08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62921930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34378f6f46411fda56f678a55c428e0ba9e70d4f2241a579dbc44fc7aa14fff4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:35 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8412af36a95e376639e916feb502fa1744ea99ff1af2614e29d951297b463d0`  
		Last Modified: Thu, 05 Nov 2026 07:42:46 GMT  
		Size: 11.9 MB (11857914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a9541c48b96b7729bd67d59b20993e24c0b36f2410d3b35762fe9bd72a5718`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fae6a2cf9bc848ec27add8fba31532e020dd7a2c3ecac6245c27891088bc9e6`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d297360a55ff9dcfedcafd053d05afab77c25ed97c15aa76f5305e34b029cd`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 90.4 KB (90410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9ebfb4a0904aa8ba53122dd444b2547585c9a377682284f0b96f293e1f29eadb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a75617d41fe3ce3dcec333108d4269721af56468ca407e7c1f7b40ebcf7494d`

```dockerfile
```

-	Layers:
	-	`sha256:a26bad8b324440788cdfed0f67b73173e122f751f479094c24f022f5f57ee9b4`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 3.6 MB (3580430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15b30ff4f647717dc7600ff3e2ea6c720dcee2b0742ef62e3ddaa5d6827e9613`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:86a364fc51911d8de196a34cd8f2c309eca59d7b9c465cb688ab9f9c188f8d3d
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
$ docker pull neurodebian@sha256:8b16b97d0fe07a49da64c7b03251836691c87b86aa681c80a00ead6a2c2cd4d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61599951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdca3ac9def4c48454df562ff25538c4cbcf4886963d69a88748d0b576b3dd2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:41:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21169b5281f1487dd82e67bd2d1cd8afda5ffa302731a007826833bceca16b95`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 11.7 MB (11668953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21d7a159575c112a649e8cd9029b757daf997ec8c74c172d87d0ba55da67a7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114401bff60970471e2c067cfb8e3404c6756902605f5fed34138898c2f64b3e`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32b2b8513a722620100f8a483c9a51cb2777e2ae216082b2daa79d51f66944d`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 90.1 KB (90129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12834aa2058b227d8c1fbe40d7f9a2d99fa7a3419936f2fb7d8121a63d5d44a`  
		Last Modified: Thu, 05 Nov 2026 07:41:28 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:304727bdbe6228bdb8eb8172a2e5c86fb48affc8e2051e52518ffe58de5615ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4926db0ecac020c1489ee050119d3898eedd31d97462d1c3622a7f6dcb634497`

```dockerfile
```

-	Layers:
	-	`sha256:3dc5e6af55707809d421534f7d13341be07ee9caf0556bf8d0e2b13917e999ba`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 3.6 MB (3582616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88c540fc1c540311dffd18e3c76d4302d4b831957ff1d8f4d49c3dcc4e6c3e5c`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:6621c413ceddade54be7c8df7ea39841e3a0785f82472cf22ff926ea59853b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60456124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281096feaea9581816418d98368b0625f421c8518193911cc7c8e7e0bc03d744`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:45:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:17 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7d1de40788a2a135f40e25c55ed5e8f0f419048798e01ae3d978966ff54ab1`  
		Last Modified: Thu, 05 Nov 2026 07:45:26 GMT  
		Size: 11.2 MB (11181910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622da755998a2cfd15b77a874b15e410bbbc5664891646499597e1c8eda7121a`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0882aef170b4bca958fca8579f486d1c49962a9b7fce597c71a82a9da79fc7b`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54784c9c3b700e4863c161b580922447e1b1b0670fbfad0d638a564a349a3a23`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 90.6 KB (90624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d857ef1b52800b766cdebf4ee736ca8e7c6b56d6003f7d18fd1d2960b35e4918`  
		Last Modified: Thu, 05 Nov 2026 07:45:26 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d9d16840493bf6a15cd91f5dcacbf6cae96043bc111e23163b4f6d50b3f42461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00222af746d15ebb8b4c931b4c02f7abea7be2c82329f375200b873f17f49725`

```dockerfile
```

-	Layers:
	-	`sha256:d029e8b64737267a5d1c23f2f5c0c0fa7610953eb9ccbf3805acef0c7ca15b47`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 3.6 MB (3586100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ccbc691b301c565be21afbeca0c6315d63a71a78cb283e18017e7043a34887d`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:66a90b3865b5db0048bfdb6fb4d1d807dff5523c827773f47330c7c2ce2f0195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62922351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60719530f446f4455b7d07b35ecdd3f7a4e2ebe0889d7624f3e5509af4c81278`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:37 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:37 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:37 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:41 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f19baa15d41000f5e008e29c3d072266644f0c955680016631509838745d7b6`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 11.9 MB (11857877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cee484e2d6bc0be402dbb7fdb6594e28b7b7611363d9d0dae579dbb2b8bd45`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ac8188e5aff4a0c77b341d86bc534963fc94fab23c305c80e6cb42b1bf5cf6`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17b0ff1451d7b398b7e996cbe64466138ddf81f3735c8235c99d2b797fa4ac9`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 90.4 KB (90420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff681eaa2c4703191f5260889ffc83bb46b80657078271c82850aa3371ee0ac6`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3b50d648b88becb2f8216b421b5d898dd8195de5f82152a4a58179c22e6f7624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:494a78f3e30058cc72cf80446639f101bcc009943c3497a2c5995e1f04db7170`

```dockerfile
```

-	Layers:
	-	`sha256:2d091363622ce768d60f2645bee186ce01cdbe52ae1d6652cded4807c0ff4aef`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 3.6 MB (3580466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1131e44b36ad5ea393c8081496c8a6e6b38bf9262c3fd6a1e714fdb5af3666f`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:093e714134c4a929da2c7ee44c4108fad74bbd41fe7f2caffd17b63b5015be54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:b8298eb2e82180416ded835e04758ef5a5d04556d133b876e071f9b76d2f2781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33808560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e5c5a58a881385db6ffaec5ead4a8848c232f4eeccbcd9c090615f3e4748cdf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52843f65f83338c773d47abc52bfc0f36e09f59cbd3ee1d74fcf3c03dd018ea3`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 3.6 MB (3625090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7178981b1c34569eb4ed235f96cccc26c7d0bb86ac101190a472197975f854`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c8fe6c662634af44914b2ee34e7b16811eb1120b33a5a4336887aae84fdbe0`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff74a5797efb5b940edf991bf9a9d8d36569640079b59474d937424b7dd0833`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 111.8 KB (111758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:009f55cc03177116135854359d2ebd625f2f881b45b79e18acca664a19ba5df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f596dfb9658cfe26032de75959d0c9dc40f9897a596a6504805110611b585c09`

```dockerfile
```

-	Layers:
	-	`sha256:7cd66fb39584fd6064069f71c21306dd8f4cf8b5524185fb16e6ea76d1abd67b`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 2.2 MB (2199012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901b23adb3e776962abfd73609cca7db38777f148d5643fa90ecfca2be5f480`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f68c615d1dbbc73d2a53327b30337e72d625cfea87e67f1f29f918f33d82450a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31724650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81553760940d8f639cdced2c11773650a5e3f6ce2aa50956ac5ebac377ed95f4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:35:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:35:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1697d905c78a17b80b8acf33a219d34559d597e55c50e2e2de2214cac69c9f0`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 3.6 MB (3609265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819649570bf36e72c4d66a4d58079b0793a849f98c3173bf29823f8567d3ce1a`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338a05d9210fa9aea015ba577f31557cc58360a774d05aee77da89068a247d23`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0c6b80f5b659736ca0c1e09b12da343b2a631ce801ecac435a49fd722ce196`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 111.8 KB (111797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:153b1e1df73b13fb9a49febaeac0d31b622d1a716dc19dac0937265995c9ff92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2213330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fa0eb8443110c3204cc7ac8922c67c8c12eace224b19345135f284ae554d1e`

```dockerfile
```

-	Layers:
	-	`sha256:dd46673b130f2b81541e382a5f030136a5923457d220bf1d79b37319f4076fa1`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 2.2 MB (2199272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d61de28ee11b5438390eb2a6e09c7b862dc2b103ea020e2432f5504722fe8f99`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:04bd862a108259c731f590a0281b6bee74fd0d0abc1e5cb7ddc690bf8ed2c853
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4c3d9ba4255b0c83961ff001609b6de99256f83b17c4b91380bb01a53a24fda5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33808878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13f71e9c7cf89cf9372b51f77940388d503fa6db24de68bfc2e98f3f3654626`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97243f9bb3ed70bbb336e77336a06c0a43223345476672dfa0bfea340e83efc`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 3.6 MB (3625126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85168820ad8c9c73444a19c5b51ea70e8c25f642a5a0f496335aa8fbbf2924ce`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d9ae678c01254c66f62f89270520b7764e5a31fc816f558414604bebe9ecc1`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e87e05ea693664d7024beafff64c3d0e36d2340dde45b550e45ff5999e8bb5`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 111.8 KB (111757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521bdfb321ed71b1c347ddbacda16d57c612d7defeed35a12bd966a5e855c6d9`  
		Last Modified: Wed, 11 Nov 2026 23:31:18 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0c71055a4f6090d0b1e4a74ad3f6f609918da8fac405434ef2959f24043bd441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de32f33b20065a6aaf9e13abfc9199b86affd16f4a3bff3fd0830e13a5634415`

```dockerfile
```

-	Layers:
	-	`sha256:b481ff5cba1502262f5afa4eda596ba198b6fe7d035cc0e0b463e3180f645bd7`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 2.2 MB (2199048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5302f4ac624b27f2368c99361ef243dacbb2e402d562008212479a61ac49b5f3`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a8e781087ae19d3f20dc92288cbc250271f4bceec0657bfbff985ffa047594fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31725004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f61d5528f49212fe3d58dc27a88b23b587faeca5c2da5242355f1858e8ae6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:34:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29ab94fbfa8a90c048420f7647bcc9d236e934887841920fed0c43c8c4571bb`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 3.6 MB (3609329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6291b32a36825cbc56c8fc9ed25063e6b1c083612c309968b088ac864211d8a6`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281e8f894a157be0535f2cb49c6545ba80c2c54049da975f476c726e304d5b9`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3379f26cf704b44d56beb3b4f502e5ff5db1b62be36430f4c024a0943edf8a3`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 111.8 KB (111804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf4a967e16e19413344e3bb09318dc5ee7525a2c6092613def74b94f8dc049e`  
		Last Modified: Wed, 11 Nov 2026 23:35:10 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:cd95d6bcee5056c5012b1e1693639c2520b8df01058af763566c286af9b27079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739387f8cf4f8e078d124678f102dffd34bb0a1edadbf2dfa02ad51814078958`

```dockerfile
```

-	Layers:
	-	`sha256:2f599c3682f90797d561523af55590b49203ccbb7ed8c576233018e64af73af4`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 2.2 MB (2199308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28b010f1f1722750e610152ec4c9125570d4c78d01e4ebf49bb879976febf6af`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:4521313bfbf4b0dae3acd4e90b8fc5eb547d7df6b733dcfd89de1be8693e861b
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
$ docker pull neurodebian@sha256:595de98a61bc3a10105fa37f8230ced6be2924ea1b082b6d26376db4ee3ed314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59799960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d896af0f48a8e9dea38632738a4cb718c8cc570d4fecbc1796f296209b4b91`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24fc13655134322c0996718be0a5cac581aa89714abc65350d39b2465129ec3`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 10.3 MB (10294126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39bd95e3f175172ff738c788039fae7bd53b5a7d8abc4d0ee5ac762ed2b417`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1990b2e8394b14f4a17355800c292687040490ef8dae50ed025a62dcfa27974`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463a6b46c98cfa330b19ae2bac467cd36d4ebd4bbb2cc5abbc13734414763493`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 90.4 KB (90421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ab05577a7b3bc12e2c08b3529963a38babe7987c1147e4a82f942ff32028b4e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5381d3ba6e051a89c524b386d79b0a10fd20f73e61212bf616fd103958b9`

```dockerfile
```

-	Layers:
	-	`sha256:0fc0afe939212026cad89b81a0d914a3293d7d73c7f4d18eb72b99aaa92c252b`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3a63805892a02fe782bbb13515f30baf40bc0a90592e796bfc9fdefaba88bb0`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:65e976905d534185e5486a6e2d827e74bd93f8ea2fef842a742c249bbe13b44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59951553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24db7fb3397ed150cb4ae56b288a1222af54fc1849645719b7f4ae6a12d60c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9586e72c5cbc08b2ea68ab48770de717e3859d9a970123cbade10cada209ae`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 10.1 MB (10078943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef592238382ba05f22aad816ee181f5a307ec921e4accb3d8923f15ed9b524e`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdea2c75f82792f649bbc79d16385d34d4f06008c2dde9cae63fef7228b5669e`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f855e0489568369e2f2018d41700d1b770ec93522ad9bebeea314819a25cf95b`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 91.1 KB (91097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9986bcaa852c7bc7a1666712423892febd8d766208c09ee730b196b6c520fe7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e71d331b142b5f2f69e9337e34998b78e5c36f4572bbc9c9d383f99f0e90c85`

```dockerfile
```

-	Layers:
	-	`sha256:0f1716fbe999d458a32b32147267ccb8a86f80e1815107a96128013d00892c25`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:914b96899711c5d0b0583527e39d1de6d38f0ac23134a9e27118ec9e0ee1b631`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:b1063aac701b5271732a098b85d139b7ce48d678239f07aae6691a8b15e2f81a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4dc764216fa091d8acb22aa9a920d8c126ab35fb1e89029e4c4ed944742247`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262aade66fa34a7e47cec59830c6824ffb7b94baf12063e1e331dac407d26f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 10.5 MB (10468167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3146499573d8b6425094ed7d59f6eb31f40652a2c44166bdbcaeeef13d58a639`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d432c3309d7bc01fff1f993d893f13ec7a69e0869a0b9acd3a48e0124ae24c82`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1e59276ec2c43c864baca06f294d986a1dbea12ce9b947f155942a8b227106`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 90.8 KB (90802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a2444a7541c64b09a0751538b34c6b5b8a022e27b17aa565f7af2c9d695a0c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727a73ecb17fd2ecc120907717aca05bde57f40b614182e10521618001a15253`

```dockerfile
```

-	Layers:
	-	`sha256:5f476406e667c718f4a9e961aebaa3022155f2a52d0c1bc2da05922013e194dd`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ba93139273fa1a95db0e60efcc8a05084cf7a00a4b183f19f46d70b616456ca`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:4794e7257a632afa31e577231ec65129de80621153c16d046e034a6cf20b4f0d
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
$ docker pull neurodebian@sha256:54ddfad5a306afcfe1f856b13a6d59b7df1530eca02c9072f1e5b534f3f3932a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62541253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17f452f35b74579529315cd43e945aa8ebbb35eeeadb93cb754e8e1a20792c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffa043ec9022f8a678eb7643ce937857673728489e3e36f59b278cc4f7d46d64`  
		Last Modified: Thu, 05 Nov 2026 07:41:28 GMT  
		Size: 11.7 MB (11721208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21d7a159575c112a649e8cd9029b757daf997ec8c74c172d87d0ba55da67a7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52396bd84361bab98c1160016e6c3c88b8152d341f0a7428283010b08b94e380`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a51460d471891ec84dc7bd1a6e18ae652130fd5756eb6713265bc429f87fdc`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 90.4 KB (90378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c20778996dc0e1a02f55c093a68501bc909a6d82ea9c3219838054ea8a51d3b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ac5f626dee307ed903814b40a34f4f3f3f52eeff546e8b63d18729de67b131`

```dockerfile
```

-	Layers:
	-	`sha256:484ba5bef08be36e0c0850d723d8be4c092267fad028952d8878cd7e359f9848`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 3.6 MB (3587904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cf9ccb3d25c5f4d645acd7dcd8fd0724c8532f86450d68d0e857be2eb7993a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1cfabda8e73345b6b764b47e6c90b4ba1d5b7bdaff567e3d124c2a69aabcfc64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61153826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23cc494569503feea0da0eff24cb59b760f83b7c6a8c130c5d0bf8f1a29bbcb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:45:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82393be0bb77fdb23d62e842a363baa57910f7a12355553c055bcfbe63e8ee69`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 11.2 MB (11193540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bc58bd0a29cb7d8a9b97f52f14ea7fca355a28b8b6652c905320d989bf0fc6`  
		Last Modified: Thu, 05 Nov 2026 07:45:31 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4644ddebb343b3eead6c94c69dfeb683300bd2973aedba69d954bf487cc3aacd`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551e3627675c0a3b03d60588fdb397b241592860690ec3103329d4c8f83ca3c7`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 90.9 KB (90918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8267a00decbf7b77f33179bf7b47de4f4af9a9838d1b8a39c899994c9e18f2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3605418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57785897f60d76b39472a30481e56ec8bf59e7d679315f5d6cbe06009d33f4a1`

```dockerfile
```

-	Layers:
	-	`sha256:7f53a71b6c5fe1156c9069f70e5b83b49016867758d29b0290738c86ca31af27`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 3.6 MB (3591390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa9d061a641cda2402df247d3afb65d18b2305b1e8511b4bda8f1d5adc54d53b`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 14.0 KB (14028 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:b1555ceac5b379e448c96c9af3078fd8afe2682f34991c9fe6ca577b230623d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63785091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e18167d5652d5179ecfad2cd149de14d53f0678126cf7aaad5cd4c063aa459a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:42:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:43:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333adb2d27d8e7d16023726fccac60faa9452ed2698f163d9a7f72d9327b646a`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 11.9 MB (11903104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41fd649931b3611d5ac6cd88b7b4e61dffbdb0becb4e5f770998338e9d64634`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c42ab8b6bb28c0e762d41f090ad5dc731cd7b668797f970de2228e9f01e8243`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb270f40b783b13ff054b3e29c8d0b313a1c0c31c7ffd6a80628e18d6ad5a600`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 90.8 KB (90757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6bcdfe685f34f306b85fe7ab8449531141e7734afb043572012f575607a0a92e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3599624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd07eeb51d74655cdc5d985ee3406ceb9dc45f30775f4e2b23fb955e53a2b1e`

```dockerfile
```

-	Layers:
	-	`sha256:acf24ae0e842c679fd56d388a611dec0a80e36e460d73c9deb4acf9e7f7b1679`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 3.6 MB (3585750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e1af752ce09c9e12748b635e08cf113263ea1a744c085097c97987bfd8bc067`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:ef08c540f144e332d97af5ed0872ed6a09c719bcfac3261e8ceea0cfc9d30452
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
$ docker pull neurodebian@sha256:5b95ebaa48aedb1c5bc24098760ebd056f27ee7df09ad08b4c60098449bff567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62541736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82a3166c960c83f9c5772f146666f2b9e23c538f1e04be58c79e0c7654d3416`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:21 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:24 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e41ca15c7c328375e097344d0314d91fc2995bbf924c5f2d0746c51140dd8`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 11.7 MB (11721270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cbebcba3cc8be5d9759f7e190f5fe811e57a3d793f434da600a8c79b4f9139`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28877c61a3212989223d642ba740a0d9bea7c14fc5e58fc811785e0587bda97a`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5d1cf06fd328434105d6184861a235e28262727dc5833ee8fb33123a472900`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 90.4 KB (90381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79342d37b01b0b0c2599547851a6d46a58a70c8f43ffabfb5419cef9ea754a3e`  
		Last Modified: Thu, 05 Nov 2026 07:41:32 GMT  
		Size: 422.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7cc9e7910280aabaa49a4a95f0b3c9ed93685ea0959a2c3aad203468d951073d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3603871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4658fc995dfdba1c1d73baf16a2e86ec9cea94e905742157cd46feeea371a3fd`

```dockerfile
```

-	Layers:
	-	`sha256:8c004f4467050bd9642ecb47e725091c5e2f68de8d75a19956a0f808672a6320`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 3.6 MB (3587940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1e894f256da67b76fd8511cf882e1896aa6ad24730b3233d16d07d599eeff0b`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:082f152b3cb6176d57c9824790dd1574f206523355c482c7b8f29dff5bfbf352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61154271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cc66b7b040aa7eb0d33896c1c88a9cc1fd9f8b2cc2dc9a091ffe5b9b0f9e3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:45:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:21 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:25 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1bfcb184e5aaac1584836866cecf88d72442c0941a6c318670b28dc48de97e`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 11.2 MB (11193557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb315aca60a592f0f921f5429034a426848ee32669bbdc3f9cfc2f948f597e08`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df1b543e6eba61aa120ef98c53a527d37490f2613145acc9795d59c35093f7a`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169ea84264051c77bbcb0bb0a9c0326ed6e65dd4ae1c66db8d0f2f03b78f7314`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 90.9 KB (90922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20757628b6f27344b7daefbdcf0c54bc3475bd771078c72cd3cc26e03874f2b`  
		Last Modified: Thu, 05 Nov 2026 07:45:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:011cd8534175b90d57ff294bc42b7436a3a65f861ef82b96a89fec67571ee359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3607497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95ae63fb68ae0061370731fccc4a7050470f303efeead4011ab41572b82d43e`

```dockerfile
```

-	Layers:
	-	`sha256:8324e902cd535e2a1927fb0f522f6a697b6d539e5041cf059ebfcf04e99438f3`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 3.6 MB (3591426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0584cd2f2f9553e91f1240e64a7c7af6302f642561e255c21c027d24a110aae6`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:eb1b8657e0b444956a26e16f62b369f90e16a0c1cef81a88fc211f689f09b113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63785446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88355c00ef8f80a7127e704bc9bd847b83196b82196b2d2942a0c5a2cd6c7d38`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:43:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:43:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:43:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bd8fc96f2c1b6a45d0596f30901d010ec99c7d724ff87ba1afe7cb6893a773`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 11.9 MB (11903045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af0600053c67288da88b52f8f6e3f49221b1dd83db0464b5e95316c45c09199`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd83f17483b5cd87e227e5ad9950c041acc4929c1d77e889c37cf76e799bbfd`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14c2bcefa4bbad8aa0db46ffc9590834e4dd400eabb8ea36f79b0cdf80397d0`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 90.7 KB (90746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ff5c4691d76a437b4083668369a2ec84f017fe5722031da9f24cb391fc9377`  
		Last Modified: Thu, 05 Nov 2026 07:43:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:42e39762024891f20f7aeba31fa10c60e3a350560c8b3df2f669c105d1b45065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb9e10879157876753b28ab345f1c4ba92e862657ac8e39b19eb05271622900`

```dockerfile
```

-	Layers:
	-	`sha256:9a7da46ded39598a4b925fb89fe46c0cf9020f10ec7c2fdeb7e338fc11bf570d`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 3.6 MB (3585786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:957696359bee5db97a804393e678c805ed2f0ea0bbc2caf9158c035848edfcb0`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110`

```console
$ docker pull neurodebian@sha256:e4b3734c909afcc26d893e27aa72089cc8812dbc85f0483d41e10c63e57efdb0
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
$ docker pull neurodebian@sha256:c4e146a63d0da80337add33e80e84ade9dcd28bfd853c3b1ed4e289e646e93da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e3db308e407fea4d3851ca8b0cc172890dad416819817a321cb187646e4065`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76000aafacd8816fbd8cf97ee81a6a2fce234b4dcd65868c7af2e0c3feae6de9`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 11.1 MB (11103350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09a9c2a463bb512ca01dbcbf50ddc96cff0661750b19ef34abf93ca38272566`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0158e4d7144df5b8075d9119f67e2b58504f5c865db9eb07dd667a357344df`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2432e2df63ed9bd4a2d928366c732eeae57d30ea5623b0ac09579ecef4f321ad`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 101.4 KB (101386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:19c7b8162d90a5d152b473cc26cef7ad7e9af3c10ab3112d1a44ebf9ec646074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7295d88b5d13736fd29394bdf2ebe407af76d0c7733e9ffe1d086d786f21c60`

```dockerfile
```

-	Layers:
	-	`sha256:8b3cb19f44668ed1f325c084d55e059f9896456946bdca051e4d5bbef95ba111`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:599e8e7516fb2631a8091ce2f4695390b41cd0aabe30a5caf74034c03181c5af`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 14.0 KB (13966 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:33963c667b694d0ca22c1d75de40a8f4e605636d7c8d6a47a167f7693cebb14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18884dab2f7c4e948656d123566cbf96f94fc2e31d3da559ae207726f832f331`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5a7542207426662effd3e699135ad2bf524acda8906028fcd0846364c40fbe`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 11.1 MB (11109978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312289dacd6459491d155bc367e065ead4c48053cd7eaeaa4e31982d2a6fdbd2`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0105e6997f403ddbebce613326588d8f91c37c51fdbf04c6f80333a5de65621d`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78646afeedc40ba8fdfe088ceac1649498608db070697fa0e0e34c7c0c4d0ad7`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 101.3 KB (101264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ed3c3799752649aae6238e3676a27f4e2f628ba669093857203f7cf0f78f0715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd2860cffea387b0fc36a6416e74e0502a2ab3da3a1a8fdcd13435d03587ce5`

```dockerfile
```

-	Layers:
	-	`sha256:a6492380268d2cdba9ef2fd9b1150d9c496d63b233f4405853431280305c6a71`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:600582c0a6823188743ada767c7695ac2b3a29914aad192fbe60f33abfd0d534`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; 386

```console
$ docker pull neurodebian@sha256:ea4c2d937d34187cb11976acb5ea2742a40e0e8e5df2458e8b52f47f4eadf63c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a085fc93cdd59cc39668f60ca3ea5f4f5c17e4a9f023e697b1fc91ca0007e1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb8dc8200f61140c45a29b8ad59cc971698bdc77a8aa0e2e11712d651d9d99b`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 11.5 MB (11502420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d03e1f53fa510826f0d8f3386b290fcb87f234316ad96bd186c91770ec6d09`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73826de2ad6c8e2b918da4fddd8255d89d3ec47ddf331f2ef3c34919e12ef0fc`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172becca597faa21aebaf85822ce2cc02490238cba10ed90adff93972f6b0fde`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 101.3 KB (101279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8c6fef6a08a1a1114b2ccb0c1d9c77f303b1bc3015e5f67e118f71cc0411767b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c7778a694e4c625d5f3e6931b99b17fecb6e09ca6bd4df904b399fed8b896f`

```dockerfile
```

-	Layers:
	-	`sha256:710e858810f0b6883c6c01e5cc80311f17d1264173682516958aaf5e0409de93`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a319c8b0cbe746dc64f86c74eb53ebcd08fca33b5294c1b76e49e065ac97204`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110-non-free`

```console
$ docker pull neurodebian@sha256:7e97da8b6892d33e557e688e7b5795f730f7304cede7fd866f27d56b1f37af82
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
$ docker pull neurodebian@sha256:0d0fa351aaf9757917863b4d57f1c361143d352b7a31d9c10f74efe3084f12f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b8d1a07ac8b9c7bf1f0d9b07ab2b9108229ff0e7717ff1fd7e050d4eedaf80`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4124e8f54912c16b2111a87ff0e79902ba790f490abd2a4eb79289f7d2b51c2`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 11.1 MB (11103414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d81fdd92194a0187437e48f00142eb39694e0a9db33d436babc46aed7ae622`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb577a9e54e29a4bf6d5e88ad422f5ac835569b6a5297be9cc83f8104317d46`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094c2a9113f514c53c25db0e533db45af17e770af47fe9214cd7c33d8d336c40`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 101.4 KB (101386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ac35525dd8d5e50f337bfba5a14f20f1ffc7c14b016918eed2860a250866a4`  
		Last Modified: Tue, 25 Aug 2026 00:54:10 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3825ea79b9e8db9cb7f2722684de720a55529b1dbf209c78bd824821581cee21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e086f608d93629ef18776ffd5f89739cabb2ace9d422f911134f236e006c9`

```dockerfile
```

-	Layers:
	-	`sha256:6631cc8e1aec11ffb259941f17faced3fbb40db982ef81bfa6c61d47d87b2c10`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cdb897c72854335107ab8111cd1037f5ab1b0ce4ee2955a5f691954ddf5c19e`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e6d87a01005f8ed4f5bf8d6201973341ea9abd57f0fa145501416dd46714b1db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63475076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50f681c917d9f057fe0c4cad0e0016ab746294418a822a1ac7eadbd21ec64df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5bdbdeeffb7b29a91e6d886ab9b6cc41d4f84d594057885734b05710f9cf903`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 11.1 MB (11109935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72131d3391fc34884a7134b186d48509013cf962c3b1ac8ae4475ffed4d38586`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4ab63acd5e9e64b7b41c1cf6c8bcecd614339063052844d3d5050e4bf93db9`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5a6a0013ea40c96d46e4daaefb13d988511949fbbc7646162228f6942d6368`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 101.3 KB (101253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c5da5680ad0f83a3cb0e76cfaf824d4231f039402a43bbfb592198ac628c71`  
		Last Modified: Tue, 25 Aug 2026 00:56:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9ab8c9fd7e86e6eef946ebdd8700368ad6c1a26367f6544201daf868d27e5921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a50cb9e0062fce01e92afc2c2baa66e097c6b735302e28aa50c6a794c7324fc`

```dockerfile
```

-	Layers:
	-	`sha256:69d0fa87784592d621c64f0b6eeb3ab878ea8f9c6f860d5a74deedc8f49a1f0c`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2901dc5f7ec3adc9f9905b6b3757cd949a6071d1d6386f1126b38b3d38ab6b16`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 16.1 KB (16134 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c4db051361d46bc0c23e7268368f46b1f2f164830ea01ae620bdc31b91845b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adce4ff8d29856da035d71fe508666b82c8cac257d90f7b3101c14effeab66c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:51:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7072e62a6d4e449ac0df726896aafdaf13b77a88a028b25f91e356ad9f80611`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 11.5 MB (11502444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d757649f936df42263da41ee6afc02a10191445f56997d24f05d5b79fb2f1`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76471cbeee5d83a2ceccd7a91211531d73f88160cbe4062a1e818815afe9fbd2`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fdfe1792ce7ccacc30f06304a5be7b81712e1a22ef57208f582378cd68ef8`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 101.3 KB (101268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137b62f177ffb6436227e59ac961ef6151a1b4faaabc21a2cdd6313e77260db`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88c2674b5b6aab18a598642c31857a6f177faddc2bc12f5cd6d617474bfac84a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7989a2c3effaa8f3de7d2add9af0b47a47bf24fbdbdcc04560cfae80af5219d3`

```dockerfile
```

-	Layers:
	-	`sha256:67eb7f1b4cfa4b714a541cdc27564e5ccd1de389abdc9ce31ce98c0b5287ab95`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:276c2691ff11ddf8a3882b10eea0e7ee0ee1e9294c53966cf1411cc1f355d796`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120`

```console
$ docker pull neurodebian@sha256:e57ef3ca62439b4f7f731028b116410b261273fa257df846b8143bf7bc6f8d44
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
$ docker pull neurodebian@sha256:e3206419f33050d70032a892eef59fb8f6614900977ffbf7d48606e7eea7706e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59895909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65aed23edadfe120001df8cf9d91c1f257211ab3f32b4b5582831ff9a3aa4c4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:40:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ba3ede49b92af0b8bb15615e4e9b2584f413fe2f752ee8c401c0fb23d91d7c`  
		Last Modified: Thu, 05 Nov 2026 07:40:56 GMT  
		Size: 11.3 MB (11273842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d813c386337e324e486fecba81fceabcfc6f0813f85e2d811ac92322a6c927f`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 1.9 KB (1900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17e8d88d3ea208c91111824f45de2b3298e1bb599560d0bb3b1e9a24995d620`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e36d8f7abd3ce1bc9c670e9f9615465d349b6c3f6f0917aa943dcde91e60c1`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 93.4 KB (93410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:73e5a7abf76b24321b6a9db4d15f352826ac6695b80e37c746b6191e78508998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f69cb46811934dd04f69678b66d014dc5e82cfb0fe2a369606b6f76f215892`

```dockerfile
```

-	Layers:
	-	`sha256:78e9122ab416607556ea2b01bdb0b2e859e232391e57568e25f0f3c9c9ef9306`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 4.1 MB (4076041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70b9171bed42d71760071f080bd501eb6cf7b78ad4e719f3519887902967b0da`  
		Last Modified: Thu, 05 Nov 2026 07:40:55 GMT  
		Size: 14.0 KB (13964 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:13bd55d82e2347eea08be85c788697454e13eedfde7716f33ab42556b6af0578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8306f16fcc90e0cca80146b9471280b55a4aa3158bc3a07a4a2af34db2f4c153`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:44:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184b937b34ff72643cb9e1be71000f96d34bfa3df554c253d5c0382f4b9a3a4f`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 11.3 MB (11252896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478384fd40ae8ca5a459359423a57b54ad3a1fe73fc563f44af70c8a7ca13869`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6827d0bd1827ff315ea645345e84acb34e08626504a463722449059db54d80`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a9c52403ba99f8a4c54b2399c939fb5ad65de4faaf03ebe303e9ec16ddc800`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 93.6 KB (93594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a02d5de39db4d9a0998825709a4f43f7a5312301a6ec39ce3675d7a1064e1dcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588766d2f4996f1207824d5599a5dbae9fa22df1b266eaf91a11b75cbcca7cab`

```dockerfile
```

-	Layers:
	-	`sha256:3b79df702f9799d58fe062ca5b3727c300bc1aab0f33032c16e4a008ae24116f`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 4.1 MB (4076283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:313989bfaf4ae1d2d8b7b7d207075491a7248a4b5c42ef948c07cc6b5b99d319`  
		Last Modified: Thu, 05 Nov 2026 07:44:54 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; 386

```console
$ docker pull neurodebian@sha256:bdc22ad155fa405583292c59d119f786038c14a125d1b0df475c304eedfe33aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61305645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f18af248fb194093510d35e805461ebfa4b2fe7a555d4c562fb01cafdb82389`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4480e6407b5dade156d7cacfdfaa752b5e70afb347d4e5572fa70a172a1c5780`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 11.7 MB (11694353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c449948ab1c19270f2ab0274dd7fd825f061da9efca34234ab10cc0c144b133d`  
		Last Modified: Thu, 05 Nov 2026 07:41:54 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbe03523b1e58c79fdc7bbbc92efb899518c6d189bac07a32b19fe2a52d6552`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22641883b3fbda1f16a6b795453ca5d865c3c7a96860e94efcb0be97e5d0a85`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 93.4 KB (93426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:01e3f7348c396de26ad34f7df25a38655e84fc5f85853f8b181cb007fc93892e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e125ef566e3654b5225821e46c304443a22a69c9a6da01c4753a8696578bee`

```dockerfile
```

-	Layers:
	-	`sha256:89f0cdcd214e5d2c258113c889ae5ab50304934940289c0234b97aabef155856`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 4.1 MB (4074008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d2aad0ac3486ae5a9a03b85a250c668e8d73d959e89b2fd902c638bbb30b9b2`  
		Last Modified: Thu, 05 Nov 2026 07:41:55 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:e0d329a188218273f7e831b66c770d4a3bf81ab158118bf9d9622feafc579238
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
$ docker pull neurodebian@sha256:1e668e912522a108d60c3602a33882b7e845af8897ed4042f84121973163fd1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a213fd64bafaf2975c3e8b8e06579f38f5c671362374a36b6ccad22b9171993`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:40:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbac99e4ac2cf3bbadc4c7ff858020487a5a2faba5461670df24f811950b972`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 11.3 MB (11273826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308e63639489ccca261cec3512ee868ac1674a1e167294ec7611bc09d00e787b`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1934dd94465445855802b453c9779497b0aa950972e33a302220a32dae601d3d`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470bf179d4b92ccae73a1597eaa38d80ccd1663e2e8d54299fb9d7899e873797`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 93.4 KB (93417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3cc6e3c4da7a568fd52f45a098508b8a22c176f9425f68ae6450a73b6ab164`  
		Last Modified: Thu, 05 Nov 2026 07:41:03 GMT  
		Size: 453.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:61429c653dd9a3e37a52211a85f32c02b94b12d5a59a4dc03af48d985aa1ef2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492fabb1dd625f51493c36171aa52f4080818ff80fad29c2984090ef0f373c57`

```dockerfile
```

-	Layers:
	-	`sha256:44a87f243ce9a11709c701255e5f015cea9ebcf2d6b2cbc95c562b6579d29014`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 4.1 MB (4076077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aed2cb45a3434682ca6c658d1b0b2c9086bcd0d18a178a6a2e2110e96b64b52`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1ea6068d171d2e441541e43ac9c7eb740fa036bdcb8295bc804b69bb37583797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c11179eb3800d6c31df31e28bdf6f43f83b52ada93bd9a1a30d6665d2e8244`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:44:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74cb8f07d55e28fd1fffea133c49e1d932ded251a187e1841ebe801e38a9a8f`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 11.3 MB (11252975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d960620d01942c1453340e16679f508b1a04a3b2b8d52818e41cac62a6064c1`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7135a1715b8a8e63d1ffb5ee85f528aa4b61c6758f67f5788f26bd1018eb73c0`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5351569b2909bc9e490ccc9b55f7eb5660d67a2fb0496452bb9c9a6bca98f4a5`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 93.6 KB (93590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0f895bfc11bfb204cd58ed8dd27d9087b26967c6de989244f6ba057bd5b16c`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 453.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:858bcf5328415e65f74a66d6e70d7d0cb0ef33033eeb0cdcf64dc7bd55bae23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990b9b3c548a9c5fd47a6af2ddfd191b349c1cbe8def543ea8cfafa756a5a7e0`

```dockerfile
```

-	Layers:
	-	`sha256:96683b6c3778a2f1f84cce9e2094d4bc4f7b58638a7fb882fc5092618d710383`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 4.1 MB (4076319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7760068417e6bf9cd1ce23e4c6a9d25ae1890c8f9c5fad0225e9bde273904c69`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:38f687ff3fec8de0bcc4ed7035ace72af10463744e10beaf83e3e4e9b3809c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61306035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa6571d83518c9e4ef48591ad56081328378f643b12ca369f8d33c7b55c14cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c0c133ff29c2bdfc1002e5a0b8198424e1198133f84b69daf84ab82771afc1`  
		Last Modified: Thu, 05 Nov 2026 07:41:57 GMT  
		Size: 11.7 MB (11694282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0383210776a939ff37b5168c8dcc8e2167f29bda9430a65f775c795919e5d38`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ce89a9616e3ce0c57547092ca4f9c40e6a789cc89ebe9891f9211784be00e`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2900d6b2db4d445ab6ebf79eb8f699cd85ab3e25599795c1cd6cf842807bf7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 93.4 KB (93432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cb09bea34a4b952ba04365c1a3e6e6f353a74ca708186d9376577075cecca4`  
		Last Modified: Thu, 05 Nov 2026 07:41:57 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4802280e3628c0173f96d992a77e54efb7af305b4f0f0628c877848832074796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652511a6d3acd1b72131ecf12ae3d90027bd5232ea17bfe6a7f6732767f1481b`

```dockerfile
```

-	Layers:
	-	`sha256:9ed2056c5f1eb35a6c4dfcbec0c895158df68d12e134cba8285caa4a8fb76fb7`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 4.1 MB (4074044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:903870df4c7667496969ebbb5d724b693a6148978df9fdfa5824ee4aff7d7cf3`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130`

```console
$ docker pull neurodebian@sha256:4521313bfbf4b0dae3acd4e90b8fc5eb547d7df6b733dcfd89de1be8693e861b
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
$ docker pull neurodebian@sha256:595de98a61bc3a10105fa37f8230ced6be2924ea1b082b6d26376db4ee3ed314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59799960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d896af0f48a8e9dea38632738a4cb718c8cc570d4fecbc1796f296209b4b91`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24fc13655134322c0996718be0a5cac581aa89714abc65350d39b2465129ec3`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 10.3 MB (10294126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39bd95e3f175172ff738c788039fae7bd53b5a7d8abc4d0ee5ac762ed2b417`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1990b2e8394b14f4a17355800c292687040490ef8dae50ed025a62dcfa27974`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463a6b46c98cfa330b19ae2bac467cd36d4ebd4bbb2cc5abbc13734414763493`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 90.4 KB (90421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ab05577a7b3bc12e2c08b3529963a38babe7987c1147e4a82f942ff32028b4e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5381d3ba6e051a89c524b386d79b0a10fd20f73e61212bf616fd103958b9`

```dockerfile
```

-	Layers:
	-	`sha256:0fc0afe939212026cad89b81a0d914a3293d7d73c7f4d18eb72b99aaa92c252b`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3a63805892a02fe782bbb13515f30baf40bc0a90592e796bfc9fdefaba88bb0`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:65e976905d534185e5486a6e2d827e74bd93f8ea2fef842a742c249bbe13b44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59951553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24db7fb3397ed150cb4ae56b288a1222af54fc1849645719b7f4ae6a12d60c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9586e72c5cbc08b2ea68ab48770de717e3859d9a970123cbade10cada209ae`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 10.1 MB (10078943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef592238382ba05f22aad816ee181f5a307ec921e4accb3d8923f15ed9b524e`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdea2c75f82792f649bbc79d16385d34d4f06008c2dde9cae63fef7228b5669e`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f855e0489568369e2f2018d41700d1b770ec93522ad9bebeea314819a25cf95b`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 91.1 KB (91097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9986bcaa852c7bc7a1666712423892febd8d766208c09ee730b196b6c520fe7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e71d331b142b5f2f69e9337e34998b78e5c36f4572bbc9c9d383f99f0e90c85`

```dockerfile
```

-	Layers:
	-	`sha256:0f1716fbe999d458a32b32147267ccb8a86f80e1815107a96128013d00892c25`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:914b96899711c5d0b0583527e39d1de6d38f0ac23134a9e27118ec9e0ee1b631`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; 386

```console
$ docker pull neurodebian@sha256:b1063aac701b5271732a098b85d139b7ce48d678239f07aae6691a8b15e2f81a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4dc764216fa091d8acb22aa9a920d8c126ab35fb1e89029e4c4ed944742247`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262aade66fa34a7e47cec59830c6824ffb7b94baf12063e1e331dac407d26f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 10.5 MB (10468167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3146499573d8b6425094ed7d59f6eb31f40652a2c44166bdbcaeeef13d58a639`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d432c3309d7bc01fff1f993d893f13ec7a69e0869a0b9acd3a48e0124ae24c82`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1e59276ec2c43c864baca06f294d986a1dbea12ce9b947f155942a8b227106`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 90.8 KB (90802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a2444a7541c64b09a0751538b34c6b5b8a022e27b17aa565f7af2c9d695a0c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727a73ecb17fd2ecc120907717aca05bde57f40b614182e10521618001a15253`

```dockerfile
```

-	Layers:
	-	`sha256:5f476406e667c718f4a9e961aebaa3022155f2a52d0c1bc2da05922013e194dd`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ba93139273fa1a95db0e60efcc8a05084cf7a00a4b183f19f46d70b616456ca`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:8a622c9cea60ba3d7c9873469df5ff7521c6a8a347d7ff85df55524144eb3a8a
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
$ docker pull neurodebian@sha256:10d39dfd2c2d705e1a8aa4dbb9e55b424b97d0893855fb8089c4b09cc893f99d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59800479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d1c76e38a87c68d37908dd2330a01d41a6f277988c23036309f9413d9336af`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacf74772e373283c0de668e6c9a6ce083676a377322b052c4a9fbb1e00767bf`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 10.3 MB (10294220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ae512859af9cde93529684f341682a021dd5a50bcfce06d8e39a963b71815f`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c14ab3b6ff237423c683d819517d15c7d89ad8431e7ca5dfacb3fdb4dc75c0`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7677ca1bcafc0c3a4dd34ab157b0e23254ff158d81d6c9d59b39f91a03dce973`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 90.4 KB (90392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6b3df2ef0be2360f482d57be6d9fb789f9247196d6b0ff0127e85785b877c7`  
		Last Modified: Thu, 05 Nov 2026 07:41:18 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c7ffcf0daebbf1b5676e250e3656ef89d08e2eecf671e146f030e06169a0ee95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78eb55dae8ff2e42be26127af33a672520a1315b27d91293ea5aa21a19817ad4`

```dockerfile
```

-	Layers:
	-	`sha256:14dd139342fce0cc425c9e586abeef1a84aad823d8818e30bc75bfd9984bc953`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e58d119a4855bf617e45512540d9b29b138cd9f08a6ac5cc00c44d4866bc431`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8d1c3a55ede04d2ca56939574c804584dcdbf331977ffef80c6c07d2c56f887b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59952006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31814fa1ea4c0f1502fc33635a3d32d0d0a7a2f19d966ce16d2d78b26c716c08`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:58 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:03 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7f4d250b413c8cb6a70e22e45b0b2685f8f6d199a9c0b82e129744dddee263`  
		Last Modified: Thu, 05 Nov 2026 07:45:12 GMT  
		Size: 10.1 MB (10078987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3cdbfa02ec7886e08771d38b3ee71e601ce16b772372eec47438cc6d0b7404`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beeb468dcf86be2ccfe3b4006722d966e2b9187637293bc4b4e3d0a64da8d8a1`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f03a1cc770dadb27746e045e1bf76d4669417159a4f51cdff559e7fc370122d`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 91.1 KB (91060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee534c3796319f41660d28d1440a0a60602e75ceac6273f48b8da15bf41302e`  
		Last Modified: Thu, 05 Nov 2026 07:45:12 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d0aa89080f4a075a903b1bac61d071d0e9ff3881e7d8fb12cf055ad690167a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efb01f732ebb42bd9244c87175990617b9334468968d9122dfa4366ab47e89a`

```dockerfile
```

-	Layers:
	-	`sha256:5961615c6c69e16a4cecd459f8df2734c1d8753cfe9dea6478707e6538982870`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca426aa195bdaf7217bf3e8c2e481b88a1de20c834246b995fbe0de431d7fbd0`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:d1b90b16f1617d1d8c4453cc6a1fe92f966dd6237b49201f9f570002ac991a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7edb80a22d9973f7fa62283da2226d3963e1ef6e72f9991a8e2df5cad08141`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:15 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a94b6eef129ec71482d004fe90eeb924b7c7179e568f66e277cd049e6ce2023`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 10.5 MB (10468173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86f1a4d9fef56cd749a79f1556eb2230480913f31dab321d0928e936f213d70`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf3dde23270058fdfff784287ff2b5f86d8aacbd5e77151dfb1036bea84dab5`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d924b626f6aa4a3a900d1b3f6137f8f79ce1f30c73991f3091ce0dec912d52`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 90.8 KB (90781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13934fba82d1111daeffc1774e779856e2a64d52dcf85b9f3ea2956447100186`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f507390408b83f634b60180373d82f15b1fd7af423caf5c82be1ec434b1b6a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19496ed246b831ad538613100d4f8596ced10bdbcc8609562f1c6f48b0082775`

```dockerfile
```

-	Layers:
	-	`sha256:1c3e850d19133677754062e9c3f9e3f9b0d06c89602f70373c2e28299406eb05`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74c3b1cf805a766693cd3638ef5d23b6c124194cd18c801c4d3b695e423e2b37`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140`

```console
$ docker pull neurodebian@sha256:6b364551e5d85fb9c57a4311a288d777b88afd6d031bc6634e22d7b33f19eb78
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
$ docker pull neurodebian@sha256:500b75e6da54fff3f3c74010c35a1f2459df9942bb1dc7414e61cbdfbfac59a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61599575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cf0096a348d5306c353f8fd1c4101cea4fccf45d1452356895b7283fc56b8c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:41:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e27120031fdd696b2bee68d4a31e12e7c2066f717f24ccb86a96eaf107e0d7`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 11.7 MB (11668979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b19f6cfa328c68b367218e95caefccf2a9d02951dddabe212e15eb0ae29e57b`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36027519c438067e7bc6002f189d9675d0dcd53f82a880012b48cd09ca5795a7`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b40298f4535984a61f8cbf1000a476f5e98858ee7c6b3060cb56fb67c8149e`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 90.2 KB (90177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fc268c06a2553d0273e3a2cdda74144f588c87c61fed89fbde4b4379015b81fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abdf14e98372e98698c9a615492104c4cb43f545ce36fa5e496fec9a5ab0ad90`

```dockerfile
```

-	Layers:
	-	`sha256:210edaccb6954489315a22f8d42263cc17acb8db4ad1e0e5c89afcbc2371bd19`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 3.6 MB (3582580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3a2811e4d5f2e43b13a9f25c427e8233638b54cd8475b9e3ab2a60e278c43bc`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8be7b0b15a7032b86155c1068d73530cae59b724bfde284191688a5426e27f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60455789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bad94e8b0ec77f3d3e72a8a8d172e724e1a6a02f3fed2a092f737dea179006`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:45:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b43532f8491089efbdc4c387ab625de2f2a0c44e4fff4388306eeec17e395f`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 11.2 MB (11182012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427e44b21a28ae55358ba61d7c25e5d1daa7c002e5bb59c1b2b41653ddaf7def`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f71b24452832b265aa826f683416e8dcd21698e764e904ec01304676a990d43`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f9cdb154517230e22d231e5f8123e16b4b4251a72563665a80236b07ce6335`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 90.6 KB (90633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:74a33cfd5348421b43fb3b7429680b55f0f6d78d8b8623c74077188a7b696a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3600120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9a7a52788932e6c7b221dbceab009fc7e841e6f4a6bb857b75ff68502a846c`

```dockerfile
```

-	Layers:
	-	`sha256:0119b3d8c61288417530a0f428c0c4fe3881a31705907d9f53bcb5994903791d`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 3.6 MB (3586064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b358ac7a0771f6ca7f277074fbf004d0463f00459168f2abf3f7a295e9d1d29`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; 386

```console
$ docker pull neurodebian@sha256:a9a391aacf5ab7b7f2e6537ec04865947f199b5cf297c6aba6129b7a2f6bd08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62921930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34378f6f46411fda56f678a55c428e0ba9e70d4f2241a579dbc44fc7aa14fff4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:35 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8412af36a95e376639e916feb502fa1744ea99ff1af2614e29d951297b463d0`  
		Last Modified: Thu, 05 Nov 2026 07:42:46 GMT  
		Size: 11.9 MB (11857914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a9541c48b96b7729bd67d59b20993e24c0b36f2410d3b35762fe9bd72a5718`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fae6a2cf9bc848ec27add8fba31532e020dd7a2c3ecac6245c27891088bc9e6`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d297360a55ff9dcfedcafd053d05afab77c25ed97c15aa76f5305e34b029cd`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 90.4 KB (90410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9ebfb4a0904aa8ba53122dd444b2547585c9a377682284f0b96f293e1f29eadb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a75617d41fe3ce3dcec333108d4269721af56468ca407e7c1f7b40ebcf7494d`

```dockerfile
```

-	Layers:
	-	`sha256:a26bad8b324440788cdfed0f67b73173e122f751f479094c24f022f5f57ee9b4`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 3.6 MB (3580430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15b30ff4f647717dc7600ff3e2ea6c720dcee2b0742ef62e3ddaa5d6827e9613`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:86a364fc51911d8de196a34cd8f2c309eca59d7b9c465cb688ab9f9c188f8d3d
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
$ docker pull neurodebian@sha256:8b16b97d0fe07a49da64c7b03251836691c87b86aa681c80a00ead6a2c2cd4d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61599951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdca3ac9def4c48454df562ff25538c4cbcf4886963d69a88748d0b576b3dd2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:41:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21169b5281f1487dd82e67bd2d1cd8afda5ffa302731a007826833bceca16b95`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 11.7 MB (11668953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21d7a159575c112a649e8cd9029b757daf997ec8c74c172d87d0ba55da67a7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114401bff60970471e2c067cfb8e3404c6756902605f5fed34138898c2f64b3e`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32b2b8513a722620100f8a483c9a51cb2777e2ae216082b2daa79d51f66944d`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 90.1 KB (90129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12834aa2058b227d8c1fbe40d7f9a2d99fa7a3419936f2fb7d8121a63d5d44a`  
		Last Modified: Thu, 05 Nov 2026 07:41:28 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:304727bdbe6228bdb8eb8172a2e5c86fb48affc8e2051e52518ffe58de5615ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4926db0ecac020c1489ee050119d3898eedd31d97462d1c3622a7f6dcb634497`

```dockerfile
```

-	Layers:
	-	`sha256:3dc5e6af55707809d421534f7d13341be07ee9caf0556bf8d0e2b13917e999ba`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 3.6 MB (3582616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88c540fc1c540311dffd18e3c76d4302d4b831957ff1d8f4d49c3dcc4e6c3e5c`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:6621c413ceddade54be7c8df7ea39841e3a0785f82472cf22ff926ea59853b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60456124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281096feaea9581816418d98368b0625f421c8518193911cc7c8e7e0bc03d744`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:45:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:17 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7d1de40788a2a135f40e25c55ed5e8f0f419048798e01ae3d978966ff54ab1`  
		Last Modified: Thu, 05 Nov 2026 07:45:26 GMT  
		Size: 11.2 MB (11181910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622da755998a2cfd15b77a874b15e410bbbc5664891646499597e1c8eda7121a`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0882aef170b4bca958fca8579f486d1c49962a9b7fce597c71a82a9da79fc7b`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54784c9c3b700e4863c161b580922447e1b1b0670fbfad0d638a564a349a3a23`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 90.6 KB (90624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d857ef1b52800b766cdebf4ee736ca8e7c6b56d6003f7d18fd1d2960b35e4918`  
		Last Modified: Thu, 05 Nov 2026 07:45:26 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d9d16840493bf6a15cd91f5dcacbf6cae96043bc111e23163b4f6d50b3f42461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00222af746d15ebb8b4c931b4c02f7abea7be2c82329f375200b873f17f49725`

```dockerfile
```

-	Layers:
	-	`sha256:d029e8b64737267a5d1c23f2f5c0c0fa7610953eb9ccbf3805acef0c7ca15b47`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 3.6 MB (3586100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ccbc691b301c565be21afbeca0c6315d63a71a78cb283e18017e7043a34887d`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:66a90b3865b5db0048bfdb6fb4d1d807dff5523c827773f47330c7c2ce2f0195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62922351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60719530f446f4455b7d07b35ecdd3f7a4e2ebe0889d7624f3e5509af4c81278`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:37 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:37 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:37 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:41 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f19baa15d41000f5e008e29c3d072266644f0c955680016631509838745d7b6`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 11.9 MB (11857877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cee484e2d6bc0be402dbb7fdb6594e28b7b7611363d9d0dae579dbb2b8bd45`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ac8188e5aff4a0c77b341d86bc534963fc94fab23c305c80e6cb42b1bf5cf6`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17b0ff1451d7b398b7e996cbe64466138ddf81f3735c8235c99d2b797fa4ac9`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 90.4 KB (90420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff681eaa2c4703191f5260889ffc83bb46b80657078271c82850aa3371ee0ac6`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3b50d648b88becb2f8216b421b5d898dd8195de5f82152a4a58179c22e6f7624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:494a78f3e30058cc72cf80446639f101bcc009943c3497a2c5995e1f04db7170`

```dockerfile
```

-	Layers:
	-	`sha256:2d091363622ce768d60f2645bee186ce01cdbe52ae1d6652cded4807c0ff4aef`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 3.6 MB (3580466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1131e44b36ad5ea393c8081496c8a6e6b38bf9262c3fd6a1e714fdb5af3666f`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04`

```console
$ docker pull neurodebian@sha256:093e714134c4a929da2c7ee44c4108fad74bbd41fe7f2caffd17b63b5015be54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:b8298eb2e82180416ded835e04758ef5a5d04556d133b876e071f9b76d2f2781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33808560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e5c5a58a881385db6ffaec5ead4a8848c232f4eeccbcd9c090615f3e4748cdf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52843f65f83338c773d47abc52bfc0f36e09f59cbd3ee1d74fcf3c03dd018ea3`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 3.6 MB (3625090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7178981b1c34569eb4ed235f96cccc26c7d0bb86ac101190a472197975f854`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c8fe6c662634af44914b2ee34e7b16811eb1120b33a5a4336887aae84fdbe0`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff74a5797efb5b940edf991bf9a9d8d36569640079b59474d937424b7dd0833`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 111.8 KB (111758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:009f55cc03177116135854359d2ebd625f2f881b45b79e18acca664a19ba5df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f596dfb9658cfe26032de75959d0c9dc40f9897a596a6504805110611b585c09`

```dockerfile
```

-	Layers:
	-	`sha256:7cd66fb39584fd6064069f71c21306dd8f4cf8b5524185fb16e6ea76d1abd67b`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 2.2 MB (2199012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901b23adb3e776962abfd73609cca7db38777f148d5643fa90ecfca2be5f480`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f68c615d1dbbc73d2a53327b30337e72d625cfea87e67f1f29f918f33d82450a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31724650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81553760940d8f639cdced2c11773650a5e3f6ce2aa50956ac5ebac377ed95f4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:35:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:35:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1697d905c78a17b80b8acf33a219d34559d597e55c50e2e2de2214cac69c9f0`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 3.6 MB (3609265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819649570bf36e72c4d66a4d58079b0793a849f98c3173bf29823f8567d3ce1a`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338a05d9210fa9aea015ba577f31557cc58360a774d05aee77da89068a247d23`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0c6b80f5b659736ca0c1e09b12da343b2a631ce801ecac435a49fd722ce196`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 111.8 KB (111797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:153b1e1df73b13fb9a49febaeac0d31b622d1a716dc19dac0937265995c9ff92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2213330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fa0eb8443110c3204cc7ac8922c67c8c12eace224b19345135f284ae554d1e`

```dockerfile
```

-	Layers:
	-	`sha256:dd46673b130f2b81541e382a5f030136a5923457d220bf1d79b37319f4076fa1`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 2.2 MB (2199272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d61de28ee11b5438390eb2a6e09c7b862dc2b103ea020e2432f5504722fe8f99`  
		Last Modified: Wed, 11 Nov 2026 23:35:13 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04-non-free`

```console
$ docker pull neurodebian@sha256:04bd862a108259c731f590a0281b6bee74fd0d0abc1e5cb7ddc690bf8ed2c853
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4c3d9ba4255b0c83961ff001609b6de99256f83b17c4b91380bb01a53a24fda5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33808878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13f71e9c7cf89cf9372b51f77940388d503fa6db24de68bfc2e98f3f3654626`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97243f9bb3ed70bbb336e77336a06c0a43223345476672dfa0bfea340e83efc`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 3.6 MB (3625126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85168820ad8c9c73444a19c5b51ea70e8c25f642a5a0f496335aa8fbbf2924ce`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d9ae678c01254c66f62f89270520b7764e5a31fc816f558414604bebe9ecc1`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e87e05ea693664d7024beafff64c3d0e36d2340dde45b550e45ff5999e8bb5`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 111.8 KB (111757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521bdfb321ed71b1c347ddbacda16d57c612d7defeed35a12bd966a5e855c6d9`  
		Last Modified: Wed, 11 Nov 2026 23:31:18 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0c71055a4f6090d0b1e4a74ad3f6f609918da8fac405434ef2959f24043bd441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de32f33b20065a6aaf9e13abfc9199b86affd16f4a3bff3fd0830e13a5634415`

```dockerfile
```

-	Layers:
	-	`sha256:b481ff5cba1502262f5afa4eda596ba198b6fe7d035cc0e0b463e3180f645bd7`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 2.2 MB (2199048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5302f4ac624b27f2368c99361ef243dacbb2e402d562008212479a61ac49b5f3`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a8e781087ae19d3f20dc92288cbc250271f4bceec0657bfbff985ffa047594fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31725004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f61d5528f49212fe3d58dc27a88b23b587faeca5c2da5242355f1858e8ae6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:34:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29ab94fbfa8a90c048420f7647bcc9d236e934887841920fed0c43c8c4571bb`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 3.6 MB (3609329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6291b32a36825cbc56c8fc9ed25063e6b1c083612c309968b088ac864211d8a6`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281e8f894a157be0535f2cb49c6545ba80c2c54049da975f476c726e304d5b9`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3379f26cf704b44d56beb3b4f502e5ff5db1b62be36430f4c024a0943edf8a3`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 111.8 KB (111804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf4a967e16e19413344e3bb09318dc5ee7525a2c6092613def74b94f8dc049e`  
		Last Modified: Wed, 11 Nov 2026 23:35:10 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:cd95d6bcee5056c5012b1e1693639c2520b8df01058af763566c286af9b27079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739387f8cf4f8e078d124678f102dffd34bb0a1edadbf2dfa02ad51814078958`

```dockerfile
```

-	Layers:
	-	`sha256:2f599c3682f90797d561523af55590b49203ccbb7ed8c576233018e64af73af4`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 2.2 MB (2199308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28b010f1f1722750e610152ec4c9125570d4c78d01e4ebf49bb879976febf6af`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04`

```console
$ docker pull neurodebian@sha256:fa79436f9dc29a5a7fe50e1028efb9aacce5c3d76dd358b5eb1f662f1dbeb4a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:b23c5fe82a3264d4f6b8f5de5048bf82fd55b757095b9c5a17ec56bb493ab992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964ba745706ea0eaea2c685796f82ed0e848e8a2a132423c5139050c66b94cb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc332cf245e97491321aba77242d8fee8ea9a0a434fe4bbd9653df3c0ae153`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 3.6 MB (3565897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b28d1c04d11c90098340b90785fccc7e9c57105b2d576102f405c94375a208`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c185845ceecc718268978adcd7ef7090b873a6d4f6d9b59e3258d75f760f599e`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb426fe23f2bd154dbd6c18bc35088367e24398cfd234d83396929dc1c02af33`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 105.0 KB (105011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5c4c77cd5870ac365f5f51016cc231c1b3aa35740db4b4ace9e82cf2d9616f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df0ff7c42f06f6444a3fd39a39571e9dcfac2ebf76408c9eb14083769570c41`

```dockerfile
```

-	Layers:
	-	`sha256:bb0cb0bf0551842555fb1dd18f32b36e4aab84b2ee76a420d059f58f0cbf7a49`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 2.1 MB (2121567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31d60ee1ddc2a7aab6102cbfd0a8f63d98859e81e94cb2dacba994f0e17786f2`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:70cec667acc6fda8d78d5ba4d91c6a56ca6e0ce65cd2fb5976e74381e95d5a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ae2b17d635d0418f1027e5b0c807d6594eee75e3177e8f37307d96535e8ca5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:35:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:00 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:35:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b24e332838dbe0512b5f9042998e67630ba0665976d5a74ed8674f85794cc08`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 3.6 MB (3564294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af81a4d61051ac49d9ae1bd8936c1dd4eba0f8ab13d43d97fb2aaaa493944cd`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60b8248e22f036cbc80c16f0267bfc2f0cdef39f8d30c7e1bc1907cc0646ad8`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74db6a7139c4d64fef915b74d884a291f5cb50550cd95b97d8b749496c53def`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 105.9 KB (105906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:27932932eb303b531f4a3efb7f01ca62c9f1300badd13f44e9f0ec553947637a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38ce9c5a8104fdb02fbe133bae29784b1e4431e8d981c40a68b6b1f634376f1`

```dockerfile
```

-	Layers:
	-	`sha256:b1c0ebb0cc791be0ed86ca12afb41c3d910e60e0eacac64cad216669f014ca02`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 2.1 MB (2122612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f34dc636b1bc6fb8773097f5f9e745324b58f40c854dca561c73360517ab14c5`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04-non-free`

```console
$ docker pull neurodebian@sha256:c14d4f4fb0325a9741efe16c40c3539c376d1a3fbb1981942f3f5133b5dfef5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:80deef094768496e57fcab36f3c79979ea4800b2d4fe9f01bc969ef49ae08bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c0135f2b2ebe33309ac98bbeb9c91c7365fa3b347a1c47323bf37f9932e2f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc332cf245e97491321aba77242d8fee8ea9a0a434fe4bbd9653df3c0ae153`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 3.6 MB (3565897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b28d1c04d11c90098340b90785fccc7e9c57105b2d576102f405c94375a208`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c185845ceecc718268978adcd7ef7090b873a6d4f6d9b59e3258d75f760f599e`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb426fe23f2bd154dbd6c18bc35088367e24398cfd234d83396929dc1c02af33`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 105.0 KB (105011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d93f13fef9fcc67aa1eee6d0a5a598151b84a6e74a381ce38ce5ee0584032af`  
		Last Modified: Wed, 11 Nov 2026 23:31:26 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a37292ce86acbda8775c5be896651ba4e7552b1a084c4fe2c1df50fba50278d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b728db8efbe1c9cf53995fa0c8e819f4aa7d852d318b5fd1998aead765fb1730`

```dockerfile
```

-	Layers:
	-	`sha256:18c2b52a3e75361dd7697c7a7dbead09f4ccd741f2da9632d1fdec72116b2c57`  
		Last Modified: Wed, 11 Nov 2026 23:31:26 GMT  
		Size: 2.1 MB (2121603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:566fb6f126f37f040a774905ad6cacf78532862c938265412067e62314d9b0c1`  
		Last Modified: Wed, 11 Nov 2026 23:31:26 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e87ad3dceb8e66181209e6949a14b24ab6110972d3031421b0c585f2cbe5a86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073b9416744746290f5c8cf87107c57f89d1b28b0b972b043ad4389444162bc4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:35:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:35:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c524806b4afa10e99ac6a356737fd9e8bb7b3a59f50a846eb4dfd128eba11d`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 3.6 MB (3564174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aef3b6afe3644eaab56623dd8d152a134ed6ccf5ac71eeb75ab03f0b069dee2`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a261ab71aa52bee6283d47a2e8f31937a4fd5585ee6a25e2cf83dcc0fbe190da`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e164a4d10eeafed4db8672e6d423a597a6a02ec9b1f2f75920522927263a97`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 105.8 KB (105849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4882aba557d97e77d3eddce443c0ed200bc968d5071a7de66478edac32eb24f2`  
		Last Modified: Wed, 11 Nov 2026 23:35:29 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f96728f878c540eab68e466f946cdbc588fd3f084ca487b4c64daadb12c269a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded4601cfd284354184264e96bfab079fa70e5ad9aa79aeab95b0908606661d1`

```dockerfile
```

-	Layers:
	-	`sha256:d693f38d1789d3879f0027800086530f5d2065307a26b6fe93e68d697d12be91`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 2.1 MB (2122648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f38b8b2dc3c59eb31752bcb76b134494d330383fc128e5850110ddbc9c84aa9`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:fa79436f9dc29a5a7fe50e1028efb9aacce5c3d76dd358b5eb1f662f1dbeb4a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:b23c5fe82a3264d4f6b8f5de5048bf82fd55b757095b9c5a17ec56bb493ab992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964ba745706ea0eaea2c685796f82ed0e848e8a2a132423c5139050c66b94cb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc332cf245e97491321aba77242d8fee8ea9a0a434fe4bbd9653df3c0ae153`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 3.6 MB (3565897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b28d1c04d11c90098340b90785fccc7e9c57105b2d576102f405c94375a208`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c185845ceecc718268978adcd7ef7090b873a6d4f6d9b59e3258d75f760f599e`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb426fe23f2bd154dbd6c18bc35088367e24398cfd234d83396929dc1c02af33`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 105.0 KB (105011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5c4c77cd5870ac365f5f51016cc231c1b3aa35740db4b4ace9e82cf2d9616f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df0ff7c42f06f6444a3fd39a39571e9dcfac2ebf76408c9eb14083769570c41`

```dockerfile
```

-	Layers:
	-	`sha256:bb0cb0bf0551842555fb1dd18f32b36e4aab84b2ee76a420d059f58f0cbf7a49`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 2.1 MB (2121567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31d60ee1ddc2a7aab6102cbfd0a8f63d98859e81e94cb2dacba994f0e17786f2`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:70cec667acc6fda8d78d5ba4d91c6a56ca6e0ce65cd2fb5976e74381e95d5a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ae2b17d635d0418f1027e5b0c807d6594eee75e3177e8f37307d96535e8ca5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:35:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:00 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:35:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b24e332838dbe0512b5f9042998e67630ba0665976d5a74ed8674f85794cc08`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 3.6 MB (3564294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af81a4d61051ac49d9ae1bd8936c1dd4eba0f8ab13d43d97fb2aaaa493944cd`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60b8248e22f036cbc80c16f0267bfc2f0cdef39f8d30c7e1bc1907cc0646ad8`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74db6a7139c4d64fef915b74d884a291f5cb50550cd95b97d8b749496c53def`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 105.9 KB (105906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:27932932eb303b531f4a3efb7f01ca62c9f1300badd13f44e9f0ec553947637a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38ce9c5a8104fdb02fbe133bae29784b1e4431e8d981c40a68b6b1f634376f1`

```dockerfile
```

-	Layers:
	-	`sha256:b1c0ebb0cc791be0ed86ca12afb41c3d910e60e0eacac64cad216669f014ca02`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 2.1 MB (2122612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f34dc636b1bc6fb8773097f5f9e745324b58f40c854dca561c73360517ab14c5`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:c14d4f4fb0325a9741efe16c40c3539c376d1a3fbb1981942f3f5133b5dfef5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:80deef094768496e57fcab36f3c79979ea4800b2d4fe9f01bc969ef49ae08bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c0135f2b2ebe33309ac98bbeb9c91c7365fa3b347a1c47323bf37f9932e2f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc332cf245e97491321aba77242d8fee8ea9a0a434fe4bbd9653df3c0ae153`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 3.6 MB (3565897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b28d1c04d11c90098340b90785fccc7e9c57105b2d576102f405c94375a208`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c185845ceecc718268978adcd7ef7090b873a6d4f6d9b59e3258d75f760f599e`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb426fe23f2bd154dbd6c18bc35088367e24398cfd234d83396929dc1c02af33`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 105.0 KB (105011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d93f13fef9fcc67aa1eee6d0a5a598151b84a6e74a381ce38ce5ee0584032af`  
		Last Modified: Wed, 11 Nov 2026 23:31:26 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a37292ce86acbda8775c5be896651ba4e7552b1a084c4fe2c1df50fba50278d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b728db8efbe1c9cf53995fa0c8e819f4aa7d852d318b5fd1998aead765fb1730`

```dockerfile
```

-	Layers:
	-	`sha256:18c2b52a3e75361dd7697c7a7dbead09f4ccd741f2da9632d1fdec72116b2c57`  
		Last Modified: Wed, 11 Nov 2026 23:31:26 GMT  
		Size: 2.1 MB (2121603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:566fb6f126f37f040a774905ad6cacf78532862c938265412067e62314d9b0c1`  
		Last Modified: Wed, 11 Nov 2026 23:31:26 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e87ad3dceb8e66181209e6949a14b24ab6110972d3031421b0c585f2cbe5a86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073b9416744746290f5c8cf87107c57f89d1b28b0b972b043ad4389444162bc4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:35:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:35:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c524806b4afa10e99ac6a356737fd9e8bb7b3a59f50a846eb4dfd128eba11d`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 3.6 MB (3564174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aef3b6afe3644eaab56623dd8d152a134ed6ccf5ac71eeb75ab03f0b069dee2`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a261ab71aa52bee6283d47a2e8f31937a4fd5585ee6a25e2cf83dcc0fbe190da`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e164a4d10eeafed4db8672e6d423a597a6a02ec9b1f2f75920522927263a97`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 105.8 KB (105849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4882aba557d97e77d3eddce443c0ed200bc968d5071a7de66478edac32eb24f2`  
		Last Modified: Wed, 11 Nov 2026 23:35:29 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f96728f878c540eab68e466f946cdbc588fd3f084ca487b4c64daadb12c269a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded4601cfd284354184264e96bfab079fa70e5ad9aa79aeab95b0908606661d1`

```dockerfile
```

-	Layers:
	-	`sha256:d693f38d1789d3879f0027800086530f5d2065307a26b6fe93e68d697d12be91`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 2.1 MB (2122648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f38b8b2dc3c59eb31752bcb76b134494d330383fc128e5850110ddbc9c84aa9`  
		Last Modified: Wed, 11 Nov 2026 23:35:28 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:8a622c9cea60ba3d7c9873469df5ff7521c6a8a347d7ff85df55524144eb3a8a
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
$ docker pull neurodebian@sha256:10d39dfd2c2d705e1a8aa4dbb9e55b424b97d0893855fb8089c4b09cc893f99d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59800479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d1c76e38a87c68d37908dd2330a01d41a6f277988c23036309f9413d9336af`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacf74772e373283c0de668e6c9a6ce083676a377322b052c4a9fbb1e00767bf`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 10.3 MB (10294220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ae512859af9cde93529684f341682a021dd5a50bcfce06d8e39a963b71815f`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c14ab3b6ff237423c683d819517d15c7d89ad8431e7ca5dfacb3fdb4dc75c0`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7677ca1bcafc0c3a4dd34ab157b0e23254ff158d81d6c9d59b39f91a03dce973`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 90.4 KB (90392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6b3df2ef0be2360f482d57be6d9fb789f9247196d6b0ff0127e85785b877c7`  
		Last Modified: Thu, 05 Nov 2026 07:41:18 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c7ffcf0daebbf1b5676e250e3656ef89d08e2eecf671e146f030e06169a0ee95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78eb55dae8ff2e42be26127af33a672520a1315b27d91293ea5aa21a19817ad4`

```dockerfile
```

-	Layers:
	-	`sha256:14dd139342fce0cc425c9e586abeef1a84aad823d8818e30bc75bfd9984bc953`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e58d119a4855bf617e45512540d9b29b138cd9f08a6ac5cc00c44d4866bc431`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8d1c3a55ede04d2ca56939574c804584dcdbf331977ffef80c6c07d2c56f887b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59952006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31814fa1ea4c0f1502fc33635a3d32d0d0a7a2f19d966ce16d2d78b26c716c08`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:58 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:03 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7f4d250b413c8cb6a70e22e45b0b2685f8f6d199a9c0b82e129744dddee263`  
		Last Modified: Thu, 05 Nov 2026 07:45:12 GMT  
		Size: 10.1 MB (10078987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3cdbfa02ec7886e08771d38b3ee71e601ce16b772372eec47438cc6d0b7404`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beeb468dcf86be2ccfe3b4006722d966e2b9187637293bc4b4e3d0a64da8d8a1`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f03a1cc770dadb27746e045e1bf76d4669417159a4f51cdff559e7fc370122d`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 91.1 KB (91060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee534c3796319f41660d28d1440a0a60602e75ceac6273f48b8da15bf41302e`  
		Last Modified: Thu, 05 Nov 2026 07:45:12 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d0aa89080f4a075a903b1bac61d071d0e9ff3881e7d8fb12cf055ad690167a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efb01f732ebb42bd9244c87175990617b9334468968d9122dfa4366ab47e89a`

```dockerfile
```

-	Layers:
	-	`sha256:5961615c6c69e16a4cecd459f8df2734c1d8753cfe9dea6478707e6538982870`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca426aa195bdaf7217bf3e8c2e481b88a1de20c834246b995fbe0de431d7fbd0`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:d1b90b16f1617d1d8c4453cc6a1fe92f966dd6237b49201f9f570002ac991a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7edb80a22d9973f7fa62283da2226d3963e1ef6e72f9991a8e2df5cad08141`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:15 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a94b6eef129ec71482d004fe90eeb924b7c7179e568f66e277cd049e6ce2023`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 10.5 MB (10468173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86f1a4d9fef56cd749a79f1556eb2230480913f31dab321d0928e936f213d70`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf3dde23270058fdfff784287ff2b5f86d8aacbd5e77151dfb1036bea84dab5`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d924b626f6aa4a3a900d1b3f6137f8f79ce1f30c73991f3091ce0dec912d52`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 90.8 KB (90781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13934fba82d1111daeffc1774e779856e2a64d52dcf85b9f3ea2956447100186`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f507390408b83f634b60180373d82f15b1fd7af423caf5c82be1ec434b1b6a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19496ed246b831ad538613100d4f8596ced10bdbcc8609562f1c6f48b0082775`

```dockerfile
```

-	Layers:
	-	`sha256:1c3e850d19133677754062e9c3f9e3f9b0d06c89602f70373c2e28299406eb05`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74c3b1cf805a766693cd3638ef5d23b6c124194cd18c801c4d3b695e423e2b37`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:4794e7257a632afa31e577231ec65129de80621153c16d046e034a6cf20b4f0d
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
$ docker pull neurodebian@sha256:54ddfad5a306afcfe1f856b13a6d59b7df1530eca02c9072f1e5b534f3f3932a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62541253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17f452f35b74579529315cd43e945aa8ebbb35eeeadb93cb754e8e1a20792c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffa043ec9022f8a678eb7643ce937857673728489e3e36f59b278cc4f7d46d64`  
		Last Modified: Thu, 05 Nov 2026 07:41:28 GMT  
		Size: 11.7 MB (11721208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21d7a159575c112a649e8cd9029b757daf997ec8c74c172d87d0ba55da67a7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52396bd84361bab98c1160016e6c3c88b8152d341f0a7428283010b08b94e380`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a51460d471891ec84dc7bd1a6e18ae652130fd5756eb6713265bc429f87fdc`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 90.4 KB (90378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c20778996dc0e1a02f55c093a68501bc909a6d82ea9c3219838054ea8a51d3b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ac5f626dee307ed903814b40a34f4f3f3f52eeff546e8b63d18729de67b131`

```dockerfile
```

-	Layers:
	-	`sha256:484ba5bef08be36e0c0850d723d8be4c092267fad028952d8878cd7e359f9848`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 3.6 MB (3587904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cf9ccb3d25c5f4d645acd7dcd8fd0724c8532f86450d68d0e857be2eb7993a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1cfabda8e73345b6b764b47e6c90b4ba1d5b7bdaff567e3d124c2a69aabcfc64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61153826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23cc494569503feea0da0eff24cb59b760f83b7c6a8c130c5d0bf8f1a29bbcb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:45:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82393be0bb77fdb23d62e842a363baa57910f7a12355553c055bcfbe63e8ee69`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 11.2 MB (11193540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bc58bd0a29cb7d8a9b97f52f14ea7fca355a28b8b6652c905320d989bf0fc6`  
		Last Modified: Thu, 05 Nov 2026 07:45:31 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4644ddebb343b3eead6c94c69dfeb683300bd2973aedba69d954bf487cc3aacd`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551e3627675c0a3b03d60588fdb397b241592860690ec3103329d4c8f83ca3c7`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 90.9 KB (90918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8267a00decbf7b77f33179bf7b47de4f4af9a9838d1b8a39c899994c9e18f2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3605418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57785897f60d76b39472a30481e56ec8bf59e7d679315f5d6cbe06009d33f4a1`

```dockerfile
```

-	Layers:
	-	`sha256:7f53a71b6c5fe1156c9069f70e5b83b49016867758d29b0290738c86ca31af27`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 3.6 MB (3591390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa9d061a641cda2402df247d3afb65d18b2305b1e8511b4bda8f1d5adc54d53b`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 14.0 KB (14028 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:b1555ceac5b379e448c96c9af3078fd8afe2682f34991c9fe6ca577b230623d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63785091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e18167d5652d5179ecfad2cd149de14d53f0678126cf7aaad5cd4c063aa459a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:42:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:43:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333adb2d27d8e7d16023726fccac60faa9452ed2698f163d9a7f72d9327b646a`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 11.9 MB (11903104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41fd649931b3611d5ac6cd88b7b4e61dffbdb0becb4e5f770998338e9d64634`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c42ab8b6bb28c0e762d41f090ad5dc731cd7b668797f970de2228e9f01e8243`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb270f40b783b13ff054b3e29c8d0b313a1c0c31c7ffd6a80628e18d6ad5a600`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 90.8 KB (90757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6bcdfe685f34f306b85fe7ab8449531141e7734afb043572012f575607a0a92e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3599624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd07eeb51d74655cdc5d985ee3406ceb9dc45f30775f4e2b23fb955e53a2b1e`

```dockerfile
```

-	Layers:
	-	`sha256:acf24ae0e842c679fd56d388a611dec0a80e36e460d73c9deb4acf9e7f7b1679`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 3.6 MB (3585750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e1af752ce09c9e12748b635e08cf113263ea1a744c085097c97987bfd8bc067`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:ef08c540f144e332d97af5ed0872ed6a09c719bcfac3261e8ceea0cfc9d30452
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
$ docker pull neurodebian@sha256:5b95ebaa48aedb1c5bc24098760ebd056f27ee7df09ad08b4c60098449bff567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62541736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82a3166c960c83f9c5772f146666f2b9e23c538f1e04be58c79e0c7654d3416`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:21 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:24 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e41ca15c7c328375e097344d0314d91fc2995bbf924c5f2d0746c51140dd8`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 11.7 MB (11721270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cbebcba3cc8be5d9759f7e190f5fe811e57a3d793f434da600a8c79b4f9139`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28877c61a3212989223d642ba740a0d9bea7c14fc5e58fc811785e0587bda97a`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5d1cf06fd328434105d6184861a235e28262727dc5833ee8fb33123a472900`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 90.4 KB (90381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79342d37b01b0b0c2599547851a6d46a58a70c8f43ffabfb5419cef9ea754a3e`  
		Last Modified: Thu, 05 Nov 2026 07:41:32 GMT  
		Size: 422.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7cc9e7910280aabaa49a4a95f0b3c9ed93685ea0959a2c3aad203468d951073d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3603871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4658fc995dfdba1c1d73baf16a2e86ec9cea94e905742157cd46feeea371a3fd`

```dockerfile
```

-	Layers:
	-	`sha256:8c004f4467050bd9642ecb47e725091c5e2f68de8d75a19956a0f808672a6320`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 3.6 MB (3587940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1e894f256da67b76fd8511cf882e1896aa6ad24730b3233d16d07d599eeff0b`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:082f152b3cb6176d57c9824790dd1574f206523355c482c7b8f29dff5bfbf352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61154271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cc66b7b040aa7eb0d33896c1c88a9cc1fd9f8b2cc2dc9a091ffe5b9b0f9e3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:45:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:21 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:25 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1bfcb184e5aaac1584836866cecf88d72442c0941a6c318670b28dc48de97e`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 11.2 MB (11193557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb315aca60a592f0f921f5429034a426848ee32669bbdc3f9cfc2f948f597e08`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df1b543e6eba61aa120ef98c53a527d37490f2613145acc9795d59c35093f7a`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169ea84264051c77bbcb0bb0a9c0326ed6e65dd4ae1c66db8d0f2f03b78f7314`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 90.9 KB (90922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20757628b6f27344b7daefbdcf0c54bc3475bd771078c72cd3cc26e03874f2b`  
		Last Modified: Thu, 05 Nov 2026 07:45:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:011cd8534175b90d57ff294bc42b7436a3a65f861ef82b96a89fec67571ee359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3607497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95ae63fb68ae0061370731fccc4a7050470f303efeead4011ab41572b82d43e`

```dockerfile
```

-	Layers:
	-	`sha256:8324e902cd535e2a1927fb0f522f6a697b6d539e5041cf059ebfcf04e99438f3`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 3.6 MB (3591426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0584cd2f2f9553e91f1240e64a7c7af6302f642561e255c21c027d24a110aae6`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:eb1b8657e0b444956a26e16f62b369f90e16a0c1cef81a88fc211f689f09b113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63785446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88355c00ef8f80a7127e704bc9bd847b83196b82196b2d2942a0c5a2cd6c7d38`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:43:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:43:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:43:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bd8fc96f2c1b6a45d0596f30901d010ec99c7d724ff87ba1afe7cb6893a773`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 11.9 MB (11903045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af0600053c67288da88b52f8f6e3f49221b1dd83db0464b5e95316c45c09199`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd83f17483b5cd87e227e5ad9950c041acc4929c1d77e889c37cf76e799bbfd`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14c2bcefa4bbad8aa0db46ffc9590834e4dd400eabb8ea36f79b0cdf80397d0`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 90.7 KB (90746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ff5c4691d76a437b4083668369a2ec84f017fe5722031da9f24cb391fc9377`  
		Last Modified: Thu, 05 Nov 2026 07:43:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:42e39762024891f20f7aeba31fa10c60e3a350560c8b3df2f669c105d1b45065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb9e10879157876753b28ab345f1c4ba92e862657ac8e39b19eb05271622900`

```dockerfile
```

-	Layers:
	-	`sha256:9a7da46ded39598a4b925fb89fe46c0cf9020f10ec7c2fdeb7e338fc11bf570d`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 3.6 MB (3585786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:957696359bee5db97a804393e678c805ed2f0ea0bbc2caf9158c035848edfcb0`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:4521313bfbf4b0dae3acd4e90b8fc5eb547d7df6b733dcfd89de1be8693e861b
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
$ docker pull neurodebian@sha256:595de98a61bc3a10105fa37f8230ced6be2924ea1b082b6d26376db4ee3ed314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59799960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d896af0f48a8e9dea38632738a4cb718c8cc570d4fecbc1796f296209b4b91`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24fc13655134322c0996718be0a5cac581aa89714abc65350d39b2465129ec3`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 10.3 MB (10294126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39bd95e3f175172ff738c788039fae7bd53b5a7d8abc4d0ee5ac762ed2b417`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1990b2e8394b14f4a17355800c292687040490ef8dae50ed025a62dcfa27974`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463a6b46c98cfa330b19ae2bac467cd36d4ebd4bbb2cc5abbc13734414763493`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 90.4 KB (90421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ab05577a7b3bc12e2c08b3529963a38babe7987c1147e4a82f942ff32028b4e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5381d3ba6e051a89c524b386d79b0a10fd20f73e61212bf616fd103958b9`

```dockerfile
```

-	Layers:
	-	`sha256:0fc0afe939212026cad89b81a0d914a3293d7d73c7f4d18eb72b99aaa92c252b`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3a63805892a02fe782bbb13515f30baf40bc0a90592e796bfc9fdefaba88bb0`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:65e976905d534185e5486a6e2d827e74bd93f8ea2fef842a742c249bbe13b44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59951553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24db7fb3397ed150cb4ae56b288a1222af54fc1849645719b7f4ae6a12d60c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9586e72c5cbc08b2ea68ab48770de717e3859d9a970123cbade10cada209ae`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 10.1 MB (10078943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef592238382ba05f22aad816ee181f5a307ec921e4accb3d8923f15ed9b524e`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdea2c75f82792f649bbc79d16385d34d4f06008c2dde9cae63fef7228b5669e`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f855e0489568369e2f2018d41700d1b770ec93522ad9bebeea314819a25cf95b`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 91.1 KB (91097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9986bcaa852c7bc7a1666712423892febd8d766208c09ee730b196b6c520fe7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e71d331b142b5f2f69e9337e34998b78e5c36f4572bbc9c9d383f99f0e90c85`

```dockerfile
```

-	Layers:
	-	`sha256:0f1716fbe999d458a32b32147267ccb8a86f80e1815107a96128013d00892c25`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:914b96899711c5d0b0583527e39d1de6d38f0ac23134a9e27118ec9e0ee1b631`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:b1063aac701b5271732a098b85d139b7ce48d678239f07aae6691a8b15e2f81a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4dc764216fa091d8acb22aa9a920d8c126ab35fb1e89029e4c4ed944742247`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262aade66fa34a7e47cec59830c6824ffb7b94baf12063e1e331dac407d26f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 10.5 MB (10468167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3146499573d8b6425094ed7d59f6eb31f40652a2c44166bdbcaeeef13d58a639`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d432c3309d7bc01fff1f993d893f13ec7a69e0869a0b9acd3a48e0124ae24c82`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1e59276ec2c43c864baca06f294d986a1dbea12ce9b947f155942a8b227106`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 90.8 KB (90802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a2444a7541c64b09a0751538b34c6b5b8a022e27b17aa565f7af2c9d695a0c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727a73ecb17fd2ecc120907717aca05bde57f40b614182e10521618001a15253`

```dockerfile
```

-	Layers:
	-	`sha256:5f476406e667c718f4a9e961aebaa3022155f2a52d0c1bc2da05922013e194dd`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ba93139273fa1a95db0e60efcc8a05084cf7a00a4b183f19f46d70b616456ca`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:8a622c9cea60ba3d7c9873469df5ff7521c6a8a347d7ff85df55524144eb3a8a
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
$ docker pull neurodebian@sha256:10d39dfd2c2d705e1a8aa4dbb9e55b424b97d0893855fb8089c4b09cc893f99d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59800479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d1c76e38a87c68d37908dd2330a01d41a6f277988c23036309f9413d9336af`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacf74772e373283c0de668e6c9a6ce083676a377322b052c4a9fbb1e00767bf`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 10.3 MB (10294220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ae512859af9cde93529684f341682a021dd5a50bcfce06d8e39a963b71815f`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c14ab3b6ff237423c683d819517d15c7d89ad8431e7ca5dfacb3fdb4dc75c0`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7677ca1bcafc0c3a4dd34ab157b0e23254ff158d81d6c9d59b39f91a03dce973`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 90.4 KB (90392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6b3df2ef0be2360f482d57be6d9fb789f9247196d6b0ff0127e85785b877c7`  
		Last Modified: Thu, 05 Nov 2026 07:41:18 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c7ffcf0daebbf1b5676e250e3656ef89d08e2eecf671e146f030e06169a0ee95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78eb55dae8ff2e42be26127af33a672520a1315b27d91293ea5aa21a19817ad4`

```dockerfile
```

-	Layers:
	-	`sha256:14dd139342fce0cc425c9e586abeef1a84aad823d8818e30bc75bfd9984bc953`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e58d119a4855bf617e45512540d9b29b138cd9f08a6ac5cc00c44d4866bc431`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8d1c3a55ede04d2ca56939574c804584dcdbf331977ffef80c6c07d2c56f887b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59952006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31814fa1ea4c0f1502fc33635a3d32d0d0a7a2f19d966ce16d2d78b26c716c08`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:58 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:03 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7f4d250b413c8cb6a70e22e45b0b2685f8f6d199a9c0b82e129744dddee263`  
		Last Modified: Thu, 05 Nov 2026 07:45:12 GMT  
		Size: 10.1 MB (10078987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3cdbfa02ec7886e08771d38b3ee71e601ce16b772372eec47438cc6d0b7404`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beeb468dcf86be2ccfe3b4006722d966e2b9187637293bc4b4e3d0a64da8d8a1`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f03a1cc770dadb27746e045e1bf76d4669417159a4f51cdff559e7fc370122d`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 91.1 KB (91060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee534c3796319f41660d28d1440a0a60602e75ceac6273f48b8da15bf41302e`  
		Last Modified: Thu, 05 Nov 2026 07:45:12 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d0aa89080f4a075a903b1bac61d071d0e9ff3881e7d8fb12cf055ad690167a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efb01f732ebb42bd9244c87175990617b9334468968d9122dfa4366ab47e89a`

```dockerfile
```

-	Layers:
	-	`sha256:5961615c6c69e16a4cecd459f8df2734c1d8753cfe9dea6478707e6538982870`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca426aa195bdaf7217bf3e8c2e481b88a1de20c834246b995fbe0de431d7fbd0`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:d1b90b16f1617d1d8c4453cc6a1fe92f966dd6237b49201f9f570002ac991a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7edb80a22d9973f7fa62283da2226d3963e1ef6e72f9991a8e2df5cad08141`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:15 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a94b6eef129ec71482d004fe90eeb924b7c7179e568f66e277cd049e6ce2023`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 10.5 MB (10468173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86f1a4d9fef56cd749a79f1556eb2230480913f31dab321d0928e936f213d70`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf3dde23270058fdfff784287ff2b5f86d8aacbd5e77151dfb1036bea84dab5`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d924b626f6aa4a3a900d1b3f6137f8f79ce1f30c73991f3091ce0dec912d52`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 90.8 KB (90781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13934fba82d1111daeffc1774e779856e2a64d52dcf85b9f3ea2956447100186`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f507390408b83f634b60180373d82f15b1fd7af423caf5c82be1ec434b1b6a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19496ed246b831ad538613100d4f8596ced10bdbcc8609562f1c6f48b0082775`

```dockerfile
```

-	Layers:
	-	`sha256:1c3e850d19133677754062e9c3f9e3f9b0d06c89602f70373c2e28299406eb05`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74c3b1cf805a766693cd3638ef5d23b6c124194cd18c801c4d3b695e423e2b37`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
