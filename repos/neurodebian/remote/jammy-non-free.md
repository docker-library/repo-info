## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:72dfd4d53d61a36406526e5d490e04a529efb4e1e49d9a13cfa74db463565f1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:aa366d330da5d87f5e122658e1f822f9a341950a67d48f343d2078ec9f6eb3e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561fd776a9a4a75f2e62a4b2a517aea50aff61be2653d7933fe8505a7734f1d9`
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
# Tue, 18 Aug 2026 01:19:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedab5ddb1bf6578f39f6cbd2dc33fdbcc88a68a181be6c9f48c819b03ba2fcc`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 3.6 MB (3624867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1824fc5bd77818841a1d604c185ba7af72d8d2eae27d09c1d4145a6db67324fb`  
		Last Modified: Tue, 18 Aug 2026 01:19:42 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7925b9eb1f935de529c44822563c2bdfac7c5690cafc0aa6d9b85134a517d605`  
		Last Modified: Tue, 18 Aug 2026 01:19:42 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b38bdc8074b3ff7d9619aa2f710a0edd828ab6f52ce18394ba22be75ae6dba`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 111.5 KB (111471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79ffb08daaceb848d85ce8185b6aadd659a14555b3be93ecabff9bbd2520321`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:277f2ef0af5c7741641bdade25aa71f09fd5686d92b6907e43a43c2a6e21ec1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ac834c6c607cd41dac1d5bdc46d4f28b2fd95db9927bcd25734ddfaa4711c7`

```dockerfile
```

-	Layers:
	-	`sha256:afb50e1403ba640d40118e30dec61d408f61cd062ed86c444525d322b3d3b2b5`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04c0f2b7759a6ab9294999ce29bedd0a370720ba9aff1a1f56a57561dd69aa3e`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:fd1c123c951e8b5902a958fe49d5e8f7cda641b4958d8a03867363e9d79b7cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae45c95270bcb65b855bf59448c17914029f8fae0464c2e3ac33d3ccd213487`
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
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3303233f378dd86cf77a3d560746289b432ad7b4bf0b9787ae72f585f43e26c6`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 3.6 MB (3608578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7cee341b5475cafafe2e6abd9a19378b48141cfef2550a35210dbb21d37088`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e4dfcac2e6e3a53ce0c19cfea185bfe7d076b4595e2a99afa85d7311187e74`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c459099516e31ac00656fa77639085a7e7eda1557475d4912f12dbae7b90f60`  
		Last Modified: Tue, 18 Aug 2026 01:19:31 GMT  
		Size: 111.3 KB (111325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb8531e4bbefbb0c7647ca1fe68d4d7ff4c43a94f088fc633c1edbf9fc3894`  
		Last Modified: Tue, 18 Aug 2026 01:19:31 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:498fe44317def53d64778ff6ffbb6af731f66fb862927547451fb7022a32572f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27462a1d568d692065d2b4801bd6e13ad034ef4e343c1d937325a1adab6bafe0`

```dockerfile
```

-	Layers:
	-	`sha256:3ab486108d86c421a00bfaeebcc92ba21724774c8f080888bf5170315ecc0d4b`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dba9a51cd7e847826dfbc09f6de8ab48c57d51e5202c408021cf8b7c9e6ac5d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
