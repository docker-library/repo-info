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
