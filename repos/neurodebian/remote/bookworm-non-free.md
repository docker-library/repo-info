## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:460fc53c6128ede1f22825ebfaca9d9df82c2f4601a1d9a18e83e6869b951a8b
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
$ docker pull neurodebian@sha256:7e882aa04984647cf7be928d7e17c001f020df485eada9644d014756ced3e426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59887586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf24618f88db8e92766c076df2758de590c132b39d7f4747be0f251c6ce74d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:44:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:44:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13d6386f8d96f2629d8969cab0ac5aed0bf58f70697d71dcde404dd1aed9beb`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 11.3 MB (11273552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125ba8fbcd9d8e979314da1cc41d3e056bedfda523b931d4c60147b98c8ac0a9`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69be17cd5db71a469efd5bdc4b3c9f4350ca455153e7b1e7ea1419415be4403e`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4323e276b75383b14c26284f759b1adcecfbb965a4332a31ddd3efb32c24d7`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 93.4 KB (93388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3d998c08e535c8b861d75af3b2e3dc564baeca33ad2b2d7f53e2d0364cf827`  
		Last Modified: Tue, 06 Oct 2026 01:44:27 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b3e62b71832f2c5ff64531df4310f6b9b264c7f2518164ad87a24ef593e01eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e18c702993a3dc7da0190a78d13b03831e61bc1ca849aa882e4a6b8ed72c20`

```dockerfile
```

-	Layers:
	-	`sha256:8b31406602dead22bb757b58a839959ae940fee3c3e7d2971cfd81ad92ba7c88`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 4.1 MB (4076023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b526519796e317c6003d834e13aa54547ab8a3aacce4128f4ebbc2943400211e`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f5092a2673230c965e49efad08d256f44de38b0a1eec5d29ad8d443d9d1e4bd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59750695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e6ad450d93b9b391ec1f4dcdd5b6f9de64711bf9a1bf9c06d7550e5f7562faa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:47:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:47:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:34 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3f2064f81214338aba899f704f4a9f4281c42ba1afb296012f8b5f359a9d4d`  
		Last Modified: Tue, 06 Oct 2026 01:47:42 GMT  
		Size: 11.3 MB (11252921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd8e2ff82aba0a17baf2817dd4a6f963f9b038992aba01d7e299e2250efca71`  
		Last Modified: Tue, 06 Oct 2026 01:47:41 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6bef3cce6f0591245337f151f716769cc860c50cdbba82dfa100f07d2dba6ce`  
		Last Modified: Tue, 06 Oct 2026 01:47:42 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218ddaacec76d278c6f62363ae9d9210b78af202b71f061e4508a7366fe0f1ec`  
		Last Modified: Tue, 06 Oct 2026 01:47:42 GMT  
		Size: 93.6 KB (93595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b360745e7acd495efff64cecd5f19186436ed643bfa9e0cf8a585f9d4bda5ec`  
		Last Modified: Tue, 06 Oct 2026 01:47:43 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:acb1033d978f73aff73359a06f5baa06bfb33cd7881da70855e871f043632724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8439c29dff4919a4806d73d4fb3cdcf7503a3443fd31f9edb6f95a6b23b29996`

```dockerfile
```

-	Layers:
	-	`sha256:6d0bb619e8d7cce87114a59ad769e81ec50c55e19ad7b46527b62f71d7959ac2`  
		Last Modified: Tue, 06 Oct 2026 01:47:42 GMT  
		Size: 4.1 MB (4076265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e61f178c0775a1e5d200c48ccbba507c5ced17ca192acf9b76512efed45be97`  
		Last Modified: Tue, 06 Oct 2026 01:47:41 GMT  
		Size: 16.1 KB (16131 bytes)  
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
