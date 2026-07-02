## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:ef78a3ad6252328c8594572e4daba0dc1d2930c425862b6329c2586b1eecc26a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8392f0f679026475d6fbf6bf6849ad06eb835418b0bfec285091fc4e0d5b3f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33408363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fe1717087a5a29ca290e83f2dfcbf19eaa042ab5ed7ada190bb42f96edfe74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1913ceff7e915116b4e5e378231643b5261622faede59b65c5472f5b853c90cf`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 3.6 MB (3564770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89821e696b6ac322e7aafef3a570ebeeb7820201913b3df04a64d49fb2e1b2b1`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3070d45bb0d391a4a1fb82882452c05203ed4767be3c5721899b9d60fa02d8b5`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e7b1731f988675a6586d855cae67135921ee3c4d2d5b4007ead74361242869`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 104.7 KB (104652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7479d21d1d494ad1b742c2293c6b097a94f198e74e302f267f35c08a2383a`  
		Last Modified: Thu, 02 Jul 2026 02:31:43 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9f151a988d25681b463722de052e0e0d3ee16c29a045768fa415fb2097208efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfda338a0c2d8a6b053080d46ae1661c9593182687fcf695ed5daed17c8295a`

```dockerfile
```

-	Layers:
	-	`sha256:77a772a11c9300add682d77d3fab4cd94b792d19e84f1ec3b5f907c6fcd0b68e`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 2.1 MB (2120953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b71458ad156fd4d7ba77ba0156151a97cd701d4d9ef54a2d3a74714cc88c979`  
		Last Modified: Thu, 02 Jul 2026 02:31:42 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:63ed8e659e7c08a85de4e1a4b3e9b0910c5ba1f6f888e359d8ba2953a1cab7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32554763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4097e7be87c1b8d38ab19e9f990296199a6717afc6523b684e4fa833feed1bc6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:26 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f855e4fbc97bf64ab9df9db1443e3da44c8b35d214dadca28a738618323c91`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 3.6 MB (3561893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981e18d8434a8075cdcc7cc5bad8fe9cb6beed45106a473291b0ef910f95bf3f`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeaf15832f904d7a57e23ad851fc547ef936f0e08d122fcd0418c902dc19db0c`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb7c33d1a83f4aa54f99fc4d0ca3bead65a3d89dd5a9fad38c81897f4f46a9d`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 105.4 KB (105354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edb46da5c9d58fcee61f110ff1d9c0461dbf5ae6f77cfa079b545bfaf231eef`  
		Last Modified: Thu, 02 Jul 2026 02:30:39 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:53c2e4e6f8a6678f3da81a238557d28d2df3b6517c46886b970fa7f89de5cb11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892b67602e4b52fd10c0784fe652d2710989c70bb68fc6730acaf78c9414b5bd`

```dockerfile
```

-	Layers:
	-	`sha256:73ef97f498cc6e87a66a469994102cd7d68a676b0a297f419cdc4c40347de5be`  
		Last Modified: Thu, 02 Jul 2026 02:30:38 GMT  
		Size: 2.1 MB (2121998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f46b080a6b92da71709f3048815c8f29e2bb02a23db107f2c77dcd7f307399a6`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
