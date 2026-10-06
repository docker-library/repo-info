## `neurodebian:bookworm`

```console
$ docker pull neurodebian@sha256:b0a8b5ddb755c75ce224507e6abd64f2cadf6735a82c2372039932d4810e0cd8
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
$ docker pull neurodebian@sha256:a86f8d040a69dd5e304800d9fa4a545858a2f3f170be0d3a80d78ff6a08970ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59887094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e4965b9ed3617c90541e93497b01dfa92de4737d5ee053c1ed7e4b9b102550d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:44:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bbb8cb250eda839d01288a50b5d4f86de31d0b8eadec05c66303a0d250a5d0`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 11.3 MB (11273511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2579a8a4d47b202192978fc3b5ffb03d804234f5de304fd998b52771e3f65c70`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3f9a4cc50b0b0d4d5b99e09a41c956e896492a51476e705cd9df1813ebce1d`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df329bd878b14139705557afe9c31b9bd07cb9062a1c3d9dc170b6c489d232ce`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 93.4 KB (93386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:de420bfe34bf341c0cdd256e230f76ae14eab74c73f9d6d6f6bf780e91290fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e179c344e61eb3c0bbf5a8cd8ab73f0b64d60285af56f58106fbf6a0d579941f`

```dockerfile
```

-	Layers:
	-	`sha256:f68a540acd09a167b0cca4817cac8e4713a29532aee43f786e64511a46f3cfd3`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8604626386d6945889d6cea5239a92b7e12a36e99dba6c148abbb34625d36ad6`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:d8ddbe6f7e3c36309b9313560f7d406b586ebcff984e9e026da3e731cbb3f000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59750152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66317b3a3d2337faef6470904a41ef93641bb60ff012bc4ff7cbc0572e5e408f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:47:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:47:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9e451b41d6aed0583e5f5f6a1d1ac68a3855b0812288911838b8ae0061e61b`  
		Last Modified: Tue, 06 Oct 2026 01:47:31 GMT  
		Size: 11.3 MB (11252855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366848f46185a55ec400b5fa2a6c976c73f9cdbf5609f52c7c8c2dea0caff97c`  
		Last Modified: Tue, 06 Oct 2026 01:47:30 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1586b098274365493f3c8e44a1f890fb96f3d28efdc42bd3b8abd18f0cb25617`  
		Last Modified: Tue, 06 Oct 2026 01:47:30 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118d76fff2100a78254b65de7d6118b253f65aa7850e9690e692846f7bc9ff39`  
		Last Modified: Tue, 06 Oct 2026 01:47:30 GMT  
		Size: 93.6 KB (93567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f638f9f756a3738f385d5d7d866406d2457767c4832adaedf6ed94a03f942d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e087e195b5ae051ff533dd0150a68c1026f5bfabbf64066c2164564a769cd`

```dockerfile
```

-	Layers:
	-	`sha256:bbdb5bb02ca2147ec741631dfc53eba53cd9cb22b2c7745da2f6f886ab5a445f`  
		Last Modified: Tue, 06 Oct 2026 01:47:31 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d8e6f08bc030bacfed35ec9dc6aa7c8ad06a42df83f5d37c84596720fd84488`  
		Last Modified: Tue, 06 Oct 2026 01:47:30 GMT  
		Size: 14.1 KB (14089 bytes)  
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
