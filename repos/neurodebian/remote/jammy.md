## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:ab9cf4485871c3dd9eb47fb2e2981df4e3b0c3ac32f98617afa0762be33b015d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:700b0aafbbee0e55d6c7f085a18b07d65a5c97631d1f500235df0d0491fc9fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e3b5ad3dbe3e712dd0c2a1535c4f52caab81ea5d777b78ef6aeb31217d114b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8ef2e44a3a69d0281ba6056017f4fad3396a2b62aab843e3cc4ab69819dc0`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9a2366387c8c2defc5160c07c6cb7b1fb0de930a7c424b0f2ec41b1a345d15`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419775e147df7fbfb49fbf5490a6691ba9050fe5d0d2e6129143bc6768e1a625`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66390f9da5ab1baa263edca144e8b56c9393f315e3e7a79d8db9404921bc8f94`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5d8ceb9365030a8e7eb95c1a912292a4da3ded5f2d4c92d0703b1dd9f83dbe19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415433ad84c9e55b31430dfc23d1a6d2ef6cda7e80bd8c442330bb680b203522`

```dockerfile
```

-	Layers:
	-	`sha256:1b6f27002f0e1e8ca98b3c0684cf277db67db6c4fc06de4306743485b849a00d`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4240a77100fb2b8db1a2ac302684221ce33ed23196ae53b936ec17b86655a22`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:833114c643e31673574dd1e30a193c07dcfdb23510a2313efc6905447f6fd46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab3fda33941f2a5650a18c9cdce4f81100eb2ddca96e107e3bb602e685b5da1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a3effaf5e12b6751acab8afa1205e3390a8aa1477b0fcc985d863d61ca10fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:19 GMT  
		Size: 3.6 MB (3608545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364052cefec1e8d77a9f9b709718852194bea9cdd07187fa3431fa8de7e51b6d`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5a8482f7b4498345ee397ab396350e6b2cd82ab2839aa66c67119da6b8efa7`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13d5d52634cb4d7db7dc1227f9a93f1cfc05a3397229dabe32993a09c7408fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 111.3 KB (111264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:28b5ab2cdcbd217dc8ad4b00162049acf35a5021a4ac980ab9110edf2da25fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db269c6096ff356bf9ff3cce835f78760a0385721a777ecdb805b75d99e16b8c`

```dockerfile
```

-	Layers:
	-	`sha256:c77d99333e658dfec0182fb77e2adfce5c088a525bf0bcf7f42678d59121ede8`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3813e8b78957f9a85b1cca01bb65187a5cfcb69f875aade18ad846c662c96aed`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
