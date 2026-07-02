## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:96c327245ab2bfbb978777ef8b5a5e6de66b855dfb9f4d5bd16948459c08805a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4f66a662c2f57e5e52bb948f5bdc3e4369cb7469faf00a207e849002e8c76078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33477499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7ccbf92ee9fa9bd6b7d7c9bffd5bbcc8d980a0d769891d9f6b6920ea90edf5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:18 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591fe6b85ffde1608ef57c6ddc36830953a1f2ca0806a18b3534c5e906715dda`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 3.6 MB (3624765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3937ecac07f8ddacebd532bbf92d19c013524a12dd2e0d6b530bc9207e6e0a69`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2340ce9c7d09452bc3d22254be7594139e34e499321a722d264d3dd25e3322d7`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4a9621daa93506c6c182f720a9e1eee65e9b1676511663590ce790925b9d1`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 111.4 KB (111390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baa169c5e6c3b3327189ca883043e4b053b28519b7fc9809b395db52f21342d`  
		Last Modified: Thu, 02 Jul 2026 02:31:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:671c86ea118e0a04da381f07ee5c8a1da5ebc6cca44350bab054c6cfa2d0d827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac3bfffcb46dc065fa85f310c590539168b4159d704506aed7156351b9d2cd3`

```dockerfile
```

-	Layers:
	-	`sha256:e069c6bb3677f1b6c138691acdf7ec0a0abb35d9817db5b22a30d4e1774d134a`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aa58724dd06a34127b10be28faaf68a7f9d6f9c131cb864e1dcc3da283dde8d`  
		Last Modified: Thu, 02 Jul 2026 02:31:25 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:624191a8f9ca7a9fd6e8866e7ddbfd398a669ac9f46bb9cdb06da703cb182de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31335286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f92f6ebb44e077406ced4dfa1cdfd582abc5323f1fa45679aac1fdaec69d073`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:18 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f109a1e0760d3a9c80582931df80e08ea4c5e8f6ff7e17316b712707d4996e0`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 3.6 MB (3608370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469ded10dab061d0898bba8190de43eb28b7dbf76d67e05d7ee68b945118c7b4`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddca9a22f89fab9d5bb7f9c4048863fbc3e7de36c425dac1aff5b30c20b9261`  
		Last Modified: Thu, 02 Jul 2026 02:30:24 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2ae63b2a9bd7aae6bf76a52e0ca6575bb516fcf1e0df86346ae9b293b35899`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 111.3 KB (111269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa171d21792ffc4f6ab54dafba990d37ed27c10aaed936bb33e9e1b3e74e04dd`  
		Last Modified: Thu, 02 Jul 2026 02:30:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:80c2b3456f9788b01fc928d914a4d8152e2793e8f3d090e3296025ca63e29ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5160d69b8f562438770f064868e92f81b3b6044be4e290069db8f8a4971f230`

```dockerfile
```

-	Layers:
	-	`sha256:acf288c6671be5608940f43306b9745bf66ac1c060cfa38ae69e56fb6a8eabe0`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f0230d6d32def98ccb8ea3eade6cd9d098051797993160539e56184048be1be`  
		Last Modified: Thu, 02 Jul 2026 02:30:25 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
