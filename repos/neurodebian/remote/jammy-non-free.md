## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:8f111192f4ae8ee957aabdeb55b646d4c8988be2df610e137ae82704d1887cab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:21641e1625eb1889e78270711ead8e8542a5107b255424161bacf50c6a4fe696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33492273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db38c20e1be6d2cc87544bab49b2fff76d74372236be81b05a801761471ff12a`
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
# Mon, 26 Oct 2026 23:25:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:25:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:25:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:56 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c25fcbc63a622dd8abe0dc3039b88bd0b11073bfc4a63c9b91ba84e603bcfc7`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 3.6 MB (3625397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543bbee463863b12382a2888ef0603b17ba9f9c04a6b2a52a8da3885075942fe`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5369d045908d284e1f423b369f27bcce0dd14d772a783e4ebb274152a3ee0d29`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2987d43e48ddcd82c86a0d9d2cbd2582919c105e839b7865aa8229fd54cc0b`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 111.9 KB (111927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beedfa74342d9c60fe0a83267c3d67b746ff0d2cc74a610e18e2b03b9545176`  
		Last Modified: Mon, 26 Oct 2026 23:26:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:762b128799f3978596b7405373c4a2139825d05ef407fe7329c469b3982f2ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2af14430d7707d0c3cde5a6809eac33b2829a5ec7c9550aab18cedfe4ee4c47a`

```dockerfile
```

-	Layers:
	-	`sha256:6ec79e872d2420ef4c3be83dca6ff3d3fd0ede7812a58233b64686fc3b17a0e1`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 2.2 MB (2198440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94461c6a2babf113639ae13703c147b8b853f9d61338f778ea5700e8a3edf4ec`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:87833152e92a45994ca73875c6b8b28bdd5326cbf7c28250ca32619821001649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31407853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc1a0698874da1b968c6a7b2850f0c798afbeb6a0b48d294f9dd11c4448fd31`
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
# Mon, 26 Oct 2026 23:30:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:32 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5c26a85c6ef3c8eedc7a1a6a6272d7d34385e251858c0eed652d09cdbbb98e`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 3.6 MB (3609133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b5f73f4bc820b3422aef83adb880c46bee7ff0e0a86b7d94490779b6c7ec29`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7212518f53f8f61fbf795c4b730cf1e76c95b0fd88c1d80b8205268d84c04`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac64bd646de94a67ddaefaee1b6b180b589fa3f02d25c3e7639b49f83b7df8aa`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 111.7 KB (111652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60596ff13942e2d0bf750120d3591bb82dd96fa34aed7534de79fd7a72db219`  
		Last Modified: Mon, 26 Oct 2026 23:30:39 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:af519d7a1805bcc47364ca687c2788ae48061d6917521d14e4f41ba8550ff8fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e452174b16d179bb1cbbc4b4d6b38d1782dd5a814b26373117655631ce2060`

```dockerfile
```

-	Layers:
	-	`sha256:a859907729359d562e22b7e4498db7114278c02c53aa45d1aa046bfe038929a6`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 2.2 MB (2198700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:746be575f37b24fde88a08a742251317c22df73abc1ecb55a4f9aecf476be18b`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 16.3 KB (16302 bytes)  
		MIME: application/vnd.in-toto+json
