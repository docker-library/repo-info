## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:bd944f079aa8c95d15d1feb79e7c1c83dba2b35100fdcf2dd084f2bb76f4c236
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:19bdd9503a4512530f1ffad76625dc9374196413d61863362a5d797cbeb4f0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e5ab6110c333045f9cdce676c212a643208f8cba595d21bdb819fbb7597b63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4aa4694f216b2803314e01d97d6db463e42cdf1e8e8863d2b1b81c773d1f34`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 11.3 MB (11273517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ea0d6eb580c1eebe3edfaf7935dbc8e6038f23ef83edeb04e83b90d7d2bbbb`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c913e83f91ca8ea934f568370a1efca78c5f1de07f96ee132acedeafcdeb089`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b79db4ad5595154517a00b1f1c8bbddf934a450606665e1b2e7c90a1ad45685`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 93.4 KB (93403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfc8b591ee7fb3c7e9bc6745868a65f6477472c952575cb62bde79779cca01a`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d66ab4e1b48b23f535bc699edcaf26ad7c899898263265b066e6b50562627bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ac3415a13821f373b7185cb10219983714fed6e02e14d29d3b000e50646a41`

```dockerfile
```

-	Layers:
	-	`sha256:a94e98034cacfd197a9c7aa514a460aa225a3b54a2fc66a4f9b8ebe1de6809d3`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d80c91ccb30df1b449992efc778ca0faf712efc3037162737b7f5dc2a71b865`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b093a17325e924e866b916ad79e39761649ff693fd81d45ee2f88dff7636543a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddce7227e90e3c6dc11e09bff3fe0816143db48c6f66f51aab395169392f95b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:50:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:42 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c453eb472495e8107fe2d701151501ae6d44e1608f90439829b83141a062c2`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 11.3 MB (11252928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc84f22361a700d71f5a878227d35b29ae803bda2a00cba3cbd41ad91a6a8bb`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b590072a810a3139b6957e66eb65995ed3cbb5c47d650afaeeba52c55de78bf9`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078f638d57ade2266d05f42f8ec964d8860eb177905fa543ea257436c5e44774`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 93.6 KB (93580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cede123c0f1cb5bec6d62d614ed34cd8223fba542a798b8558f01aac735bf2e`  
		Last Modified: Wed, 05 Aug 2026 00:50:55 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:45d7af98f60470ef86f47e638f17ec39fdb6b5529542e3417d3b7fe733b0eb8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681ff349cb86b65ad7df512865a6b0f2032984cb2b4a0beda6902fe1eaee5ba3`

```dockerfile
```

-	Layers:
	-	`sha256:1248d21366921b55025fdfa56ebe2a456fccb019019eba1308aadb73a1e04d7b`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:becb91c8556af058268c6d4246b9946c319aeccf9b9484e3b1df5d0aef343825`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:44e3ba9a8717c5580b3e782501e268540b8e3fa099f7560a15a28e5e9d0398fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e3fad8f2c9e8ec3c816fd57f25f9df116c3292bffb246c82ee7736763b8f3e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:55 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0c2faaf78fe9238bff71d7a2fcd28fd9efb02271884dede30803d545485fc6`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 11.7 MB (11693206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ed638e93aab501a2123bf76c05e2e03f665f10c4d033f33d9ee59588a350c8`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51777bc38753647a5840c681dea16ad3b1f54898f9204fd8cfcc18ab0a560bc4`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c73b1b8afd70e42e1dbacc0d9d90178d7d613033ea0b648ec5bf3b008d2143`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 93.4 KB (93439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08e7ba6af09c60719b1bd375b78f21f434399430c4ae094995a40f0404ad2bc`  
		Last Modified: Wed, 05 Aug 2026 00:49:04 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:06323129ba2749fe61cb2bd7c97588689e0d515a0e8f4971a232ebab4b57177f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d650a1d388868851a8993ad1c9ae075b1cc0dfb2b0dfdf5d84adcf7fc89fc8`

```dockerfile
```

-	Layers:
	-	`sha256:7eaa539be28095c76f7f0e8a60ddf3aceb54d33aff4c4e02660c96190623a3b8`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e7953b065799f7f657bb6297ff5f6928b7fc071c5232d750d091a0bdc5ef1e`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json
