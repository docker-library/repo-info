## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:fb4ea36fde52c125e22b6833758e700469d83af1f43286c7dacf353e01716dc7
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
$ docker pull neurodebian@sha256:f105992944e8933ac240928594ffdd74062963500c7630c6b77497a310df723e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6fa60a7da453e6bc765614ac880283e292664b82851a37b01273469c75873f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:09:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:09:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 05:09:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 05:09:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:09:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c98bc0b7a106be143daa9d95938165fdc617245480cebe515b03ef5352170ba`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 11.3 MB (11273721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f4669c4c208b8cddf3acca25ef017c557a3d6e0fee4efe787012d79045ec2a`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e1befdcf23ebaa4620dc06071ee2e83d7f454e2bbaef97780a0931e254a056`  
		Last Modified: Tue, 24 Nov 2026 05:09:42 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abfdcbbf4687d671feaff8d706875dc8bb02932acf0777eda2f677d1e2a9558`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 93.4 KB (93437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af8792bcf15a138b315d7556f9ccb9ad45a36ad220b51acac27de07fae86057`  
		Last Modified: Tue, 24 Nov 2026 05:09:44 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:94820b823d1c0181f39803eb1d9783e1bb8cf8ef777c0e9f47c1eaa275d7ff13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efccca7d94c23bf31e9c7a6d8dc5dd314b7c4f0518b3e18ca71bdd72b787554d`

```dockerfile
```

-	Layers:
	-	`sha256:c9cb44e27d17ec220cc4910b6ef5f35ebbccc2a0877cb3d2a64a4290eb440893`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 4.1 MB (4076077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddb6dc399568c55973cd945938e56c95b96b0fdf30d384a19e9ae9de7a1c2c0a`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:9a2798157be4c1d445218d23fca80af2d9b2ad2e80a819b2b0047b0a9d62edda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5887b7db656d6c4530adc4ede7dcafe9e7bf92e7153f6d522c8a667f8a6662e0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:46:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964d85ca968ca5cde4b47a075f756078b51ce263e0d30893b138a8d092ba0fec`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 11.3 MB (11252976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe88250a8ab895c72e5e0cc83a4a533e8a068b481179e5c9ea24ebe3f26beca7`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a514945fd2c19c557905d76f7c49673aae8709f21d0731bc2ded7a7f6dc0a838`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3750aff4f2df0e781c0bd2713241f699406428a19c8c7a705f517c215ae6b`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 93.6 KB (93571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608941939947017d51460cb3f022d2e8a1c006bfc16924661bb4697376b695cc`  
		Last Modified: Tue, 24 Nov 2026 04:46:25 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:03ddf135f3877cd1debf15b42c3d0e41b5ae7391ab7e2d4b5020e7221c5ef1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfeeda65a87b903f0f427f48f2b574eb4736d6f8a807fdabbb2d08f29de34747`

```dockerfile
```

-	Layers:
	-	`sha256:8d68ae53473f683749924960a5757bdb17b6fca694f41282a3ea2148d426b10b`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 4.1 MB (4076319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e47ab7154119e0e84dbc0cd866c0a7e6c2616fe763ac7100f96ee71a49a6cb2`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2a57daa1ec3ba29c06817329119b31f1f5741cedc3bb6c1477ad74a5766bae2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61305766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40279a8a5248964f9ebc63f6887de89423717864160c92a5db5e452a54cb404d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37050afe46d46602aec7ba6e593adecfc2a6edcb1bf9a9e237bf622f1f6b3256`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 11.7 MB (11694149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb23c1dfa9edc158f80a17649cbd610e1119a0bf9c8df95f850c1055b1801b66`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddad520486416a43ec84a12ea399a379d386fc8954db407ca44a53b2c9090411`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc57fe6bc595a4e7248af93b81d81f02d970f4196976a042e1b4ddc5177d0e1b`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 93.5 KB (93461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dfff8c2aeb3cbc2174ec9f63b001d1b8de2b0ce1c1286dbe69481bdaf04ccc`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:636c7d7f223bfa7aff780578345229a0fe9548c0e2c5286893ea6c77a5bbda20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cb40dda4278114bf695ced3986fe2f123cea448b6934ad1d9c566da92d31ec`

```dockerfile
```

-	Layers:
	-	`sha256:15fb229ccd6ed3aa40ca16216136edc1089086a0268304b67dc91967abe722f6`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 4.1 MB (4074044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:338aaa29dfc59295151527542b6598b75ef1220c89161045501c5c17329e83d0`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json
