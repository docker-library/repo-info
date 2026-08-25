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
