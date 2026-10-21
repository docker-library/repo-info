## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:4ded2ef8d01c8eb02d6b162439cdf14f2433d4b33b892b9dbcb31f6c67dc36d8
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
$ docker pull neurodebian@sha256:f5fd0e0abf0e567e08ef414751b9fce5baa4172695f999e457189e86fc956a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59891775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66c06f118b477d2b5d4316560f2ac8bd5643b2e385586a610507179dcbb53c0c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:25 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38829dd88210cb67996dd5e2044c8c9fece689f6e2f54714a164e5895165b05`  
		Last Modified: Wed, 21 Oct 2026 00:49:33 GMT  
		Size: 11.3 MB (11273651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8628e6ff3b566acefa4ec1ca3d5222005046189865cf314f459539a5547a86f0`  
		Last Modified: Wed, 21 Oct 2026 00:49:32 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf9f97c8baf004b079e1e5f73936153e2c21a68b7c6c2d2f3b7aa80de7f8063`  
		Last Modified: Wed, 21 Oct 2026 00:49:32 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd05e9279fdb69bec1752dabf5294ef54133d813577a51db31cd80401513ef01`  
		Last Modified: Wed, 21 Oct 2026 00:49:32 GMT  
		Size: 93.4 KB (93415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdf082b1ebd9d5c411fe0b348d2c605d59beb5f69e994490b2954ecaf9819f6`  
		Last Modified: Wed, 21 Oct 2026 00:49:33 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:10a76cd880e1b89960f0e1c4fae46c2421b068b920b79879b8afa63ceb4cb2de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84937f60fd6d21362bdc5191e241f74e81cfe0032073627d7fb6f7f17e7c7b70`

```dockerfile
```

-	Layers:
	-	`sha256:23d65ccbe2b3850a94844ac57b9beca7d3bd00b2813a063d9bf151f9bea77ff3`  
		Last Modified: Wed, 21 Oct 2026 00:49:33 GMT  
		Size: 4.1 MB (4076023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fb59cd9be963cf3394c7205d3fcbfef93537eafe584e930e3f1285841a63bea`  
		Last Modified: Wed, 21 Oct 2026 00:49:32 GMT  
		Size: 16.0 KB (15991 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8244312d8542eb245d75c688924e2b21d9f35dff289fa6d10602457583dfa3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59752176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57f08c054db4988b76f49caaad81c843281c979289af5a91f0aae40b8ec4591`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:52:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:52:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:52:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4512d8c21babe5cded19de45dc0ff20c0cd0e8a05d3ab7ea7cda57c782a282f8`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 11.3 MB (11252873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2ff2d9a1f12b2f69128e45bd37e06870a22ae176699c579d1df0cdd15c7944`  
		Last Modified: Wed, 21 Oct 2026 00:52:39 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70146c87c4855ddf6b893ddc8dc282d643a30235d4e6dfbb4c4a1b41e15fb604`  
		Last Modified: Wed, 21 Oct 2026 00:52:39 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1be998c66763a4d346527622de57c636d995c15a45b37dceaf4621711143739`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 93.6 KB (93569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f48b785be0e62c051ba4aeea0fe23adf37c671ca8077496f1d6f946c047ed41`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:abd76b9f92c51d5a29be3ab2a3ccaa5f2dfb3d03c6687345f6d33e4c0d3d5d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762468d03f0e8e0a236fbfdce0c626513df65e411e2c7ab01f5af835d5a6e82a`

```dockerfile
```

-	Layers:
	-	`sha256:1962abd2deb88db1fc9dcc2d5e2df2e875a2d7aa77d316031d29d5fd60339e4f`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 4.1 MB (4076265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5e9301b580ff683cc82e2630f9d92933e143e9cd8fc10db360a7f4918462a1c`  
		Last Modified: Wed, 21 Oct 2026 00:52:39 GMT  
		Size: 16.1 KB (16130 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a78f5df062cf24d395e82bbc681a84f14bb9988c25fd797f60e76cd906ecded6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61294636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc87f93a0f0bb5008d53d8ef9c5b9c71038f11eee35cbe158f45e5dd124d4ab`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:46:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:46:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:46:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:46:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:46:52 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cfd223b58c6b5d8706e3c64f26bcfe413caf6a3f16fe883b8612a8c7665cba6`  
		Last Modified: Tue, 06 Oct 2026 01:46:46 GMT  
		Size: 11.7 MB (11693246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b89bcb2fdff061affe9b28dd23338c2374aaf81bc73b2b9873b6d4d33e033c3`  
		Last Modified: Tue, 06 Oct 2026 01:46:45 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c14d9de9375a5248373f720823745d0f04bcd1cacedc6e12ef924a1ca9a018`  
		Last Modified: Tue, 06 Oct 2026 01:46:45 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c8e731c24d8e37c6f3ada5b9fd8ef2956d6b5d41db0b10151620bef37d91d3`  
		Last Modified: Tue, 06 Oct 2026 01:46:45 GMT  
		Size: 93.4 KB (93434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3eab5b1aff5ba94fe27e81aab8e3338562b886a3080c7da13c21ead9c1a0d8`  
		Last Modified: Tue, 06 Oct 2026 01:46:58 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:62752fd9f86c80797054a82da18a6bd1c148eca1918c0e75be85c766f4b5d061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d4ec6f0be06ec3dbec7fbc91f4189aa38c69db0c2f6afb354ed9150e0ec58a`

```dockerfile
```

-	Layers:
	-	`sha256:06f3b7fd49b5387b46d06a398e2e9dd3a1a3efba7771dae2e77f0574be74df21`  
		Last Modified: Tue, 06 Oct 2026 01:46:58 GMT  
		Size: 4.1 MB (4073990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5f53840c45164461482f3f4d179d6d1145184aea46722ce86062bf5d4fb4357`  
		Last Modified: Tue, 06 Oct 2026 01:46:58 GMT  
		Size: 16.0 KB (15961 bytes)  
		MIME: application/vnd.in-toto+json
