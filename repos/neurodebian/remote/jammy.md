## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:13705a55d8f65dd6729df6134d0ad3afb07607f9a20cf8987685d4d55dec6220
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:86fbeb3f29a1e117b965a93115c6dda3c6c7c451466b2a8bc73fba644149da2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3ea9d8e05634f34232a2364dae2a67a7f589f6cfb67adf49d2b3e19ba81714`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e044d3d083c15f7b5d83d6c090cbb223898498587b8a48ca6ac3b38baf5962b4`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 3.6 MB (3624872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ff70f22bd2fe734eecb46622d617fd417490bbe17c9c5c97d30e46d9904957`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 1.9 KB (1905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9859f96fa6483dfa40792acf6cc391027f32df83ea8e07518b02fd2b7ab8a13e`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ea1934a4e61b5e46ac8a41cf7d992fa570f3710d5e4b4b6d835884ca99566f`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 111.5 KB (111470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2493a84cdf8de73b7e87a64f96e9843755f423f67458743062c6781c31b76249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf1f1f1272741c9f484aaba469d68dea636fd8f545e6c31ea2dd1365ab53747`

```dockerfile
```

-	Layers:
	-	`sha256:d3622f0227189c1ee58eb249c56a724b42c2afdb01e8ed3f0e44289aa43bc392`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d39ebcf1516c45add7aa941d0ac895b0a50ea4b31a3522dc9bc8bb39e46ede9`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:dea94749034b24fd489c5641b37f65ab10405ee0e78023c6ffebadd62828a554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98720de307e4e68b751c6082d0d00058e9f3415bf4f3f8cc114b4bc14e5f4ba3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f99f27e0eb7ccf53479ca26156f51bf26012dbe8592240f4bae11709ed2867`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 3.6 MB (3608586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6555850d3e3d8ab6a9e1df7dc16027068ed9de7cb5954c9b27c6c06daa667611`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1efb60589f50c2381ee2c45db028b7ed037bea79b5314da166ff3ce40d631b4`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec15fcdef73ad7de5b57ac78cd80d3b2a7ee122ddbfd6a4ea74c4c4fe29083b`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 111.3 KB (111315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4cace0b9c78739e1b561f903af189d8a7a726c63f5b6fd8f169b66a6ab7d5f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcf2cddb420006e9184758bbc06780361c538d94f7bca6fa98b1b9b0463e4af`

```dockerfile
```

-	Layers:
	-	`sha256:e39817a3f2749f6bad4a3c90ef2adde15893ef69861dd30b76998e68d156ec31`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf09072c03a81f18495938d32ef5326b107eb19da0e79aa1953335ecf2b4eaa`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
