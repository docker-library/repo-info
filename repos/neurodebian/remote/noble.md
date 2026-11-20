## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:adaf10aac1ca8159a5d2370c303133449ec85120511143c72527ad05378182a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:9bee7db4597421366f3b04e6677caa3ad30f82d651e57b0e1e938a583787f458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef058236fc5b08a44491062082b76e04c767508748fbf37bdd8a0be4134bf662`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2b17ad41d60c74ef73c73c3b6577ccab99fefc62c583f1083c23bee3ca4254`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 3.6 MB (3565868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f6ed303d2783df2721c57758938f2b0f195874717909424b7e29222c1a352cf`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69fd532793ceeac8f5c0e7825735ab4faab186efc2a3a41b9822183b9d7b747`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de892c9a453b2ec30b6d2a481e2a8afbb86665910e1c5cf625c95b5c3473877`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 105.0 KB (104984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7aaa3e7cd8f9c0abb20727e59d34d2bc729577e122f2d647a645b8b7577de5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbca422b4b4ce22a2c8df68824049504b73877b77cb645852737bbf7ba305ed3`

```dockerfile
```

-	Layers:
	-	`sha256:ea38a503ec3f4d0479d0f35b404ad79cdf137fa0f9af96b10f7c9647c756425f`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 2.1 MB (2121567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbd049b422b794bafb75bef7a716992d293b4b31b38fda3ba2992b230251e81`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:9da792cc13de215acf5b8349177e8161facdd763c08477d91d0fedad4da620bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2384741d1d5dafed879eee286590d71458fcc62873bd05f0388e651c0e2351c0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:19 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:19 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a78f0836dcfd3b146cfd148cef9f1f8dd612f08fa37d512ff08473d57c359a6`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 3.6 MB (3564157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6dba0fbc727e657477e059b9958da33636d0454ad5e382ef6e0dbe33ccf87c`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eaebee1ca7efcca65fa82faaa163c2b85c18b3c9466cd3fc84cd0fd7da9a6d2`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92e9d4d51b1a109ea69d4bcda6192b6cf4160047ac6331091ba06fa6604b9d3`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 105.9 KB (105890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bc3f28b76a5e1487c2367e3920da64e98bb2172a18ea43283761685d1b9a207d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010948a86375d5afb4c614cf47c2a5827439f70f6da23cba4be1c1012e95b537`

```dockerfile
```

-	Layers:
	-	`sha256:757518f23209bc444b3cd7ce115cfdf31f72baf235e6cc8e877f49abeebb33ca`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 2.1 MB (2122612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47104aa164d2f03880eed41889bcf7f8867ab398bb11ad70aecf939da93bb8a2`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
