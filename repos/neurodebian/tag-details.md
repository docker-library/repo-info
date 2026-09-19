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
$ docker pull neurodebian@sha256:12d51673a6bd8d5bd7b03c747423cce313bbb0c1aad52a33c434678f20ce866e
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
$ docker pull neurodebian@sha256:fbdfc040810469f3971d45487eed043882b780b5bcf9e84b658b30f9568fa594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59872525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c8094ec4e715e42f835294bb9ed26f79fb79029493f43e1dd062945078f8df`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96739d0cfe16877f0c4635ea0baac0ec7232e2e09121d3a0597a93878391005`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 11.3 MB (11273515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9228ecb552b986f4d92e0fbf29ba5055da414a9ccbb832701b075ae46c7b4e3e`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47538e51ac5ce08a0b53ea7a42d1e59dc1ba615536289283e2145e2f9e60d701`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06714dc91a283f5e2c59106e331f38872059957311c649a68e53f5def0780e66`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 93.4 KB (93399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1b60c901e8bee75385e67bf84c213a6c84627ddd947befbefcda7aef216c3b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572b26f902234fc9a022b0e80df2ebb71efd81705f4aae2ca5dc380bc2b141b5`

```dockerfile
```

-	Layers:
	-	`sha256:67e44627bf80567f038decd3809db45023ace822f29beba6a083258102e2556c`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e99092e5e7c368ca093c6aa10dd16be2312d792d0feaa1219876826a96be2e1d`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:2cb6f3a97ddec1dc08f1752044ede6cfe1dcc25776a5b0d1a1fa3b8a740d55c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59738532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6be3a02ed786529683846d9380dbf40d55b8d088ef54e84e6c28490c8b330b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62802245f7d5a218a5b0c634e4896126b67648f71b4a0fd98ca1292d7c6e4c3e`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 11.3 MB (11252910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98972636b4448cba1a229da712e1f823600bbd0d062805696276571b84e63972`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91327afba4bcca3bfad0df5e98a538cceae89301458b9997f6f615e49ff82497`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7ad9574f73a511860ad437c46ae4b4761f05f435dafbe309e8b39c7133eef1`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 93.5 KB (93538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8e3efa7e3fa3c793c217a143cc7b2a1bdb102e9cc0c1e3a852b0d5332da4c5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830358552b4e9446284a77b532da5598ae122b9bd73880bc3aaab828fce61eb8`

```dockerfile
```

-	Layers:
	-	`sha256:0d93e8371e4b99633d3ee4a916c3a9a99dd0d70a187ee6f46462ea3d3c441621`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f814722ed58ba84d94373d65f8d9edbe838c871aa12760a400007db89295fb`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:7524f4ec62c7e4ccf5671788959c05dff5a022b6c2cce8eafa97a61173b752e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca91736ea286cc775e1d4e7957db1c0ab708580aadca98167f91431ea04fe871`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a597111a5384d83467dd7f6cdab599057c20b593b8b097dbc81ddd3ad40d9cdd`  
		Last Modified: Sat, 19 Sep 2026 00:50:27 GMT  
		Size: 11.7 MB (11693100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ee5b22b9ad628a8f1f0b0fd87e14b665d2c4019ae07f2134737369d1c1ea31`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f5827a622a284189bc38dedd5d96761062cf95572ce047273cd6768e5ddfbe`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46da19a5c19638a79671056a8d1a2db5ceb45415ef5567c133be97a50124629f`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 93.5 KB (93450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6baa5e54bab0e273b0ef22de80f3d95d559828a7cfb28e367cdc6fa4fe882d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c64a83bafcbbdfa7c97cd2421650938da28cfa36eefbecef663bd3ba10b3e7`

```dockerfile
```

-	Layers:
	-	`sha256:93b4aded61ced94c8ff2a34f5c6c0f9947a0abfeb2a6db5af9f15a340cef0dd0`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cd1dee58746eec2afef79b46ac75f02496e2612e27d1b8442d00b2e1ef0e169`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:2600dbaf9c32ff51b0f2c57349c492cade28c915398ca457e1667ab01852b4b2
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
$ docker pull neurodebian@sha256:ef814c1e512ba0370ab5ee6ee6a8047338ff1b402b6e4796ee9824e287371c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59872946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d754cd9081c111a0530eb93a4bf8a6c6828b64ff15f679574ed71261978f2e4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1022a08c759cdd6ec8642537496f866062f519d4795d3d7738038f00f0ced539`  
		Last Modified: Sat, 19 Sep 2026 00:47:42 GMT  
		Size: 11.3 MB (11273500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bbef7d4dbe13b8d3f8ada5796090f729490d9b4de42a4a5c960a6ba4b5c9c2`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2d414b8910966cf2b0f5a62496e622fe8b62d33d88cf4f07c515708cb87a67`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4391d4be04f9c1100557cdac67f0fb56545a0b636abb301e15c5343d5d51c33`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 93.4 KB (93388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3f6bca12dc3f538035d6f0d2cb3c84c8c42677a50ba57f2d92ec4f1443965a`  
		Last Modified: Sat, 19 Sep 2026 00:47:42 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e157d594b0915d0aba90645bf3ff79e0759dc0e6b161af799e549aae63c62a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a5ec4296f6f989bfca4e883bb00d5b8c8b340b011b1ce26b0762c73b2f76f6`

```dockerfile
```

-	Layers:
	-	`sha256:502d13e7634926dab1b7a5228b3832a80859d3c102c6601288e5ae9f75dfdc3c`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 4.1 MB (4076023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89de6f18de9e10820b4a31fb56cc9547e34588b314ff00c22d7eb3f30da0e4d`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:d85a1c7510a95f614a7bfb3cdb4f70646b944abcf836320fb8b20b6e9b932ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59738929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792dfda761bd796b3d63a00c0152d1baceff0b4d1d3e165506e1b1849b8830ce`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9deb139066e3e3ab532d01d92390397f0a6a47142a58b8e6b8d09c6ead3642b1`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 11.3 MB (11252872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e783e112d03de956f6364e637933297866a1cd070af94c008002305fe8318c`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305350c05d465f27641ee5b69436915d5febe45e228af6004253bac25100292f`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d929bb1e57d9d5246010e2990d2355833360b23e8beecf825e692cf5ea830f2`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 93.5 KB (93527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd19423c936be894026b7fe1d3dd698438554ac7fd4fc6edd38e0f36b3ae64a`  
		Last Modified: Sat, 19 Sep 2026 00:50:38 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:26f151d28f255e24a9d4de0ff294eaa2f895f8997f722c51b1465d6b16185dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ac881b755b63d3067e8243ad3180b22745b2554a25ab2564bdfb38ec811e4c`

```dockerfile
```

-	Layers:
	-	`sha256:17fe2e2c00e30d5e270943d1ef6639c8a2f2544096062b6f225b4a70e2277618`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 4.1 MB (4076265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8c1af9390b8c6b8d86839be87114047e97a1b064f078a2ce97667de1fe3a79`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 16.1 KB (16131 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:9f463bb44b911a9a2731c86fae22286ff4ff4df295507b34e836893f9852f97b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5441fd8d1ee2948d23ce153aeb9e6bc1d652d0a93d67a9f9d0060eccfbf7de8a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:21 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:24 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1a938ec1759390d093a748986ca2d59805afd07941f9b5bb82b85536008a64`  
		Last Modified: Sat, 19 Sep 2026 00:50:32 GMT  
		Size: 11.7 MB (11693112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83fb16474f6c904ebab51ea51b6046cce0f266f34a1f333095e8bb82fbbd331`  
		Last Modified: Sat, 19 Sep 2026 00:50:31 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca88f92551b01382978e07e54896ecd9787d3e899668c140071b29a44934028`  
		Last Modified: Sat, 19 Sep 2026 00:50:31 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd2f96549f5cafdf26d48bae04dbcf2c51cfa0a8e4c3ecd252d9bb152533e9d`  
		Last Modified: Sat, 19 Sep 2026 00:50:32 GMT  
		Size: 93.5 KB (93451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564b2a0582b8678f3d719e9b896773819aebd02ab7a8ecf8c99d7600a53c2e0d`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dca131002490363385a19d8a1f8f7813ec02d84ec9e4d09e4e17b02ff14e3ad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b62aa1926886e5bd885696dc6709f231dee1766531488fe4bfc97eaf7bc65ed`

```dockerfile
```

-	Layers:
	-	`sha256:3232c4e8b72a3a90aa51633c3dcc4144e520dfac0eaae21e48ce97f124b31541`  
		Last Modified: Sat, 19 Sep 2026 00:50:32 GMT  
		Size: 4.1 MB (4073990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05c53d375487d56df624b5c2c81941b17741f42458b588f2ac399b8cf2d37795`  
		Last Modified: Sat, 19 Sep 2026 00:50:32 GMT  
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
$ docker pull neurodebian@sha256:bd705e280aa7666700accbe1e2de7d2a31eb76bf0205738f86c9701a8aa1c2ba
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
$ docker pull neurodebian@sha256:8f4629afd536052d6da28dab3e6d77b1e2f50f258fa873db05e69f275e5bb925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61793772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35a626a3cd5b71e778eed0e4a3c82cc845ae9582373f1cba9816e3c3e690406`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:48:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c933475ff37e86ac90e03950a7a71353450171827c187ab8c5d1c85efe104f50`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 11.6 MB (11625535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004a074936977ee028b42b1e410cf6e7e6b047f8be8b2892754e60908c993c2c`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08465b7eb1c47fe0c271b30e56d4bff7d517da12eb2e1593d1b9e531c8849b0`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf090226c30e19fe6279a20da046c11fda1534e897bf734a8d597f515455eda1`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 90.3 KB (90255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4f477e835b8838dfb9ee34b76435510702f4142cb8e2f5271bf6920900de7cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f701f7682a52ef7aa0f4bc9f2497e1986a5047b5346a5611f15eab2bcac2b8`

```dockerfile
```

-	Layers:
	-	`sha256:51dc3db9be118aa7811533829d20a9ef318c12fb361fa82563ba0d82f0149e52`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 3.6 MB (3605932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ad5528a19a164f5524f4f1ce3d906ebea575b6a46f3366a2df84882b811ed6d`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1b051ea6e0ca9ae8f629dd3429df03fe7ae49dec4bc6e5fed37f5a5d07c43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60816704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc391860a8525d8abcbdabbf049e42eab979dde8ccde218f4583d42b0c8d1f95`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:50:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:51 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f73f642f6fc3668ab95c2fe594a7a16d343b72295914487fae3be2debd42efd`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 11.2 MB (11166586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b179555726c1ed59110e9de1c5df4752076196ffeebdf03d9537d9ceb19d976d`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bac21789c6e8c37f35ed055ee5ef6b0e86492df1ade35347bfd2b0bbca727ed`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b9049854a3aafb486b75f54270c0e1b57dbe30a1eb041695f902004bbcc72`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 90.7 KB (90728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9cecaed61bf731690b680e94a815ae0ed5e35f50cfc0cef134e95f849e5d9fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6219525ffbcaf928bd7c6e6c516990b6094fc9a4e47fcffc17d778a969a39604`

```dockerfile
```

-	Layers:
	-	`sha256:47f7c7eed47c0f82e030721814ba3731675e981574adde0dabdbdd2af95957cc`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 3.6 MB (3609416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac4e51c0e89fc5b98623a3b92750c565ad80fe982923743fb32474e954220967`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:376e54a5a40a16fd86689fb54e67f96ecb6db05bc46f2cd73241259925b4aff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63133410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c80de1e2139a822782d6e8ebec79a42feca362e385fe2490dfedd6ff08a6c5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:51:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c233988ef079ce2f9cb44b816dff1f5ab9d9d2c6ad39d6a65e12197c3789113`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 11.8 MB (11826704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671fb0f3fc9f0121e3a1ea64ca84ad2bb592127d451c72bff9b15510d60cd4bc`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb873c5c757226f0b49b0fc6bab94752283d8e8c3f9d6e78c390759e94d88c6`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834d229edcfce447e386e648831efdeae2d5ee67992113fd6fbb6af5f77b4da1`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 90.5 KB (90523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:02a5a1381149af91c5893af0112136c82552e7e0d10570c17878d90f845c6be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783cdb49f4c16ba647a76885457c83843bf5d0f3d92f9d8aeb9e2e73ad0be202`

```dockerfile
```

-	Layers:
	-	`sha256:a4b2e5b214032a98e4147ec2e4545d6564052772a3b6ff5c1c0def345aa05a6b`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 3.6 MB (3603778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:610c45089c124a5c3452341fdada001e4b92d69b544390f331f2ac9563a5e6dd`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:5a340ccc716ea5c3cd94ceb369e224b166c1a8238e36408bdb90e33a412a1138
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
$ docker pull neurodebian@sha256:294711b28f139f142074bc4cae70cdb9db1e06d810a8dcb96126a492e45b0310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61794212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f42920bdefa155954df0a5ca8dd97ca4e8fba4cc026db3ec87abaa2d18ded9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:48:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:06 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ffe8925bbb97aaffed456025ef2e75696577c81800643c444600d5acd6e320`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 11.6 MB (11625528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5651b91df1d3314a50352cb128612cd4ea658b5454470412e9b53974e8571253`  
		Last Modified: Sat, 19 Sep 2026 00:48:13 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e055709cb494c0adae945e498e91026d14cdf16edb375a9b8a01a135a13862`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd3bd0f3446dc9f2d9f4efee270bfff1e12a4594410dfb46b3b53a4b28b5b32`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 90.3 KB (90252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f8dd68d7e91bda5d3be6dcd342610adb8f1088c7d0cf7e84c373d5d32a7d1f`  
		Last Modified: Sat, 19 Sep 2026 00:48:15 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b859e5efd48fc58cb95754753dce92cb38d36f952260b03ff868c156f83f3820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa96aaf7e623553f4f991ef227b72c13dd3ed147f3f836f57c0d5eb0ae0c9f2`

```dockerfile
```

-	Layers:
	-	`sha256:3749de75fb499032d56b07640df6209496ba7e70a9e17f91be946279e1e6ea66`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 3.6 MB (3605968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a7d5539adbed218fcfa9f8acf0d46230d54050549ab556a4c12a3ca93fd0247`  
		Last Modified: Sat, 19 Sep 2026 00:48:13 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:86e62c94c809bdcae77c5e5169439447c1db2eee1e4dc46eb6843925c5fb892c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60817184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40df96db411d552c0da47772749f70629a880f6e388b0be6e672e43939aeff0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:50:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:55 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a0b0c96a52954b18ea8c2ba2d7d7c8e9a4aa30a085888d41a8775149c04c56`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 11.2 MB (11166622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630fab8b1206bd7d627f3e8a1521bf64c93bfa6836bc4d3600e213a27afc45dc`  
		Last Modified: Sat, 19 Sep 2026 00:51:02 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2f1cfad79beef7a511d7727d3ee7c23aef64b1fa7228f42ddb0d9004f451d4`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b495f90c02e641a84fcb2d8b0bb8b9c49d600a6591a42f51241605e28d857ab4`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 90.7 KB (90728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643fb65bbd9b71658820f4adba97df8b7e73a238d133a78e5e7c26a487f7bd47`  
		Last Modified: Sat, 19 Sep 2026 00:51:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9e76e8548b3513d14ec855d589ba7bfe856b7c52e0b1adc1af8a2af1045edc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3625551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce79a403ee526c44e787d8683eaad3f233b0eafc5f08dc5c8238dc87f365518`

```dockerfile
```

-	Layers:
	-	`sha256:02a3b82ac0c5ef39b55ebb355e461ce8231d9e68fad46b8301f5ef0790a8d536`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 3.6 MB (3609452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:175fbcd8e0c0db2d21e32e15259044848e58d589c569e010df5de973d839c49d`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:b341dbec00ce3473afc272d86c78b3e3bbd61a525fb67eb9b71e99ee520903cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63133680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc162239935dc36fa8ab7987b030ca05846ab1b904a9c4d1ce017a0d4e469af`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:51:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa6371292b824e966126e38aaff98bafe5190dbe718f3e32920784156d4036b`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 11.8 MB (11826511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efde4de6ea23ba204cc0f27195d0e66463e4e12c2df9e50721edce043b1be8b`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c184cb5b4495fc0698b19d72418c60a1db72545d1f4a1b66dc2ab9cd778b2243`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792783bc8c120b29c8fbcd3898aa1481b8fb76eac6f28c9e7cfbc770dccca219`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 90.5 KB (90540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d7032bb5c48603554292ff4ec0d6544c949fcb6d857c99dbdaa933fe020428`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5302ffc9ac73e7bfcec28962ed08b9e7e4e5cc5734ee1cf912e98f06fecf0aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e23fbbeebca5bb14b3f16e8d8ac8ab4812b8fe275d628c253684539943a38a9`

```dockerfile
```

-	Layers:
	-	`sha256:bd5d7fefead61197cae59912986f5db6e86dcc36cd93a70f272d15e000ef722c`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 3.6 MB (3603814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a4c746b0e00830466b9339c407733924e9d1739365e68b652080eadd16c6a3`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:3567f2a385f6db0333cc25e33ce4110ef36be1912d2350dfff53925f7bfc3512
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:925e44107ad7cdc28fee7bdbdf808583df0fc6236ea7a4f1436bce7b2f4a02cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33488130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ab8c39df7ad377cd66f58d656f113ea45878169529dfe923830ddf88b34ec1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:34:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 02:34:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 02:34:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89229f00c365fc31aa7b7dd6ec99287db000dd61738b8f31324772b14819193c`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 3.6 MB (3625237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db26f24715b34f68ec1dcf27a64c3b0f107bfb5603a57437e8679d218b712c7`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b49d918fbb04540d0b1f334b4745cc792ddf47e2749d83ab641d52c69bf2a6`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dbb69b852415ee5d1134b49611efdb171a6be1c8a5e38ef9679195af15409e`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 110.5 KB (110464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8855c4566eff8a86c6ce24bdb2594d89f54e904d39e4a8be6586d2bba1047e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0d11faa988d0724bd88dbeb13edf9919b760dbfec8af18b231a4a7666a45bf`

```dockerfile
```

-	Layers:
	-	`sha256:67c438a4d33bfb0a3206285ee9323fbfff7ca85af41957ee6b65c3c145720326`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9401d7587011105df7e0c8ee1cfeb10d3c1240bfabd8e9d411610ef880b57343`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:96bc2c104d744fb036df323e58c511c84983d32c4f8f2eb126252c7adf59d5ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31404152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0dccfa338402a859a29c332acf2103ee612765f26969761a3071484ff98a84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:39:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 01:39:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 01:41:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4defbabb4faee0b9fe7940261e05848c46c7d7a9f13c0cb5c80c222b343dd7a3`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 3.6 MB (3608971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800ebc6fd59eaedaee9d1471d5fe40d09cf4c24d0f244a87877ca10d0f40e5b7`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1434aba92da9ae5eac8914c1f112349796d18e4ba666361891a0f44824c70ad6`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9113dd4dd9faa62be3bf2072dbd76a74c59cb53f404cd77ba149dc10ea6f4a9d`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 110.3 KB (110259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f15f726dc79173fb2567de9dcfe8a6d8f282b13f8165cc30a11dd9022070225f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df8abd260d17e99b9d13b1c405535de6a90d957f2830faf39c95b781d858590`

```dockerfile
```

-	Layers:
	-	`sha256:40c91810455078d83aa899157104eb9cdf80fc9b30919e6fa4d57ace3c670ab0`  
		Last Modified: Wed, 09 Sep 2026 01:41:50 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c77b16bd5d729d87cbea51e3e57164b117b832d0027715aeec48697efa1f0bd`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:37f505e42e1447a7d46301225dde34bfda99f27ca48505cd3f7d6e7727a0b917
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8a1a0bdf6130b43e1603843b134c99e4232d9e4b1a7c1f048a41ec9193b34d2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33488468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29cf2c66fc3d7d56d20616714c21586298dd46c5956b443ac7488f9e3c1da35`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:34:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 02:34:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 02:34:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a33bb6f75b1e50becd08df1f11808dfa26becefb181325c6b2f6c0ad41f75ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 3.6 MB (3625267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6198f9556e89e5083609f48ea373a215204d5c9f86f3952269285ef817843de`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ffabd924d6cedbef3a71a1d4c814c6406ed8461333650802ffc782ea028e3b`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a8acaccaf51b6436324e9f6e6ca6a38b7901d3828ea22699a21afa7b80dafc`  
		Last Modified: Wed, 09 Sep 2026 02:35:00 GMT  
		Size: 110.5 KB (110487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74848df1d46918a08417d262a496c93aded747ee46ecd86eab5f1e6a8b033ff`  
		Last Modified: Wed, 09 Sep 2026 02:35:00 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c291f22468fae9203c2af41847f6a8195255394df09fcc36a21a2ba8aff462e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba92770f897650e153afec9d5a365faa800743053f1d47cc28a796883af872cb`

```dockerfile
```

-	Layers:
	-	`sha256:6f424cc513862680c38341863a2e34c334cfea7016a3e288d234affa33731aec`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 2.2 MB (2198408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6b29a582c28a2fd909975457d05b2c45c83a09ca1b90f9cca510da8bd1656a4`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a2fd7f8ee80dc79b8e1295d4236c2cc0e60d09101be91cb47a8588b08495e784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31404457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9770e7e145ae2cd3d06bde489e0806d3154047ec529f3698c1a227f4705a901c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:39:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 01:39:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 01:41:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:45 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c203460703d918a15c8f69c467e0a5f9e3217b2376aa31ff497184a494a8863`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 3.6 MB (3609010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5539127d43deb414ef91c9d7430ebb4a05af8d3bf76ed0a525f3da8c21a9fd2c`  
		Last Modified: Wed, 09 Sep 2026 01:41:51 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a5ae4dd50a6880d81a3b746a1497eec5e4a4bf88543304e072151c9a113c7a`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4bd3a3e3c6ef99b2134d597301c1f6e778b703f65077c1aac31e591dfceec4`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 110.2 KB (110241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4886fdbf1e2dc0d5c4de55bec7a4a03a6315aec5060436d02eb5b713998b1c49`  
		Last Modified: Wed, 09 Sep 2026 01:41:53 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:52806f01d6125a73d7d42656f51c6c8f0788e8079c243634ba87b9a58a1fe055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198cbb62b8845f7a490a13d3c6e4ab979dc011fa0ca2bb9c1a37e28d7ba66cb8`

```dockerfile
```

-	Layers:
	-	`sha256:aaf130637677eac12d3028871c94e8a2af2db1e1d35ba4bd8d74ec98a71722d0`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 2.2 MB (2198668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63f9582318e1e77e0fd20a5a497e3494ed56ec632d3884da67be66024d988df1`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:8baed1aa42f237c821d32b17d3d45a22d607964a6fab038131623dbead19d4a8
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
$ docker pull neurodebian@sha256:e112bb4fecc99cf5388ea839eb24350ca1c7d44fc708d8bccffa075ad6291547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59767012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd9f897e4e0274bb065566e3e99e6fd63610cf96bc9131127bc5f7e8027c1f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2972088658410b71563cada8f6ec35b75130fabd7c5a359beb9ab7606d773f7`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 10.3 MB (10294045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952405f199ce2ca01739d653b47d1a3e897288819cffd85de7b84733ca67e16d`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4939473def3c131bba6a2dd387be11ed60df97a2653826fb4bf87c597f4a864a`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e081c0831a29cc956f3d02899d6c35b87b9bb206afb145d5eb27c41cf9f0d7da`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 90.4 KB (90363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:682b479f02fe8f39084ed6e8b25d79cc0d0948cd663e4a8eab410e6ace3d5a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7625bad3eb6e3197a84f6c515aa5b8864b0e025d6bee179190afe1dd21d6510`

```dockerfile
```

-	Layers:
	-	`sha256:1dad8e345dbc5e7e9775b513f2137aacf511938240de77f89f2644eaa0d4b212`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f60bfc0c8ed75cb19ef487b5da1165e8d54c939095a89ccf355e1595b6da04ab`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b4715bbe367b1044eca950768d158c62b201e8b49509d62950e91242e228a956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59921697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa4e292e85ea0c8af65d9ea0bb84c86ad02596f1b29e47f2ff13c9f63d77df0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce2a04bdd86f4531cca4b58c55e29d40f4eb4a2a2122b4946e4320798e379dd`  
		Last Modified: Sat, 19 Sep 2026 00:50:45 GMT  
		Size: 10.1 MB (10078900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadd522674afc082df4f75bf48ae852558ad649cf485374cc723e496e905c8b5`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20816507a171c5b4ab3d3eabaf694a0c511e0842818b1f538fd74cb0d92aa13`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d8e7bde1ea829977436c1d955e6b670fb493134b6668fa95a8208d807cdcb4`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 91.1 KB (91060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:00dbfe35e64df0119fb772fd175858a6cadecc70bc2a566ecbe4cd8335d6bcc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091835b62902e35ef3ea36d7a59c39a6cfc21d9cf08bb547312ee44456d701e2`

```dockerfile
```

-	Layers:
	-	`sha256:beac648e06871dbca392fa86aa7ce3ff747c21f30234f0ad7d6a6b8aa52e20c5`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9183cdb4442d78e56f3494f152cfc63fa2c3604da53df0b1a4bd6021cc52fd4`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:686a4e4d58f7740c0a64d598ee7c21ac638c96d1949f2d585f9585efe73a36fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61454641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc77fa0555331d0af340cc1b31ee036cd08e9a33c0477e14656f5ca5cf097c5e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:42 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:43 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080ed46eb5043fcd29cd9306835e14ffc870961fba152f1852923fdd0cf8b2d2`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 10.5 MB (10468253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda063596746ce5cca8e6ca396014e4caf0ce8ec94723b8b6ac7b196fd89d7fa`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c49f590018a933d87824d9073b9e5958b71c5928d42232df8ae35b4a22c28b`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6112706c26b1a5bb4e1dc447ff9850b1058cc3b0e7a5aab4f29904bea862063`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 90.8 KB (90767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:56a965ec8f3edb58b4ebee0f41a973ee484966ad87832cd451b86771f0d74771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a1bdc7d2e9304ac3926effe95e1d035d035abeeb909470cddbc69edbf88215`

```dockerfile
```

-	Layers:
	-	`sha256:3c630b90916831968fee09b3de48242b9cea70badea5adca85c75f5f3f281740`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e56702097d4d947483ae9500ee7903c19925267f6d7c246a71defe143990fad9`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:c36d242c086f61c313cc0807c2709f1b2cd126a569f0bd15662683895a2f6d2f
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
$ docker pull neurodebian@sha256:eb1fac46061b4ce79c0a4bf87072386e1d7dad45b1b64f8ede1c55b80eafd42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61406373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb59873a7ea568d7ce600523318ce05958a005747cd07cb7c8126adb2477037`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:48:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cf3778bf93cba832e9fbfc5150a00ae0935dab949016f111c36e9a06cca9e0`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 11.7 MB (11663859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2093be38388e5b08b786d586a4dbd531cdd4f7d3e1b78c60be2eed2e9a9bda7c`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e4293ce6449e672ce013b05c4615ec92ea884549023df8d232fcfe803b9a63`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620daa8c2147324e68fce582829c60773c0aefbbb7d7292b5e72c250f873831f`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 90.1 KB (90149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7e1b6c506d4db28e6c8fb5a3dc25a2aae3b8759d7cba6dd2cd3e7266b7d6e9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3608485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fb8e9f05ca8319842672e39d9f84b926bc16bd15391067156d4e55570828f5`

```dockerfile
```

-	Layers:
	-	`sha256:47a1e3eba62f652b9398f5a70688c6f9cb2e3161e7dd571d4f12da45661e8c26`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 3.6 MB (3594581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7fc3f9c8265bc493e3ba4ed2a2a88fd1e15158fbe54fa4c7bdc64181e31c92f`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:43b72e96dad527ef40df505257c560d0e2ff8afda7402f1ab645bd7301b05aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60319844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ccb14c48fb0c671f756d181010445c73ab0764ca9c8431d22defcb273958f4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6553d039621d54b228abfa2251149e10503b7797100083c6c48e5a257aad9ee1`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 11.2 MB (11181595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535ce5afb84cbc0dabbbcc9db643dc4d90e5e6c3e4a2991e3d0698c120e76752`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c60b96dbda11c56815e2646d56a029196f11182aa1b3aa518986a0b26984add`  
		Last Modified: Sat, 19 Sep 2026 00:51:15 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f1d99ef42bc4eaaf8905cac983115f8a59a740264da5a09bbe5eeb22db7182`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 90.6 KB (90631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3e306e8384540c9371f77f9c720460c082e71a4f2eb143c3f457df364ae32ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3612094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5bea05659b46a2c96b2b6e316f67a17dfcd923c39d68c45fe29e1412d499f9`

```dockerfile
```

-	Layers:
	-	`sha256:498cb1201341ce741b5f2b6c2e15d93716018d3b71db0dc357a0dfe95dc3a10f`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 3.6 MB (3598065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78a3b600b4b96300250aa8df855126653215c628fac602e0622ed122529044c`  
		Last Modified: Sat, 19 Sep 2026 00:51:15 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:c592a000c1b63c25073b9b407d372543248be8bde9b94200c98e1f6788cfc51c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc47cde5a48049fe07c4f7860aede40458647f9dcde9c910d262bc61923a3c3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bafc8e3422117e9c2a2052ba28a3c5d393f9faf7519df5c1969eb2ec2fea8c5`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 11.9 MB (11854723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477f23ba623197c08511de994c10e4d5587bd8935a107587dd199e4a26e30d75`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9197f254e6455d75d2d13ee4bfe9ea0e9dd553de26c5c5acfe010aa79efc256`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8785af646e2c7b65f7779ceab37c566b21d669d63a92067c1d8f26d6fcd53c5`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 90.5 KB (90467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8a3cfac5dcee0f485bf4ab071b81ade87958ec49a13785cfb40f925f08d00e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3606304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c06f3747aa036800f251c37917555e248572ac48996da4189219ba9b2f3b2e6`

```dockerfile
```

-	Layers:
	-	`sha256:e5e93b3413448fb292c874be34acd72c4a92d176c056c48806a6ab397c451e52`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 3.6 MB (3592428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7effee3483ad2ccd6334c2bf4f6f9651049385db3952f1eb1bc75cc0ed4474b`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:cea2fee2b91b99f8f930e00a82b2c3b92c679cfc69c02c3207e74c814de813d1
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
$ docker pull neurodebian@sha256:a0d4adae7c085cdf53378711dcb95ba4cb85cdf80cf5065a43506de5fa19b7f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61406833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0409496fb195739a1827650db21c9986dd53e61640a23a9202cc5363bb81407`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:48:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:12 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0adda06505a7982b44c9287080b703a6b8b8b8a1c11235f01a099baf743798`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 11.7 MB (11663878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e44cda7a07672fa95d5307c9bb8757fc367d6e192508ac203ce926e4977ac`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9406832819a5d3afab626c9e994bdfc1c44dc8e8f84f3fcc75fe2a9e3f455ad`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041211460a8daf3ac6c609bb062dd295069b198e207206981f55c4ed4cb9b841`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 90.2 KB (90169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa559a9ed6787856a15539a3ab479c3e6defb1412b3f16849b35b6d7f481539`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f5156c697f587948ec5d04a8d4684d18f211a988eb34cfbe81476b999d103e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3610547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73cf910dc32bfe9f22a3d160a0eb33993e13f802f1dbca33aa87692dac1be998`

```dockerfile
```

-	Layers:
	-	`sha256:d35fd8e0a6e9d87e3f02bf7086f75cd5eb33b65910ffe8bea0fd45245f6fe8bb`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 3.6 MB (3594617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10250c8257232e7374e9b9e328e9a82d6848d94a25874d88f13e782fb176224e`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 15.9 KB (15930 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:975b400a09eff14bc81c1f4f2c677ab8780d4dcdc043f738ef37437b35d9ddaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60320259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7d055bf8891f90cfd1f09da901af2cdcd7dd3c3ee7f585e999b49f3a986fdf`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:05 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6ec95f7cbe483825d0a3cccc665aceb28c6394b417fb39fa11300964b71a43`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 11.2 MB (11181604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33ff6cabd73436bcea42548f158f3befe0d5a8893962c420421a56938437888`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90da45483b4f4669ee8465cb23ffd9a89217e115d2b342cc1e5a23ecfea86a2f`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20aa5cd6b061bc100bad1803aadeb7ddc2b828288fe239063b5b54e03e89816e`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 90.6 KB (90617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee64325b69ce42b500803b793172cbf466a15e527343e331284c6909da96e12`  
		Last Modified: Sat, 19 Sep 2026 00:51:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ebae81bbf13f8e420ee3063c1815bd4e5914f0e33ae0f48bb2577f3c7c3fd834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc101110dc1671d243f07f4cb3cf8585ab6fe0eb98eeb1049cc0a40ec3e66c73`

```dockerfile
```

-	Layers:
	-	`sha256:30cd89fa65c0a0bb374238e00212ea043b36eddbb211a21165af31e6033dfecd`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 3.6 MB (3598101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cad304ee1652fdecc628a0fb6ca38bd1269084e42fcd45472c0b7654eccf9cb9`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c3111fc1eaf0c4ed8df3cea8d061afb087e30341b25e6bdfccfc317de6202cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62701307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ecc5d11dd7e4fb3f61f656d1a9ba5b117e22f4c71f215b8e3d5330b60e0117`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:43 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:48 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1350b814dd95fbeae626c52a264a84a9586792815ed6ac8598609340a8bd21f0`  
		Last Modified: Sat, 19 Sep 2026 00:51:56 GMT  
		Size: 11.9 MB (11854721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63320330bf3caf0665fe3ca5d04752438a094e86418abd191fb77beb40596663`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91390e469230c29dc4b33b53cb79f6906e79ed1966afe094cd17ed5ba5d65bf`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3621564037bc0bb89e8cf0a985f8f1695408bba037d61cc70c8767b5048ba023`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 90.5 KB (90456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1ab940488d3a70c5d800e46601e3b2af52e8e1afabaa2c780d1d65bfc1f974`  
		Last Modified: Sat, 19 Sep 2026 00:51:56 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bf0710c6ff846291407c348f50c5ed19897abf00aef758aa89a6aa8c7f12daea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3608365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b22a0694b2ba3361e8bd064afa0ab01f1a09c087a254bb256c6e21e843f08d7`

```dockerfile
```

-	Layers:
	-	`sha256:04fa6e2b7c2ae778869ac09c8dca8b0e600bb396fec27ca56c1c01fdcf341887`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 3.6 MB (3592464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1aa8b4749f166b34044a989db380efec8fb66010a54be4caf3395abe7d3615`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
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
$ docker pull neurodebian@sha256:12d51673a6bd8d5bd7b03c747423cce313bbb0c1aad52a33c434678f20ce866e
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
$ docker pull neurodebian@sha256:fbdfc040810469f3971d45487eed043882b780b5bcf9e84b658b30f9568fa594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59872525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c8094ec4e715e42f835294bb9ed26f79fb79029493f43e1dd062945078f8df`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:40 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96739d0cfe16877f0c4635ea0baac0ec7232e2e09121d3a0597a93878391005`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 11.3 MB (11273515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9228ecb552b986f4d92e0fbf29ba5055da414a9ccbb832701b075ae46c7b4e3e`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47538e51ac5ce08a0b53ea7a42d1e59dc1ba615536289283e2145e2f9e60d701`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06714dc91a283f5e2c59106e331f38872059957311c649a68e53f5def0780e66`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 93.4 KB (93399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1b60c901e8bee75385e67bf84c213a6c84627ddd947befbefcda7aef216c3b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572b26f902234fc9a022b0e80df2ebb71efd81705f4aae2ca5dc380bc2b141b5`

```dockerfile
```

-	Layers:
	-	`sha256:67e44627bf80567f038decd3809db45023ace822f29beba6a083258102e2556c`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e99092e5e7c368ca093c6aa10dd16be2312d792d0feaa1219876826a96be2e1d`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:2cb6f3a97ddec1dc08f1752044ede6cfe1dcc25776a5b0d1a1fa3b8a740d55c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59738532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6be3a02ed786529683846d9380dbf40d55b8d088ef54e84e6c28490c8b330b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62802245f7d5a218a5b0c634e4896126b67648f71b4a0fd98ca1292d7c6e4c3e`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 11.3 MB (11252910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98972636b4448cba1a229da712e1f823600bbd0d062805696276571b84e63972`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91327afba4bcca3bfad0df5e98a538cceae89301458b9997f6f615e49ff82497`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7ad9574f73a511860ad437c46ae4b4761f05f435dafbe309e8b39c7133eef1`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 93.5 KB (93538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8e3efa7e3fa3c793c217a143cc7b2a1bdb102e9cc0c1e3a852b0d5332da4c5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830358552b4e9446284a77b532da5598ae122b9bd73880bc3aaab828fce61eb8`

```dockerfile
```

-	Layers:
	-	`sha256:0d93e8371e4b99633d3ee4a916c3a9a99dd0d70a187ee6f46462ea3d3c441621`  
		Last Modified: Sat, 19 Sep 2026 00:50:34 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f814722ed58ba84d94373d65f8d9edbe838c871aa12760a400007db89295fb`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; 386

```console
$ docker pull neurodebian@sha256:7524f4ec62c7e4ccf5671788959c05dff5a022b6c2cce8eafa97a61173b752e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca91736ea286cc775e1d4e7957db1c0ab708580aadca98167f91431ea04fe871`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a597111a5384d83467dd7f6cdab599057c20b593b8b097dbc81ddd3ad40d9cdd`  
		Last Modified: Sat, 19 Sep 2026 00:50:27 GMT  
		Size: 11.7 MB (11693100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ee5b22b9ad628a8f1f0b0fd87e14b665d2c4019ae07f2134737369d1c1ea31`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f5827a622a284189bc38dedd5d96761062cf95572ce047273cd6768e5ddfbe`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46da19a5c19638a79671056a8d1a2db5ceb45415ef5567c133be97a50124629f`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 93.5 KB (93450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6baa5e54bab0e273b0ef22de80f3d95d559828a7cfb28e367cdc6fa4fe882d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c64a83bafcbbdfa7c97cd2421650938da28cfa36eefbecef663bd3ba10b3e7`

```dockerfile
```

-	Layers:
	-	`sha256:93b4aded61ced94c8ff2a34f5c6c0f9947a0abfeb2a6db5af9f15a340cef0dd0`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cd1dee58746eec2afef79b46ac75f02496e2612e27d1b8442d00b2e1ef0e169`  
		Last Modified: Sat, 19 Sep 2026 00:50:26 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:2600dbaf9c32ff51b0f2c57349c492cade28c915398ca457e1667ab01852b4b2
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
$ docker pull neurodebian@sha256:ef814c1e512ba0370ab5ee6ee6a8047338ff1b402b6e4796ee9824e287371c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59872946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d754cd9081c111a0530eb93a4bf8a6c6828b64ff15f679574ed71261978f2e4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1022a08c759cdd6ec8642537496f866062f519d4795d3d7738038f00f0ced539`  
		Last Modified: Sat, 19 Sep 2026 00:47:42 GMT  
		Size: 11.3 MB (11273500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bbef7d4dbe13b8d3f8ada5796090f729490d9b4de42a4a5c960a6ba4b5c9c2`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2d414b8910966cf2b0f5a62496e622fe8b62d33d88cf4f07c515708cb87a67`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4391d4be04f9c1100557cdac67f0fb56545a0b636abb301e15c5343d5d51c33`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 93.4 KB (93388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3f6bca12dc3f538035d6f0d2cb3c84c8c42677a50ba57f2d92ec4f1443965a`  
		Last Modified: Sat, 19 Sep 2026 00:47:42 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e157d594b0915d0aba90645bf3ff79e0759dc0e6b161af799e549aae63c62a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a5ec4296f6f989bfca4e883bb00d5b8c8b340b011b1ce26b0762c73b2f76f6`

```dockerfile
```

-	Layers:
	-	`sha256:502d13e7634926dab1b7a5228b3832a80859d3c102c6601288e5ae9f75dfdc3c`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 4.1 MB (4076023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89de6f18de9e10820b4a31fb56cc9547e34588b314ff00c22d7eb3f30da0e4d`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:d85a1c7510a95f614a7bfb3cdb4f70646b944abcf836320fb8b20b6e9b932ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59738929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792dfda761bd796b3d63a00c0152d1baceff0b4d1d3e165506e1b1849b8830ce`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9deb139066e3e3ab532d01d92390397f0a6a47142a58b8e6b8d09c6ead3642b1`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 11.3 MB (11252872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e783e112d03de956f6364e637933297866a1cd070af94c008002305fe8318c`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305350c05d465f27641ee5b69436915d5febe45e228af6004253bac25100292f`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d929bb1e57d9d5246010e2990d2355833360b23e8beecf825e692cf5ea830f2`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 93.5 KB (93527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd19423c936be894026b7fe1d3dd698438554ac7fd4fc6edd38e0f36b3ae64a`  
		Last Modified: Sat, 19 Sep 2026 00:50:38 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:26f151d28f255e24a9d4de0ff294eaa2f895f8997f722c51b1465d6b16185dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ac881b755b63d3067e8243ad3180b22745b2554a25ab2564bdfb38ec811e4c`

```dockerfile
```

-	Layers:
	-	`sha256:17fe2e2c00e30d5e270943d1ef6639c8a2f2544096062b6f225b4a70e2277618`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 4.1 MB (4076265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8c1af9390b8c6b8d86839be87114047e97a1b064f078a2ce97667de1fe3a79`  
		Last Modified: Sat, 19 Sep 2026 00:50:37 GMT  
		Size: 16.1 KB (16131 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:9f463bb44b911a9a2731c86fae22286ff4ff4df295507b34e836893f9852f97b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5441fd8d1ee2948d23ce153aeb9e6bc1d652d0a93d67a9f9d0060eccfbf7de8a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:50:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:21 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:24 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1a938ec1759390d093a748986ca2d59805afd07941f9b5bb82b85536008a64`  
		Last Modified: Sat, 19 Sep 2026 00:50:32 GMT  
		Size: 11.7 MB (11693112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83fb16474f6c904ebab51ea51b6046cce0f266f34a1f333095e8bb82fbbd331`  
		Last Modified: Sat, 19 Sep 2026 00:50:31 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca88f92551b01382978e07e54896ecd9787d3e899668c140071b29a44934028`  
		Last Modified: Sat, 19 Sep 2026 00:50:31 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd2f96549f5cafdf26d48bae04dbcf2c51cfa0a8e4c3ecd252d9bb152533e9d`  
		Last Modified: Sat, 19 Sep 2026 00:50:32 GMT  
		Size: 93.5 KB (93451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564b2a0582b8678f3d719e9b896773819aebd02ab7a8ecf8c99d7600a53c2e0d`  
		Last Modified: Sat, 19 Sep 2026 00:50:33 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dca131002490363385a19d8a1f8f7813ec02d84ec9e4d09e4e17b02ff14e3ad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b62aa1926886e5bd885696dc6709f231dee1766531488fe4bfc97eaf7bc65ed`

```dockerfile
```

-	Layers:
	-	`sha256:3232c4e8b72a3a90aa51633c3dcc4144e520dfac0eaae21e48ce97f124b31541`  
		Last Modified: Sat, 19 Sep 2026 00:50:32 GMT  
		Size: 4.1 MB (4073990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05c53d375487d56df624b5c2c81941b17741f42458b588f2ac399b8cf2d37795`  
		Last Modified: Sat, 19 Sep 2026 00:50:32 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130`

```console
$ docker pull neurodebian@sha256:8baed1aa42f237c821d32b17d3d45a22d607964a6fab038131623dbead19d4a8
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
$ docker pull neurodebian@sha256:e112bb4fecc99cf5388ea839eb24350ca1c7d44fc708d8bccffa075ad6291547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59767012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd9f897e4e0274bb065566e3e99e6fd63610cf96bc9131127bc5f7e8027c1f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2972088658410b71563cada8f6ec35b75130fabd7c5a359beb9ab7606d773f7`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 10.3 MB (10294045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952405f199ce2ca01739d653b47d1a3e897288819cffd85de7b84733ca67e16d`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4939473def3c131bba6a2dd387be11ed60df97a2653826fb4bf87c597f4a864a`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e081c0831a29cc956f3d02899d6c35b87b9bb206afb145d5eb27c41cf9f0d7da`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 90.4 KB (90363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:682b479f02fe8f39084ed6e8b25d79cc0d0948cd663e4a8eab410e6ace3d5a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7625bad3eb6e3197a84f6c515aa5b8864b0e025d6bee179190afe1dd21d6510`

```dockerfile
```

-	Layers:
	-	`sha256:1dad8e345dbc5e7e9775b513f2137aacf511938240de77f89f2644eaa0d4b212`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f60bfc0c8ed75cb19ef487b5da1165e8d54c939095a89ccf355e1595b6da04ab`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b4715bbe367b1044eca950768d158c62b201e8b49509d62950e91242e228a956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59921697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa4e292e85ea0c8af65d9ea0bb84c86ad02596f1b29e47f2ff13c9f63d77df0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce2a04bdd86f4531cca4b58c55e29d40f4eb4a2a2122b4946e4320798e379dd`  
		Last Modified: Sat, 19 Sep 2026 00:50:45 GMT  
		Size: 10.1 MB (10078900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadd522674afc082df4f75bf48ae852558ad649cf485374cc723e496e905c8b5`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20816507a171c5b4ab3d3eabaf694a0c511e0842818b1f538fd74cb0d92aa13`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d8e7bde1ea829977436c1d955e6b670fb493134b6668fa95a8208d807cdcb4`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 91.1 KB (91060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:00dbfe35e64df0119fb772fd175858a6cadecc70bc2a566ecbe4cd8335d6bcc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091835b62902e35ef3ea36d7a59c39a6cfc21d9cf08bb547312ee44456d701e2`

```dockerfile
```

-	Layers:
	-	`sha256:beac648e06871dbca392fa86aa7ce3ff747c21f30234f0ad7d6a6b8aa52e20c5`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9183cdb4442d78e56f3494f152cfc63fa2c3604da53df0b1a4bd6021cc52fd4`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; 386

```console
$ docker pull neurodebian@sha256:686a4e4d58f7740c0a64d598ee7c21ac638c96d1949f2d585f9585efe73a36fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61454641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc77fa0555331d0af340cc1b31ee036cd08e9a33c0477e14656f5ca5cf097c5e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:42 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:43 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080ed46eb5043fcd29cd9306835e14ffc870961fba152f1852923fdd0cf8b2d2`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 10.5 MB (10468253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda063596746ce5cca8e6ca396014e4caf0ce8ec94723b8b6ac7b196fd89d7fa`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c49f590018a933d87824d9073b9e5958b71c5928d42232df8ae35b4a22c28b`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6112706c26b1a5bb4e1dc447ff9850b1058cc3b0e7a5aab4f29904bea862063`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 90.8 KB (90767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:56a965ec8f3edb58b4ebee0f41a973ee484966ad87832cd451b86771f0d74771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a1bdc7d2e9304ac3926effe95e1d035d035abeeb909470cddbc69edbf88215`

```dockerfile
```

-	Layers:
	-	`sha256:3c630b90916831968fee09b3de48242b9cea70badea5adca85c75f5f3f281740`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e56702097d4d947483ae9500ee7903c19925267f6d7c246a71defe143990fad9`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:3ca2e249b8c2d450b37ffbb4fa779ac2ce6ace98834b7a5bd2eeca2bf65942fe
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
$ docker pull neurodebian@sha256:4ec624d79cd1f1ff38bf34fca68d64f943e7280f4e3d2695e34a1b3748015503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59767586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5a4a95a21347bbcf9616db2ce3f6ffbae1a99ea030f4289dec7f1d645e4ecb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0367881a5546db8ae8f03b855dd5e60310d5d38bc7ff29497f1714e6bf22656`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 10.3 MB (10294185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6d317407eadefc66a2ffa0197c1416d1c24253c9d17bfe859ef491f68f25cc`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ce78390911c1b529ca57723b701de78f57424f1ce744143007aa4a72312071`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ff5a57dbab74a1af7bc8e5843c7d706800a036931e61fd22a13f3ee84c0740`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271eae8fbb0331a80b2ad033dacedc230f7337edf4f3c4b35303235d3779911f`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:af56ec24745b9028c1222c57cacbf6587c4b11215890466fe82dc9b855d4975e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785bca50b95e664a0e580cd391083130f97f3cd65f5ba0d6dd8bb1cdedfd7835`

```dockerfile
```

-	Layers:
	-	`sha256:b396fa5a856ac258e5878b712f757bc057b614b18e07433a4bd19fe4597c27e7`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc962873d5b6ee34b2a88ce01f4ed7f1f6ec732b8b56431c80830189a4daa548`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0a6dc589dcea3f456ae11babee4553ac8057a46831c7da594243037fe8b44163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59922152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52535d8358a3b3573e0e36f2b820c9a022263b18fbe15a399fa49d14b511a66`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d01be2ce3ebedfb9b1f4041ca2e848f400243ee06b5c4ee9d854c8651192c9`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 10.1 MB (10078901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0485ab73e1f08c621dec2134ef63a53f838a494336ae2a7c94230a707c3820ef`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672da0e90647ad0d6df22c8fccd43f46b5cb81e0c1553b202c851bcc8ba7d93b`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a911a26847efe966ef319fca205ca7f1e57d4db1568e2a195e4d452f61fb44`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 91.1 KB (91066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0447b50c5b678fa54849cf68086f98412b5dbcdd49cc70a5f00f0398a2573425`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:01e58f3cfa0ce80e0ed4c9100bba87193636c9bc59f9504724b9a1f2ee942a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379b17496d067d4f399df9689e965e316329e327511a59433d8a9e16c7751e31`

```dockerfile
```

-	Layers:
	-	`sha256:793a027a91b70438781256b8691ee5fd4fcebff48efb54623f3424f062a6fa31`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6704db8fffe8b702e8301794f06da5e4d8fce0372a5bd0ee6b810d52ad2b47f5`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2832a4a7946547c0ba3b0871a1a83e575f59bdbca15942a28d4a3491eac5101a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61455031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd56dcf8bf15db70121b466eaa3ebcf3733a71faf6ead050eb3928dbea44195e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71b2049994e2416b737a337023a34dcf010542d8a6e2466f228e488b663c295`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 10.5 MB (10468188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1246ea00c166202d1ac6f52b5dc4ab8bbb02494cec4354f7ffd69712839f4a10`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe03eb59cca14b5b355cecb8c2a575e1936a99febed3636105bfb880c11e449`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5bbda427b2c03b54929cf285efb9cbf6bbc274e5a28250aa9f924fa73b48ba`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 90.8 KB (90778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b3e2437cd25adcd39dc1b805860b0cc7e25a0e6868d9a17b88780a674a9416`  
		Last Modified: Sat, 19 Sep 2026 00:51:01 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d482154ece938f9a91544df9ca3b81e59d03ad057c2cae674c8eb002e61bb897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca04ea7e1e84a774e6c2e678f30cb6ee7c9cfd17070d0b9f94ba85fe76600973`

```dockerfile
```

-	Layers:
	-	`sha256:5122eb46b1d554ad7a118eca9a50c4bbb1dc22bce0e73f92e8b7052c266cd3bf`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7593e8784ad742a7970772a0c45a71f9998d14415b6b78efc7d970027793ba3d`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140`

```console
$ docker pull neurodebian@sha256:bd705e280aa7666700accbe1e2de7d2a31eb76bf0205738f86c9701a8aa1c2ba
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
$ docker pull neurodebian@sha256:8f4629afd536052d6da28dab3e6d77b1e2f50f258fa873db05e69f275e5bb925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61793772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35a626a3cd5b71e778eed0e4a3c82cc845ae9582373f1cba9816e3c3e690406`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:48:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c933475ff37e86ac90e03950a7a71353450171827c187ab8c5d1c85efe104f50`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 11.6 MB (11625535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004a074936977ee028b42b1e410cf6e7e6b047f8be8b2892754e60908c993c2c`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08465b7eb1c47fe0c271b30e56d4bff7d517da12eb2e1593d1b9e531c8849b0`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf090226c30e19fe6279a20da046c11fda1534e897bf734a8d597f515455eda1`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 90.3 KB (90255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4f477e835b8838dfb9ee34b76435510702f4142cb8e2f5271bf6920900de7cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f701f7682a52ef7aa0f4bc9f2497e1986a5047b5346a5611f15eab2bcac2b8`

```dockerfile
```

-	Layers:
	-	`sha256:51dc3db9be118aa7811533829d20a9ef318c12fb361fa82563ba0d82f0149e52`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 3.6 MB (3605932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ad5528a19a164f5524f4f1ce3d906ebea575b6a46f3366a2df84882b811ed6d`  
		Last Modified: Sat, 19 Sep 2026 00:48:12 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1b051ea6e0ca9ae8f629dd3429df03fe7ae49dec4bc6e5fed37f5a5d07c43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60816704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc391860a8525d8abcbdabbf049e42eab979dde8ccde218f4583d42b0c8d1f95`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:50:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:51 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f73f642f6fc3668ab95c2fe594a7a16d343b72295914487fae3be2debd42efd`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 11.2 MB (11166586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b179555726c1ed59110e9de1c5df4752076196ffeebdf03d9537d9ceb19d976d`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bac21789c6e8c37f35ed055ee5ef6b0e86492df1ade35347bfd2b0bbca727ed`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b9049854a3aafb486b75f54270c0e1b57dbe30a1eb041695f902004bbcc72`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 90.7 KB (90728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9cecaed61bf731690b680e94a815ae0ed5e35f50cfc0cef134e95f849e5d9fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6219525ffbcaf928bd7c6e6c516990b6094fc9a4e47fcffc17d778a969a39604`

```dockerfile
```

-	Layers:
	-	`sha256:47f7c7eed47c0f82e030721814ba3731675e981574adde0dabdbdd2af95957cc`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 3.6 MB (3609416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac4e51c0e89fc5b98623a3b92750c565ad80fe982923743fb32474e954220967`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; 386

```console
$ docker pull neurodebian@sha256:376e54a5a40a16fd86689fb54e67f96ecb6db05bc46f2cd73241259925b4aff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63133410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c80de1e2139a822782d6e8ebec79a42feca362e385fe2490dfedd6ff08a6c5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:51:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c233988ef079ce2f9cb44b816dff1f5ab9d9d2c6ad39d6a65e12197c3789113`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 11.8 MB (11826704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671fb0f3fc9f0121e3a1ea64ca84ad2bb592127d451c72bff9b15510d60cd4bc`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb873c5c757226f0b49b0fc6bab94752283d8e8c3f9d6e78c390759e94d88c6`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834d229edcfce447e386e648831efdeae2d5ee67992113fd6fbb6af5f77b4da1`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 90.5 KB (90523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:02a5a1381149af91c5893af0112136c82552e7e0d10570c17878d90f845c6be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783cdb49f4c16ba647a76885457c83843bf5d0f3d92f9d8aeb9e2e73ad0be202`

```dockerfile
```

-	Layers:
	-	`sha256:a4b2e5b214032a98e4147ec2e4545d6564052772a3b6ff5c1c0def345aa05a6b`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 3.6 MB (3603778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:610c45089c124a5c3452341fdada001e4b92d69b544390f331f2ac9563a5e6dd`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:5a340ccc716ea5c3cd94ceb369e224b166c1a8238e36408bdb90e33a412a1138
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
$ docker pull neurodebian@sha256:294711b28f139f142074bc4cae70cdb9db1e06d810a8dcb96126a492e45b0310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61794212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f42920bdefa155954df0a5ca8dd97ca4e8fba4cc026db3ec87abaa2d18ded9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:48:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:06 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ffe8925bbb97aaffed456025ef2e75696577c81800643c444600d5acd6e320`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 11.6 MB (11625528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5651b91df1d3314a50352cb128612cd4ea658b5454470412e9b53974e8571253`  
		Last Modified: Sat, 19 Sep 2026 00:48:13 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e055709cb494c0adae945e498e91026d14cdf16edb375a9b8a01a135a13862`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd3bd0f3446dc9f2d9f4efee270bfff1e12a4594410dfb46b3b53a4b28b5b32`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 90.3 KB (90252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f8dd68d7e91bda5d3be6dcd342610adb8f1088c7d0cf7e84c373d5d32a7d1f`  
		Last Modified: Sat, 19 Sep 2026 00:48:15 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b859e5efd48fc58cb95754753dce92cb38d36f952260b03ff868c156f83f3820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa96aaf7e623553f4f991ef227b72c13dd3ed147f3f836f57c0d5eb0ae0c9f2`

```dockerfile
```

-	Layers:
	-	`sha256:3749de75fb499032d56b07640df6209496ba7e70a9e17f91be946279e1e6ea66`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 3.6 MB (3605968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a7d5539adbed218fcfa9f8acf0d46230d54050549ab556a4c12a3ca93fd0247`  
		Last Modified: Sat, 19 Sep 2026 00:48:13 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:86e62c94c809bdcae77c5e5169439447c1db2eee1e4dc46eb6843925c5fb892c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60817184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40df96db411d552c0da47772749f70629a880f6e388b0be6e672e43939aeff0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:50:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:55 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a0b0c96a52954b18ea8c2ba2d7d7c8e9a4aa30a085888d41a8775149c04c56`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 11.2 MB (11166622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630fab8b1206bd7d627f3e8a1521bf64c93bfa6836bc4d3600e213a27afc45dc`  
		Last Modified: Sat, 19 Sep 2026 00:51:02 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2f1cfad79beef7a511d7727d3ee7c23aef64b1fa7228f42ddb0d9004f451d4`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b495f90c02e641a84fcb2d8b0bb8b9c49d600a6591a42f51241605e28d857ab4`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 90.7 KB (90728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643fb65bbd9b71658820f4adba97df8b7e73a238d133a78e5e7c26a487f7bd47`  
		Last Modified: Sat, 19 Sep 2026 00:51:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9e76e8548b3513d14ec855d589ba7bfe856b7c52e0b1adc1af8a2af1045edc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3625551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce79a403ee526c44e787d8683eaad3f233b0eafc5f08dc5c8238dc87f365518`

```dockerfile
```

-	Layers:
	-	`sha256:02a3b82ac0c5ef39b55ebb355e461ce8231d9e68fad46b8301f5ef0790a8d536`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 3.6 MB (3609452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:175fbcd8e0c0db2d21e32e15259044848e58d589c569e010df5de973d839c49d`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:b341dbec00ce3473afc272d86c78b3e3bbd61a525fb67eb9b71e99ee520903cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63133680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc162239935dc36fa8ab7987b030ca05846ab1b904a9c4d1ce017a0d4e469af`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:51:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa6371292b824e966126e38aaff98bafe5190dbe718f3e32920784156d4036b`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 11.8 MB (11826511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efde4de6ea23ba204cc0f27195d0e66463e4e12c2df9e50721edce043b1be8b`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c184cb5b4495fc0698b19d72418c60a1db72545d1f4a1b66dc2ab9cd778b2243`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792783bc8c120b29c8fbcd3898aa1481b8fb76eac6f28c9e7cfbc770dccca219`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 90.5 KB (90540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d7032bb5c48603554292ff4ec0d6544c949fcb6d857c99dbdaa933fe020428`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5302ffc9ac73e7bfcec28962ed08b9e7e4e5cc5734ee1cf912e98f06fecf0aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e23fbbeebca5bb14b3f16e8d8ac8ab4812b8fe275d628c253684539943a38a9`

```dockerfile
```

-	Layers:
	-	`sha256:bd5d7fefead61197cae59912986f5db6e86dcc36cd93a70f272d15e000ef722c`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 3.6 MB (3603814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a4c746b0e00830466b9339c407733924e9d1739365e68b652080eadd16c6a3`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04`

```console
$ docker pull neurodebian@sha256:3567f2a385f6db0333cc25e33ce4110ef36be1912d2350dfff53925f7bfc3512
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:925e44107ad7cdc28fee7bdbdf808583df0fc6236ea7a4f1436bce7b2f4a02cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33488130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ab8c39df7ad377cd66f58d656f113ea45878169529dfe923830ddf88b34ec1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:34:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 02:34:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 02:34:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89229f00c365fc31aa7b7dd6ec99287db000dd61738b8f31324772b14819193c`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 3.6 MB (3625237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db26f24715b34f68ec1dcf27a64c3b0f107bfb5603a57437e8679d218b712c7`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b49d918fbb04540d0b1f334b4745cc792ddf47e2749d83ab641d52c69bf2a6`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dbb69b852415ee5d1134b49611efdb171a6be1c8a5e38ef9679195af15409e`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 110.5 KB (110464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8855c4566eff8a86c6ce24bdb2594d89f54e904d39e4a8be6586d2bba1047e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0d11faa988d0724bd88dbeb13edf9919b760dbfec8af18b231a4a7666a45bf`

```dockerfile
```

-	Layers:
	-	`sha256:67c438a4d33bfb0a3206285ee9323fbfff7ca85af41957ee6b65c3c145720326`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9401d7587011105df7e0c8ee1cfeb10d3c1240bfabd8e9d411610ef880b57343`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:96bc2c104d744fb036df323e58c511c84983d32c4f8f2eb126252c7adf59d5ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31404152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0dccfa338402a859a29c332acf2103ee612765f26969761a3071484ff98a84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:39:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 01:39:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 01:41:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4defbabb4faee0b9fe7940261e05848c46c7d7a9f13c0cb5c80c222b343dd7a3`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 3.6 MB (3608971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800ebc6fd59eaedaee9d1471d5fe40d09cf4c24d0f244a87877ca10d0f40e5b7`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1434aba92da9ae5eac8914c1f112349796d18e4ba666361891a0f44824c70ad6`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9113dd4dd9faa62be3bf2072dbd76a74c59cb53f404cd77ba149dc10ea6f4a9d`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 110.3 KB (110259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f15f726dc79173fb2567de9dcfe8a6d8f282b13f8165cc30a11dd9022070225f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df8abd260d17e99b9d13b1c405535de6a90d957f2830faf39c95b781d858590`

```dockerfile
```

-	Layers:
	-	`sha256:40c91810455078d83aa899157104eb9cdf80fc9b30919e6fa4d57ace3c670ab0`  
		Last Modified: Wed, 09 Sep 2026 01:41:50 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c77b16bd5d729d87cbea51e3e57164b117b832d0027715aeec48697efa1f0bd`  
		Last Modified: Wed, 09 Sep 2026 01:41:49 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04-non-free`

```console
$ docker pull neurodebian@sha256:37f505e42e1447a7d46301225dde34bfda99f27ca48505cd3f7d6e7727a0b917
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8a1a0bdf6130b43e1603843b134c99e4232d9e4b1a7c1f048a41ec9193b34d2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33488468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29cf2c66fc3d7d56d20616714c21586298dd46c5956b443ac7488f9e3c1da35`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:34:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 02:34:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 02:34:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a33bb6f75b1e50becd08df1f11808dfa26becefb181325c6b2f6c0ad41f75ef`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 3.6 MB (3625267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6198f9556e89e5083609f48ea373a215204d5c9f86f3952269285ef817843de`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ffabd924d6cedbef3a71a1d4c814c6406ed8461333650802ffc782ea028e3b`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a8acaccaf51b6436324e9f6e6ca6a38b7901d3828ea22699a21afa7b80dafc`  
		Last Modified: Wed, 09 Sep 2026 02:35:00 GMT  
		Size: 110.5 KB (110487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74848df1d46918a08417d262a496c93aded747ee46ecd86eab5f1e6a8b033ff`  
		Last Modified: Wed, 09 Sep 2026 02:35:00 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c291f22468fae9203c2af41847f6a8195255394df09fcc36a21a2ba8aff462e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba92770f897650e153afec9d5a365faa800743053f1d47cc28a796883af872cb`

```dockerfile
```

-	Layers:
	-	`sha256:6f424cc513862680c38341863a2e34c334cfea7016a3e288d234affa33731aec`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 2.2 MB (2198408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6b29a582c28a2fd909975457d05b2c45c83a09ca1b90f9cca510da8bd1656a4`  
		Last Modified: Wed, 09 Sep 2026 02:34:59 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a2fd7f8ee80dc79b8e1295d4236c2cc0e60d09101be91cb47a8588b08495e784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31404457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9770e7e145ae2cd3d06bde489e0806d3154047ec529f3698c1a227f4705a901c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:39:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 01:39:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 01:41:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:45 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c203460703d918a15c8f69c467e0a5f9e3217b2376aa31ff497184a494a8863`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 3.6 MB (3609010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5539127d43deb414ef91c9d7430ebb4a05af8d3bf76ed0a525f3da8c21a9fd2c`  
		Last Modified: Wed, 09 Sep 2026 01:41:51 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a5ae4dd50a6880d81a3b746a1497eec5e4a4bf88543304e072151c9a113c7a`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4bd3a3e3c6ef99b2134d597301c1f6e778b703f65077c1aac31e591dfceec4`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 110.2 KB (110241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4886fdbf1e2dc0d5c4de55bec7a4a03a6315aec5060436d02eb5b713998b1c49`  
		Last Modified: Wed, 09 Sep 2026 01:41:53 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:52806f01d6125a73d7d42656f51c6c8f0788e8079c243634ba87b9a58a1fe055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198cbb62b8845f7a490a13d3c6e4ab979dc011fa0ca2bb9c1a37e28d7ba66cb8`

```dockerfile
```

-	Layers:
	-	`sha256:aaf130637677eac12d3028871c94e8a2af2db1e1d35ba4bd8d74ec98a71722d0`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 2.2 MB (2198668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63f9582318e1e77e0fd20a5a497e3494ed56ec632d3884da67be66024d988df1`  
		Last Modified: Wed, 09 Sep 2026 01:41:52 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04`

```console
$ docker pull neurodebian@sha256:58801ff54161be551d88b2b6cadf40226aa6c207e32176eec6c2607d5da25050
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:9b19c1b2c1a1aff0b779b31106c8c6977e401c7bc7eb4222b78ceadafe27173d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33437491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfffe0c237e5a29bc9978e75e983b7ec2f6f68b76478e6c1bff1f9069a4620ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc315a73e76806adabebfdd7ebbc8eaba9b76012f40d814bc06f81d06773a29`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 3.6 MB (3565496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9725d952dce81df25c27200a713c7553faf1412b13d7279f2b374168056fe861`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657d3a51c8e22c59976971c47c8041b344aa05379a29295c97ca062edccb1503`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895f6476298a9aaaea9e6efb2639400ce2e644f8530ac0bd89c16e13f7e9ebc1`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 105.0 KB (104969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3ee628290b026fd6bde961cdb3b3a6bb2a017b0bf77ba26dc61a4b54ac5250ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9de808efa5d508f32c1f9a485e6798fb7b54e77fd8ecd3d6daee01b9b906835`

```dockerfile
```

-	Layers:
	-	`sha256:52702290ad8362d508f30997735653688be4ac400fb63ad5c5d315bb51722717`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.1 MB (2120957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b68086f313f9e34d3660e62d10f8723970a792bc254c91e845a693e8eb340a`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c96d346db15c3af6216c8658de9ad1624404637be0613e91c56887a324838c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32613032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47eadcdd755b194e5c1343fc3823f2aa82b7857676a7cb42804866d996573a15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:25:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:25:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:25:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:25:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afae30e241b880900c72fa4c77cf99c149895a213b3a0cee169021ac796d811`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 3.6 MB (3562819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad53f6fbd8d98b66371aecdf6fd0d3e0026071c99cfbb1bfee651c30a3ac0659`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619ea9cc50a6f98b3c85ff3286e5979ca8ddf365e910ac42b219de4d3966f650`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e30da8470aca59b0563ca2398042863b39130a14bd1947ea3d07811c30f3c89`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 105.7 KB (105724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:48f3fb533258d824acb3036a44c0b75c4223c10d62fd3de5ff0ff4ca1a5b69aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea60d17672d529dbb6d6e16267cd304a27c7ad7f91914a72c9907959c94b3647`

```dockerfile
```

-	Layers:
	-	`sha256:6d0340c93d62b133fdf56c8746d75ea7ab780466918c276c500d20cf287a158b`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 2.1 MB (2122002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45c4d5c445dbbe55d519a86daec001ca96588eada106532a46aa209b6ecd156a`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04-non-free`

```console
$ docker pull neurodebian@sha256:701ad84cc7a2d6028eb55a604056d4a04cff6a7b783bf04920ddd24215d4ac23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:e3c40938ddc0c506be4f5871043d4a9ad85b04d2da486df38d8a08e17c45275f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33438067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab75ae100831d74d6d246dfc73bd6954dca68ec0a7b6882d77b36e8e5c0265f4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:38 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a27d9e0487a92860ae82b9aa8d3ed1785f3ba2cadbec20d1bd32da05983f35`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 3.6 MB (3565571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3555b4e752da60bc5b6cebf1563dcef4b61820ff68e2dcccd0f03ba10142b29`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5a60d028de043838fb7dc4762834436b5b9783ad9085e2497118b43789d79c`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1638425659dceea5acac4b3cea883c638e1484fb2e3c61a61f765a4656d46b0a`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 105.0 KB (105036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cd3c67a4ed4b2db196e9c4bff6762c1b51be8b0602c9fc33a37f12ba343b06`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7b450f7f9d9933fbd6667275f8e0c47ca4d9c6db827cc682cddb49641755469b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767a8889042e5a055542b2cdf687e66bef97ec71dd43f6a4c40c8ec9a3ba8f1a`

```dockerfile
```

-	Layers:
	-	`sha256:dbcf6b7070419655497b8b607f0446f976a41703f43a972acbf4deba59d3be4c`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 2.1 MB (2120993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4081f2909099fceb9421c028841a6d5a4c84f956f208949b0a3fa00537e9b7`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:309dca038676e4a84375cecfc6aa8622006c2bb1c22e8fddda690380c800b6b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32613506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebad1da9179ebbc07bf66f0814e4ab58313ac9c4e80405e2312d06c420dce12`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec1e193682700888a7f72ff8947afbe21aa5c4fb367b64929ef7085f35f265f`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 3.6 MB (3562784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab8bdcac7cfb353988aac4698a054c5b487b3577bff299ca160e0a38ece40bd`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e33acc1043793245d14ef7b90e978fcffded57fd9c6bce0bbd10ccdc20bd62`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9a69acb2eb1e9d4c5f4a79e39f972711c69dcb02e158c4dd616efb7ed55249`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 105.8 KB (105801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79855906c15be91997ba6c0029975b50095f78633608ed63e81e0280b135c0f`  
		Last Modified: Wed, 16 Sep 2026 03:26:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:019c7004af36d5911e9f277fc7ce1ac4cc06d37a7aee9bc7da80e69b0a75eb16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c8c1dead0c2e8502129eb128c5a67b16658ae72cb67f406049631e36ebfb37`

```dockerfile
```

-	Layers:
	-	`sha256:e7a9ae54a49cc691f916e9ecf1b1fcedaac23e01da533c845dffb95efcea169b`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.1 MB (2122038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44174789e7a1c67f7b18fd6516a3ce2f225e0f977560a5e2e56381f2b1563fd6`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:58801ff54161be551d88b2b6cadf40226aa6c207e32176eec6c2607d5da25050
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:9b19c1b2c1a1aff0b779b31106c8c6977e401c7bc7eb4222b78ceadafe27173d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33437491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfffe0c237e5a29bc9978e75e983b7ec2f6f68b76478e6c1bff1f9069a4620ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc315a73e76806adabebfdd7ebbc8eaba9b76012f40d814bc06f81d06773a29`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 3.6 MB (3565496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9725d952dce81df25c27200a713c7553faf1412b13d7279f2b374168056fe861`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657d3a51c8e22c59976971c47c8041b344aa05379a29295c97ca062edccb1503`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895f6476298a9aaaea9e6efb2639400ce2e644f8530ac0bd89c16e13f7e9ebc1`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 105.0 KB (104969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3ee628290b026fd6bde961cdb3b3a6bb2a017b0bf77ba26dc61a4b54ac5250ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9de808efa5d508f32c1f9a485e6798fb7b54e77fd8ecd3d6daee01b9b906835`

```dockerfile
```

-	Layers:
	-	`sha256:52702290ad8362d508f30997735653688be4ac400fb63ad5c5d315bb51722717`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.1 MB (2120957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b68086f313f9e34d3660e62d10f8723970a792bc254c91e845a693e8eb340a`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c96d346db15c3af6216c8658de9ad1624404637be0613e91c56887a324838c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32613032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47eadcdd755b194e5c1343fc3823f2aa82b7857676a7cb42804866d996573a15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:25:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:25:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:25:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:25:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afae30e241b880900c72fa4c77cf99c149895a213b3a0cee169021ac796d811`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 3.6 MB (3562819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad53f6fbd8d98b66371aecdf6fd0d3e0026071c99cfbb1bfee651c30a3ac0659`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619ea9cc50a6f98b3c85ff3286e5979ca8ddf365e910ac42b219de4d3966f650`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e30da8470aca59b0563ca2398042863b39130a14bd1947ea3d07811c30f3c89`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 105.7 KB (105724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:48f3fb533258d824acb3036a44c0b75c4223c10d62fd3de5ff0ff4ca1a5b69aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea60d17672d529dbb6d6e16267cd304a27c7ad7f91914a72c9907959c94b3647`

```dockerfile
```

-	Layers:
	-	`sha256:6d0340c93d62b133fdf56c8746d75ea7ab780466918c276c500d20cf287a158b`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 2.1 MB (2122002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45c4d5c445dbbe55d519a86daec001ca96588eada106532a46aa209b6ecd156a`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:701ad84cc7a2d6028eb55a604056d4a04cff6a7b783bf04920ddd24215d4ac23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:e3c40938ddc0c506be4f5871043d4a9ad85b04d2da486df38d8a08e17c45275f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33438067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab75ae100831d74d6d246dfc73bd6954dca68ec0a7b6882d77b36e8e5c0265f4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:38 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a27d9e0487a92860ae82b9aa8d3ed1785f3ba2cadbec20d1bd32da05983f35`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 3.6 MB (3565571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3555b4e752da60bc5b6cebf1563dcef4b61820ff68e2dcccd0f03ba10142b29`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5a60d028de043838fb7dc4762834436b5b9783ad9085e2497118b43789d79c`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1638425659dceea5acac4b3cea883c638e1484fb2e3c61a61f765a4656d46b0a`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 105.0 KB (105036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cd3c67a4ed4b2db196e9c4bff6762c1b51be8b0602c9fc33a37f12ba343b06`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7b450f7f9d9933fbd6667275f8e0c47ca4d9c6db827cc682cddb49641755469b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767a8889042e5a055542b2cdf687e66bef97ec71dd43f6a4c40c8ec9a3ba8f1a`

```dockerfile
```

-	Layers:
	-	`sha256:dbcf6b7070419655497b8b607f0446f976a41703f43a972acbf4deba59d3be4c`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 2.1 MB (2120993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4081f2909099fceb9421c028841a6d5a4c84f956f208949b0a3fa00537e9b7`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:309dca038676e4a84375cecfc6aa8622006c2bb1c22e8fddda690380c800b6b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32613506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebad1da9179ebbc07bf66f0814e4ab58313ac9c4e80405e2312d06c420dce12`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec1e193682700888a7f72ff8947afbe21aa5c4fb367b64929ef7085f35f265f`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 3.6 MB (3562784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab8bdcac7cfb353988aac4698a054c5b487b3577bff299ca160e0a38ece40bd`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e33acc1043793245d14ef7b90e978fcffded57fd9c6bce0bbd10ccdc20bd62`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9a69acb2eb1e9d4c5f4a79e39f972711c69dcb02e158c4dd616efb7ed55249`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 105.8 KB (105801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79855906c15be91997ba6c0029975b50095f78633608ed63e81e0280b135c0f`  
		Last Modified: Wed, 16 Sep 2026 03:26:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:019c7004af36d5911e9f277fc7ce1ac4cc06d37a7aee9bc7da80e69b0a75eb16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c8c1dead0c2e8502129eb128c5a67b16658ae72cb67f406049631e36ebfb37`

```dockerfile
```

-	Layers:
	-	`sha256:e7a9ae54a49cc691f916e9ecf1b1fcedaac23e01da533c845dffb95efcea169b`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.1 MB (2122038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44174789e7a1c67f7b18fd6516a3ce2f225e0f977560a5e2e56381f2b1563fd6`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:3ca2e249b8c2d450b37ffbb4fa779ac2ce6ace98834b7a5bd2eeca2bf65942fe
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
$ docker pull neurodebian@sha256:4ec624d79cd1f1ff38bf34fca68d64f943e7280f4e3d2695e34a1b3748015503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59767586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5a4a95a21347bbcf9616db2ce3f6ffbae1a99ea030f4289dec7f1d645e4ecb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0367881a5546db8ae8f03b855dd5e60310d5d38bc7ff29497f1714e6bf22656`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 10.3 MB (10294185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6d317407eadefc66a2ffa0197c1416d1c24253c9d17bfe859ef491f68f25cc`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ce78390911c1b529ca57723b701de78f57424f1ce744143007aa4a72312071`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ff5a57dbab74a1af7bc8e5843c7d706800a036931e61fd22a13f3ee84c0740`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271eae8fbb0331a80b2ad033dacedc230f7337edf4f3c4b35303235d3779911f`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:af56ec24745b9028c1222c57cacbf6587c4b11215890466fe82dc9b855d4975e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785bca50b95e664a0e580cd391083130f97f3cd65f5ba0d6dd8bb1cdedfd7835`

```dockerfile
```

-	Layers:
	-	`sha256:b396fa5a856ac258e5878b712f757bc057b614b18e07433a4bd19fe4597c27e7`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc962873d5b6ee34b2a88ce01f4ed7f1f6ec732b8b56431c80830189a4daa548`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0a6dc589dcea3f456ae11babee4553ac8057a46831c7da594243037fe8b44163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59922152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52535d8358a3b3573e0e36f2b820c9a022263b18fbe15a399fa49d14b511a66`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d01be2ce3ebedfb9b1f4041ca2e848f400243ee06b5c4ee9d854c8651192c9`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 10.1 MB (10078901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0485ab73e1f08c621dec2134ef63a53f838a494336ae2a7c94230a707c3820ef`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672da0e90647ad0d6df22c8fccd43f46b5cb81e0c1553b202c851bcc8ba7d93b`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a911a26847efe966ef319fca205ca7f1e57d4db1568e2a195e4d452f61fb44`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 91.1 KB (91066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0447b50c5b678fa54849cf68086f98412b5dbcdd49cc70a5f00f0398a2573425`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:01e58f3cfa0ce80e0ed4c9100bba87193636c9bc59f9504724b9a1f2ee942a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379b17496d067d4f399df9689e965e316329e327511a59433d8a9e16c7751e31`

```dockerfile
```

-	Layers:
	-	`sha256:793a027a91b70438781256b8691ee5fd4fcebff48efb54623f3424f062a6fa31`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6704db8fffe8b702e8301794f06da5e4d8fce0372a5bd0ee6b810d52ad2b47f5`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2832a4a7946547c0ba3b0871a1a83e575f59bdbca15942a28d4a3491eac5101a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61455031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd56dcf8bf15db70121b466eaa3ebcf3733a71faf6ead050eb3928dbea44195e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71b2049994e2416b737a337023a34dcf010542d8a6e2466f228e488b663c295`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 10.5 MB (10468188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1246ea00c166202d1ac6f52b5dc4ab8bbb02494cec4354f7ffd69712839f4a10`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe03eb59cca14b5b355cecb8c2a575e1936a99febed3636105bfb880c11e449`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5bbda427b2c03b54929cf285efb9cbf6bbc274e5a28250aa9f924fa73b48ba`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 90.8 KB (90778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b3e2437cd25adcd39dc1b805860b0cc7e25a0e6868d9a17b88780a674a9416`  
		Last Modified: Sat, 19 Sep 2026 00:51:01 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d482154ece938f9a91544df9ca3b81e59d03ad057c2cae674c8eb002e61bb897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca04ea7e1e84a774e6c2e678f30cb6ee7c9cfd17070d0b9f94ba85fe76600973`

```dockerfile
```

-	Layers:
	-	`sha256:5122eb46b1d554ad7a118eca9a50c4bbb1dc22bce0e73f92e8b7052c266cd3bf`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7593e8784ad742a7970772a0c45a71f9998d14415b6b78efc7d970027793ba3d`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:c36d242c086f61c313cc0807c2709f1b2cd126a569f0bd15662683895a2f6d2f
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
$ docker pull neurodebian@sha256:eb1fac46061b4ce79c0a4bf87072386e1d7dad45b1b64f8ede1c55b80eafd42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61406373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb59873a7ea568d7ce600523318ce05958a005747cd07cb7c8126adb2477037`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:48:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cf3778bf93cba832e9fbfc5150a00ae0935dab949016f111c36e9a06cca9e0`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 11.7 MB (11663859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2093be38388e5b08b786d586a4dbd531cdd4f7d3e1b78c60be2eed2e9a9bda7c`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e4293ce6449e672ce013b05c4615ec92ea884549023df8d232fcfe803b9a63`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620daa8c2147324e68fce582829c60773c0aefbbb7d7292b5e72c250f873831f`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 90.1 KB (90149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7e1b6c506d4db28e6c8fb5a3dc25a2aae3b8759d7cba6dd2cd3e7266b7d6e9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3608485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fb8e9f05ca8319842672e39d9f84b926bc16bd15391067156d4e55570828f5`

```dockerfile
```

-	Layers:
	-	`sha256:47a1e3eba62f652b9398f5a70688c6f9cb2e3161e7dd571d4f12da45661e8c26`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 3.6 MB (3594581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7fc3f9c8265bc493e3ba4ed2a2a88fd1e15158fbe54fa4c7bdc64181e31c92f`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:43b72e96dad527ef40df505257c560d0e2ff8afda7402f1ab645bd7301b05aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60319844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ccb14c48fb0c671f756d181010445c73ab0764ca9c8431d22defcb273958f4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6553d039621d54b228abfa2251149e10503b7797100083c6c48e5a257aad9ee1`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 11.2 MB (11181595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535ce5afb84cbc0dabbbcc9db643dc4d90e5e6c3e4a2991e3d0698c120e76752`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c60b96dbda11c56815e2646d56a029196f11182aa1b3aa518986a0b26984add`  
		Last Modified: Sat, 19 Sep 2026 00:51:15 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f1d99ef42bc4eaaf8905cac983115f8a59a740264da5a09bbe5eeb22db7182`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 90.6 KB (90631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3e306e8384540c9371f77f9c720460c082e71a4f2eb143c3f457df364ae32ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3612094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5bea05659b46a2c96b2b6e316f67a17dfcd923c39d68c45fe29e1412d499f9`

```dockerfile
```

-	Layers:
	-	`sha256:498cb1201341ce741b5f2b6c2e15d93716018d3b71db0dc357a0dfe95dc3a10f`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 3.6 MB (3598065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78a3b600b4b96300250aa8df855126653215c628fac602e0622ed122529044c`  
		Last Modified: Sat, 19 Sep 2026 00:51:15 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:c592a000c1b63c25073b9b407d372543248be8bde9b94200c98e1f6788cfc51c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc47cde5a48049fe07c4f7860aede40458647f9dcde9c910d262bc61923a3c3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bafc8e3422117e9c2a2052ba28a3c5d393f9faf7519df5c1969eb2ec2fea8c5`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 11.9 MB (11854723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477f23ba623197c08511de994c10e4d5587bd8935a107587dd199e4a26e30d75`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9197f254e6455d75d2d13ee4bfe9ea0e9dd553de26c5c5acfe010aa79efc256`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8785af646e2c7b65f7779ceab37c566b21d669d63a92067c1d8f26d6fcd53c5`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 90.5 KB (90467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8a3cfac5dcee0f485bf4ab071b81ade87958ec49a13785cfb40f925f08d00e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3606304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c06f3747aa036800f251c37917555e248572ac48996da4189219ba9b2f3b2e6`

```dockerfile
```

-	Layers:
	-	`sha256:e5e93b3413448fb292c874be34acd72c4a92d176c056c48806a6ab397c451e52`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 3.6 MB (3592428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7effee3483ad2ccd6334c2bf4f6f9651049385db3952f1eb1bc75cc0ed4474b`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:cea2fee2b91b99f8f930e00a82b2c3b92c679cfc69c02c3207e74c814de813d1
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
$ docker pull neurodebian@sha256:a0d4adae7c085cdf53378711dcb95ba4cb85cdf80cf5065a43506de5fa19b7f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61406833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0409496fb195739a1827650db21c9986dd53e61640a23a9202cc5363bb81407`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:48:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:12 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0adda06505a7982b44c9287080b703a6b8b8b8a1c11235f01a099baf743798`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 11.7 MB (11663878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e44cda7a07672fa95d5307c9bb8757fc367d6e192508ac203ce926e4977ac`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9406832819a5d3afab626c9e994bdfc1c44dc8e8f84f3fcc75fe2a9e3f455ad`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041211460a8daf3ac6c609bb062dd295069b198e207206981f55c4ed4cb9b841`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 90.2 KB (90169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa559a9ed6787856a15539a3ab479c3e6defb1412b3f16849b35b6d7f481539`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f5156c697f587948ec5d04a8d4684d18f211a988eb34cfbe81476b999d103e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3610547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73cf910dc32bfe9f22a3d160a0eb33993e13f802f1dbca33aa87692dac1be998`

```dockerfile
```

-	Layers:
	-	`sha256:d35fd8e0a6e9d87e3f02bf7086f75cd5eb33b65910ffe8bea0fd45245f6fe8bb`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 3.6 MB (3594617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10250c8257232e7374e9b9e328e9a82d6848d94a25874d88f13e782fb176224e`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 15.9 KB (15930 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:975b400a09eff14bc81c1f4f2c677ab8780d4dcdc043f738ef37437b35d9ddaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60320259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7d055bf8891f90cfd1f09da901af2cdcd7dd3c3ee7f585e999b49f3a986fdf`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:05 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6ec95f7cbe483825d0a3cccc665aceb28c6394b417fb39fa11300964b71a43`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 11.2 MB (11181604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33ff6cabd73436bcea42548f158f3befe0d5a8893962c420421a56938437888`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90da45483b4f4669ee8465cb23ffd9a89217e115d2b342cc1e5a23ecfea86a2f`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20aa5cd6b061bc100bad1803aadeb7ddc2b828288fe239063b5b54e03e89816e`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 90.6 KB (90617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee64325b69ce42b500803b793172cbf466a15e527343e331284c6909da96e12`  
		Last Modified: Sat, 19 Sep 2026 00:51:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ebae81bbf13f8e420ee3063c1815bd4e5914f0e33ae0f48bb2577f3c7c3fd834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc101110dc1671d243f07f4cb3cf8585ab6fe0eb98eeb1049cc0a40ec3e66c73`

```dockerfile
```

-	Layers:
	-	`sha256:30cd89fa65c0a0bb374238e00212ea043b36eddbb211a21165af31e6033dfecd`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 3.6 MB (3598101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cad304ee1652fdecc628a0fb6ca38bd1269084e42fcd45472c0b7654eccf9cb9`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c3111fc1eaf0c4ed8df3cea8d061afb087e30341b25e6bdfccfc317de6202cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62701307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ecc5d11dd7e4fb3f61f656d1a9ba5b117e22f4c71f215b8e3d5330b60e0117`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:43 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:48 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1350b814dd95fbeae626c52a264a84a9586792815ed6ac8598609340a8bd21f0`  
		Last Modified: Sat, 19 Sep 2026 00:51:56 GMT  
		Size: 11.9 MB (11854721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63320330bf3caf0665fe3ca5d04752438a094e86418abd191fb77beb40596663`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91390e469230c29dc4b33b53cb79f6906e79ed1966afe094cd17ed5ba5d65bf`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3621564037bc0bb89e8cf0a985f8f1695408bba037d61cc70c8767b5048ba023`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 90.5 KB (90456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1ab940488d3a70c5d800e46601e3b2af52e8e1afabaa2c780d1d65bfc1f974`  
		Last Modified: Sat, 19 Sep 2026 00:51:56 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bf0710c6ff846291407c348f50c5ed19897abf00aef758aa89a6aa8c7f12daea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3608365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b22a0694b2ba3361e8bd064afa0ab01f1a09c087a254bb256c6e21e843f08d7`

```dockerfile
```

-	Layers:
	-	`sha256:04fa6e2b7c2ae778869ac09c8dca8b0e600bb396fec27ca56c1c01fdcf341887`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 3.6 MB (3592464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1aa8b4749f166b34044a989db380efec8fb66010a54be4caf3395abe7d3615`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:8baed1aa42f237c821d32b17d3d45a22d607964a6fab038131623dbead19d4a8
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
$ docker pull neurodebian@sha256:e112bb4fecc99cf5388ea839eb24350ca1c7d44fc708d8bccffa075ad6291547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59767012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd9f897e4e0274bb065566e3e99e6fd63610cf96bc9131127bc5f7e8027c1f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2972088658410b71563cada8f6ec35b75130fabd7c5a359beb9ab7606d773f7`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 10.3 MB (10294045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952405f199ce2ca01739d653b47d1a3e897288819cffd85de7b84733ca67e16d`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4939473def3c131bba6a2dd387be11ed60df97a2653826fb4bf87c597f4a864a`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e081c0831a29cc956f3d02899d6c35b87b9bb206afb145d5eb27c41cf9f0d7da`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 90.4 KB (90363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:682b479f02fe8f39084ed6e8b25d79cc0d0948cd663e4a8eab410e6ace3d5a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7625bad3eb6e3197a84f6c515aa5b8864b0e025d6bee179190afe1dd21d6510`

```dockerfile
```

-	Layers:
	-	`sha256:1dad8e345dbc5e7e9775b513f2137aacf511938240de77f89f2644eaa0d4b212`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f60bfc0c8ed75cb19ef487b5da1165e8d54c939095a89ccf355e1595b6da04ab`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b4715bbe367b1044eca950768d158c62b201e8b49509d62950e91242e228a956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59921697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa4e292e85ea0c8af65d9ea0bb84c86ad02596f1b29e47f2ff13c9f63d77df0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce2a04bdd86f4531cca4b58c55e29d40f4eb4a2a2122b4946e4320798e379dd`  
		Last Modified: Sat, 19 Sep 2026 00:50:45 GMT  
		Size: 10.1 MB (10078900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadd522674afc082df4f75bf48ae852558ad649cf485374cc723e496e905c8b5`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20816507a171c5b4ab3d3eabaf694a0c511e0842818b1f538fd74cb0d92aa13`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d8e7bde1ea829977436c1d955e6b670fb493134b6668fa95a8208d807cdcb4`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 91.1 KB (91060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:00dbfe35e64df0119fb772fd175858a6cadecc70bc2a566ecbe4cd8335d6bcc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091835b62902e35ef3ea36d7a59c39a6cfc21d9cf08bb547312ee44456d701e2`

```dockerfile
```

-	Layers:
	-	`sha256:beac648e06871dbca392fa86aa7ce3ff747c21f30234f0ad7d6a6b8aa52e20c5`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9183cdb4442d78e56f3494f152cfc63fa2c3604da53df0b1a4bd6021cc52fd4`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:686a4e4d58f7740c0a64d598ee7c21ac638c96d1949f2d585f9585efe73a36fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61454641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc77fa0555331d0af340cc1b31ee036cd08e9a33c0477e14656f5ca5cf097c5e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:42 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:43 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080ed46eb5043fcd29cd9306835e14ffc870961fba152f1852923fdd0cf8b2d2`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 10.5 MB (10468253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda063596746ce5cca8e6ca396014e4caf0ce8ec94723b8b6ac7b196fd89d7fa`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c49f590018a933d87824d9073b9e5958b71c5928d42232df8ae35b4a22c28b`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6112706c26b1a5bb4e1dc447ff9850b1058cc3b0e7a5aab4f29904bea862063`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 90.8 KB (90767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:56a965ec8f3edb58b4ebee0f41a973ee484966ad87832cd451b86771f0d74771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a1bdc7d2e9304ac3926effe95e1d035d035abeeb909470cddbc69edbf88215`

```dockerfile
```

-	Layers:
	-	`sha256:3c630b90916831968fee09b3de48242b9cea70badea5adca85c75f5f3f281740`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e56702097d4d947483ae9500ee7903c19925267f6d7c246a71defe143990fad9`  
		Last Modified: Sat, 19 Sep 2026 00:50:55 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:3ca2e249b8c2d450b37ffbb4fa779ac2ce6ace98834b7a5bd2eeca2bf65942fe
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
$ docker pull neurodebian@sha256:4ec624d79cd1f1ff38bf34fca68d64f943e7280f4e3d2695e34a1b3748015503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59767586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5a4a95a21347bbcf9616db2ce3f6ffbae1a99ea030f4289dec7f1d645e4ecb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0367881a5546db8ae8f03b855dd5e60310d5d38bc7ff29497f1714e6bf22656`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 10.3 MB (10294185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6d317407eadefc66a2ffa0197c1416d1c24253c9d17bfe859ef491f68f25cc`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ce78390911c1b529ca57723b701de78f57424f1ce744143007aa4a72312071`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ff5a57dbab74a1af7bc8e5843c7d706800a036931e61fd22a13f3ee84c0740`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271eae8fbb0331a80b2ad033dacedc230f7337edf4f3c4b35303235d3779911f`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:af56ec24745b9028c1222c57cacbf6587c4b11215890466fe82dc9b855d4975e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785bca50b95e664a0e580cd391083130f97f3cd65f5ba0d6dd8bb1cdedfd7835`

```dockerfile
```

-	Layers:
	-	`sha256:b396fa5a856ac258e5878b712f757bc057b614b18e07433a4bd19fe4597c27e7`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc962873d5b6ee34b2a88ce01f4ed7f1f6ec732b8b56431c80830189a4daa548`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0a6dc589dcea3f456ae11babee4553ac8057a46831c7da594243037fe8b44163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59922152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52535d8358a3b3573e0e36f2b820c9a022263b18fbe15a399fa49d14b511a66`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d01be2ce3ebedfb9b1f4041ca2e848f400243ee06b5c4ee9d854c8651192c9`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 10.1 MB (10078901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0485ab73e1f08c621dec2134ef63a53f838a494336ae2a7c94230a707c3820ef`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672da0e90647ad0d6df22c8fccd43f46b5cb81e0c1553b202c851bcc8ba7d93b`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a911a26847efe966ef319fca205ca7f1e57d4db1568e2a195e4d452f61fb44`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 91.1 KB (91066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0447b50c5b678fa54849cf68086f98412b5dbcdd49cc70a5f00f0398a2573425`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:01e58f3cfa0ce80e0ed4c9100bba87193636c9bc59f9504724b9a1f2ee942a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379b17496d067d4f399df9689e965e316329e327511a59433d8a9e16c7751e31`

```dockerfile
```

-	Layers:
	-	`sha256:793a027a91b70438781256b8691ee5fd4fcebff48efb54623f3424f062a6fa31`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6704db8fffe8b702e8301794f06da5e4d8fce0372a5bd0ee6b810d52ad2b47f5`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2832a4a7946547c0ba3b0871a1a83e575f59bdbca15942a28d4a3491eac5101a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61455031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd56dcf8bf15db70121b466eaa3ebcf3733a71faf6ead050eb3928dbea44195e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71b2049994e2416b737a337023a34dcf010542d8a6e2466f228e488b663c295`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 10.5 MB (10468188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1246ea00c166202d1ac6f52b5dc4ab8bbb02494cec4354f7ffd69712839f4a10`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe03eb59cca14b5b355cecb8c2a575e1936a99febed3636105bfb880c11e449`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5bbda427b2c03b54929cf285efb9cbf6bbc274e5a28250aa9f924fa73b48ba`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 90.8 KB (90778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b3e2437cd25adcd39dc1b805860b0cc7e25a0e6868d9a17b88780a674a9416`  
		Last Modified: Sat, 19 Sep 2026 00:51:01 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d482154ece938f9a91544df9ca3b81e59d03ad057c2cae674c8eb002e61bb897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca04ea7e1e84a774e6c2e678f30cb6ee7c9cfd17070d0b9f94ba85fe76600973`

```dockerfile
```

-	Layers:
	-	`sha256:5122eb46b1d554ad7a118eca9a50c4bbb1dc22bce0e73f92e8b7052c266cd3bf`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7593e8784ad742a7970772a0c45a71f9998d14415b6b78efc7d970027793ba3d`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json
