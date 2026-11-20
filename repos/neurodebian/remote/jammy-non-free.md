## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:ff92d1a66e5c74cdd7b4b2fb9592775377eea48904550122f95466d7c0784810
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6f5e0b9eaf1c85b7c66af78ee27e109e1d6ce5f1e455e9b392f1c1c7167f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33809370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6dcf6a5489915b4953c6b0177dd02ebbe2ec34349c5dda389fb1faea09d018c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d43622fd26cb837486475d5126fc77dde86487f9daafcf9fb5e997688fb982c`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 3.6 MB (3625232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc74c3ac5fd802c4699b868d5fdb3f9d53aae7d1d698d810a530cff1d4c374e`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662409a080c1f6387355ba596a21d3c20fbe57bd71127fee44c5103b20f75b69`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a182ad8843fe7dbba71134d8f7b7e9133757800f61ea5f793a761ac6d7b6eebd`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 111.9 KB (111859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995771b610572e7fc912dec6d14e9300ad15b13dee8d854a3892453e5164a710`  
		Last Modified: Fri, 20 Nov 2026 03:25:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5343f9f5c18e1ea713500e1f3de1a3616abad9396338ece84556e494934e3e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a17082c58e62b4d1ff0621e8aa39d1619a964457ade1c4f81985b2b5018ef79`

```dockerfile
```

-	Layers:
	-	`sha256:48b37580acccffd6aa7efeebf83ee7dbeb3d3ba2c74af911fd81d5331c800e09`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 2.2 MB (2199048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce94e1b160bf47360d15d9b215adc0c346616bc3485b45d387e7491545b6cbab`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ee8a42a78900e4d32968f2b2ac9ec76b35b8b59cb1372bbd7c3f2abd60192ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31725049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6230e25eb2bd03b2fc8bb9d221abe477ee3fb6587e3821a0d2a4395a677b5bd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3952e5f00e71a2463aea1892a9f95cb3198bc83f65bd59a4d2bb91a6bdb5a753`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 3.6 MB (3609359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6210268f0044f7b81903462f97a600067d274a941f9c1f452fb5c8a2b08a227`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0e7b005efebedcf3b80d8c127d2b116e82c154248ea7ee91808bda097a57aa`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb26e538dd5e9e3b067e65725a0f868d209f0dc98e3add0eebb6cb93e54d3861`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 111.8 KB (111829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9350a55d48f8363c4bc4f39897af23bc824101394ae1a2ce987b261d13b19509`  
		Last Modified: Fri, 20 Nov 2026 03:26:29 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0bc2dc2e720db7c7a7e49d30e6caaba11e0b7098afc7fa38c579372449b08068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ada90101696f9c968d04c33dfdabd13b3e08b36a4c1deb7d138493cb8b2a072`

```dockerfile
```

-	Layers:
	-	`sha256:2bebbe756c98c9a969794e2578bbcd1ce4002ea153d1c19df6c1a010c104189f`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 2.2 MB (2199308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89ae3941c06f2886b2d7832dae1ae2f6611b45c0b804188569a63b4e72fe1077`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
