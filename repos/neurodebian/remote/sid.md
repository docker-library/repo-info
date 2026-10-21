## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:ca7368adaf1298d24a246647c130f035186fae68ea7b7a7f96e24769dee3159c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:e1550b9f6f5dbd9b211aeb349e582bf5852fbfc3ab0906528ae720ea4340787a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61581944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40639283db7ee579c5865343e026094f163f933a829f2c93991db568a0eed194`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:49:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b4e6f7f184eb26c2de69e913d8e719cb6612b69b12932727db49fdb6cae72ecb`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.8 MB (49820002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9692c277a78a41720b76f7c5bf73426b5a3e452ee4e078ae2b585afb7e7d10`  
		Last Modified: Wed, 21 Oct 2026 00:50:01 GMT  
		Size: 11.7 MB (11668888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45d2ce2f6457e6b051eb66d71095a1969ce3f2fb18de97a01fac280693fbe4c`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ef2122d2e24ac1a1769d884a47aded691f55ed732fc90bef52c69a027b900a`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7cf61e55b228745fa229d8c0ccd899467ed26f667fdbd0e796283151ef7d41`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 90.1 KB (90149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7753fbe6878558f84aef994a1a44f04c150af5b4bb16e333b7e5c18d7c720ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b66fd6db92fbfca9d46a5144081a9a82486117b89eba4441661753b621eed5`

```dockerfile
```

-	Layers:
	-	`sha256:04bdd1447fac25ce7b2502305bd50156f55c8a996498b424799690c800566936`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 3.6 MB (3580146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ed962a6ed482bb74334527fcdc7f10b89768bc351e8b8d8969c94569fd63b04`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:05087efd5dbb24a13726f7223a3bee70ab791673a7dbc038f7c736d6a44862fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60425984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc22e2a50697d5731fc437b40dc493405927b0bfa616a134059ee5ecb47c693`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:52:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:58 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:52:58 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:53:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a852280ab724c20edf098a583de2a108807829d3674b7a31f2b119f4ca594b4c`  
		Last Modified: Wed, 21 Oct 2026 00:53:11 GMT  
		Size: 11.2 MB (11181961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b5adee7855abb888ab979c364976e484bca2f6f9fa2b294ea81e75c93c5457`  
		Last Modified: Wed, 21 Oct 2026 00:53:10 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541d24e58f04d900b26a3fb065b86fdf72aa07adff3e2f416924b3455da6fe5d`  
		Last Modified: Wed, 21 Oct 2026 00:53:11 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08a662e02ee118462b09059a07e654e4d58cb08089d0db49542b49bfb9818b5`  
		Last Modified: Wed, 21 Oct 2026 00:53:10 GMT  
		Size: 90.6 KB (90628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e41ae4ecabaa78d6aa81912d833e7bd615d581198751b4ece21df1b47821a9cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3597659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341e5a817474f71cc3e93138852d8240078ded94d1bdb09ca98f211ebb95b174`

```dockerfile
```

-	Layers:
	-	`sha256:6033e8c8c295c8e610005fccd97a143eba6ec8bff60b6d72dbd5a14991463037`  
		Last Modified: Wed, 21 Oct 2026 00:53:11 GMT  
		Size: 3.6 MB (3583630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7f41f9fa4593046ecef29041b7ba2d4f7f44244a968833a7cd8be50a317933`  
		Last Modified: Wed, 21 Oct 2026 00:53:10 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:daafadd7444830e1bd96b650096981018682916aafb48b00655b62fad18774c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62897672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6744e170ef6df4ba64879ab527cbb89e7eb1ddaebb75be4b4cf03bfdce1ef7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:50:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:50:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6170fcc5bd791db1f2ab75aa4b4816b856973d371636532413f94b7511aae8a`  
		Last Modified: Tue, 20 Oct 2026 23:30:53 GMT  
		Size: 50.9 MB (50946506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc54a27838082cbe9c1560cc70136f5dc47004131bbecbe4f2acafa8316bd660`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 11.9 MB (11857825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf896bbd70674867687c4eff034c35847f1d5cbb0cced644981b69401a73ed5`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c51c026ff98ae6cbbe4efbbb5633c5778947785460c4910df9fd7210c4f5787`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8467142ebbfc0d336b79378d98e601a00fb4f38118d7bdf002f7610c67697e94`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 90.4 KB (90441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:65f0100bb8241d1a39c8f0b94f7c8de9ed9f213c88cb7c69f86c014c22bea2fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3591875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854c459593431a16e0012edd50015c30b9fc67126c83c62fae86833437131b52`

```dockerfile
```

-	Layers:
	-	`sha256:b84609da40d9745016a951fd961ebf08c1cf3ac2fdb5b8db059e827523b30981`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 3.6 MB (3577999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:116cb9996809d03c6d870ca9aa4ceb107c9aa22fead8c72414d03c334a6fdf9e`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
