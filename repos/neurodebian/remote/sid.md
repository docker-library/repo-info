## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:04302737b595fe56e2b4e30b1b89afd1f048a558adb8388814487f260b79c16d
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
$ docker pull neurodebian@sha256:6a9a5eefaa9bc13005d08825e6cc44b4cfb0a7f1ce577910db0a4951fdcfbf72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62882627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307b5447db74abea504c4131542d6c85d4c5524c129ab28fd924133794402e5a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b4bf59dc11d7745e5ddcfcb9b9a074170e9b2ccc7ede1d4670741b1fa0d98245`  
		Last Modified: Tue, 24 Nov 2026 03:40:37 GMT  
		Size: 50.9 MB (50936743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94e1d849a8a9bda44820f989dbc0876c9a27cd0643425c81c1d5a9adf2542ee`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 11.9 MB (11852538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec21bca0f928c56c9883ee2032800d94f9eb7d31b98fba782be42ca085cdb1a9`  
		Last Modified: Tue, 24 Nov 2026 04:42:21 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a767a68654adf6dd0aca25aa8718907c795da56f9cfab74c51718408a43ecb3c`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3e1ca4ba93336c8a12697b2fef74f8bfa0d3b898af1b746fc2e4a7658931ed`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 90.4 KB (90441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e7bb41a1f6f2f600bff3f8c679a0f74bc4244f3d978a83ed1351e080167e4f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29c6727367dde1ea11a0f9cbf33aa802f34e9205ba5d4c424f6a48b0e7bd289`

```dockerfile
```

-	Layers:
	-	`sha256:23f1e6aba4954dd88eba9569494b0521bb424756858ef6f21dce667ec061ed14`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 3.6 MB (3604935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01af5a50d3978b963e902929504c33c590c6b96a7fc69e67027aa9c042084e35`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:26cdb8b7ea0b9f02aca2da0e1acd19d08bd1eaff32f5c6f4393246cd22d82d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61401720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78afe327abda91009f1609df4a86ea3c69ee8bf3c556ef545d1f8aac0d793381`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:46:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e0251d745f256ccdf7e2644516fa7dcb9490b66fb6c78c0179db84762ba3a203`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 50.1 MB (50059613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c9a6575d0c4b55ed87541629ee109730259a9f2926119add3c09fd4f512f3e`  
		Last Modified: Tue, 24 Nov 2026 04:46:47 GMT  
		Size: 11.2 MB (11248243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabbc1954d66d07b215ad7181082648f6297fb2e9ea8783c737bb227d058398b`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c7e2dd001011015acdd22ca2a6d4e3818098410ecf5064b67c4a52053f6f12`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5036f4a7040e8f700b38f44f2b6a1d6cd246e366a68068b8eab5f4a5e95059`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 91.0 KB (90963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1e454e035d17d64f412683dcb41a7b1c79db5fe5ca759113bff60b45b7cddd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcc4b063ac264339f940d723705b34956acbcb90a15556e213da8afdf2fc628`

```dockerfile
```

-	Layers:
	-	`sha256:521f92eda87f621be3dd9324b71852f1e1c6e0dde8d5abb7b487fdb12efe5e67`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 3.6 MB (3607796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ef8f9cb3a87654edc234f4dc0eb70138aa8b282af0ee585a81ea5d4543c0998`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:6d560dd821eef6ad287dffc8a8376c7e6f82dbd8fdeb0dab3b6efc55caa0e455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64124345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc942b7181ac4285bf3df159ab50bdf42423b8f94d1fb0220a93216b48853f3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:36 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:95b9c91a07cce4096de861d03d4aee07ac0ec481852d0a91ee07530ac54eac64`  
		Last Modified: Tue, 24 Nov 2026 03:40:42 GMT  
		Size: 52.0 MB (52015015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a20e4809edb1d7aa2a6c183c9301af94dc0320ee08231f26ec99cd94347025`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 12.0 MB (12015672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557e1cfd5571c553907d9f9025ce432cf5e885cf5cf613609824bd01037a5514`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7543480e02e7927c352bf39ee2ac78c7231fcf30ab177426147dd2f4f35cbb`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6877bbbe071c2b43e8f171c848933f091e18a157e71efb1dc50dfc22f74f8714`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 90.8 KB (90752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f164566adfe4c98ee922657a7a69d74c03688b1a48a7e415b13ad1132640cf8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905f395c3a519456dfaed72b3bffd840a7579b003ab805bd03161d63500f430e`

```dockerfile
```

-	Layers:
	-	`sha256:0387db4acab9c8d7ae9a2472350678ba29e92b1f7eb4518eec8ce1234e48970a`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 3.6 MB (3602755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3d9048a0700e0790e68cad4cbe64131fdc40a1cafcc61d5645cae8577945a10`  
		Last Modified: Tue, 24 Nov 2026 04:42:48 GMT  
		Size: 13.9 KB (13875 bytes)  
		MIME: application/vnd.in-toto+json
