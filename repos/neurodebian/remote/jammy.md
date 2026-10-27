## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:3f1d617f10ddf9872ba1bc50bbf79490f92c7a791c7c5ef2f2d2f10f7b629038
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:582622a20498d1059ca5029ee29eb086e59f5e4de07b1da5d9156eb808c3c01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33491985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5d7b0d49eec573794554789111c29a425ea5ea0ed63b78eb4d6ec1fb24ce8b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:25:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:25:36 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:25:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5de7708dc49340ae9b2fb48f94d62ca4de7bdfcae187279dd8b8f9b2251da0b`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974f5d6b5fe26a42e5ec3170bf4aa5b84efc4fc4422735654f32cc070b79423c`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989ffdf524af09ee1b7b76b07ae2c3094c1b786cec2883f317500194cf3ee506`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b19d08a18b86e282981854eca7b18333c63ff882e5fc4b3123390ab6e3e916`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 111.9 KB (111926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:17daf1e50b5afe1a790d8dc5802d198bd7326aacc644f1d12d13a9c5dbb3d00e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce80ea1c73670d8937d3824561abe87bae0abcab4ace642b71596f58f428a897`

```dockerfile
```

-	Layers:
	-	`sha256:52df9cdca807254c3209e70a993b01ac0af8b1d226d371aee980b7914b318dd1`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 2.2 MB (2198404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c519d8e4a13c024571766cb20f1f2fe2c629088a80411a8b011eb8a886807f94`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:fec34c82fc079b6fa1c5d715a8e492171880aa73fc2e82665035108b37c0efe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31407583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93388a79f0f872638cce9be14c5c0ca48b968c33037c851ed9c57eaf3ac14819`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f02d6ff0e7d4c049832a47dc3bb126c6efd7caf6846c553be7bf3aa6e7932f`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 3.6 MB (3609128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7399b88a3332c732459299cb02560fbadbb3b35daa2d3edc5cc0ab68fca3976c`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64169e2624beed1c548d0eea4e4c446dbf62172491c18b92d879b3db17eea724`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef02d11baaba5adb6b833bd78911a70b80bc79c9c66fe7798018ee9362a33322`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 111.7 KB (111669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:291cc62a506cfb019048f6d79dc5fdad94a9ce9b1ad9f50a8d7caf1a36d13c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e8bf70300a5ccc621d63a6bc441cd20fe545ff7f7dadeb6177b736e7e0e846`

```dockerfile
```

-	Layers:
	-	`sha256:7aa9beb14a186a7cac645823177d6e25c68e78bd35b830c191a141d7c57b1e24`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 2.2 MB (2198664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fffd49b41420d9f10d08f9f9bedbd07437f7d4a7ecc05487f5f83588ded4572`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
