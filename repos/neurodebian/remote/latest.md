## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:de14df86a83c7dfe95b54d3c6b09884fb599b4d2430fd59ebe38f513d5bdee75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `neurodebian:latest` - linux; amd64

```console
$ docker pull neurodebian@sha256:c6234f7b80f2c015805f9955a0a54b654fdcf0664da1904073c430439220cb81
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66649972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03660e39eb93c19521da4d43cbfe92bf9057984bcd9204b0cf7a1805ebf0362c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:23:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:23:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 06:23:22 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian bullseye main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 06:23:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb7c514648fcd172d1d92641317d95ad9429ed41ed2fd3be61f1ffc1234659a`  
		Last Modified: Wed, 11 Jan 2023 06:25:16 GMT  
		Size: 11.3 MB (11310855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5c3cfcb704df1966ec6da1d025947e98a56eb508b07a9e10154fd90888eb36`  
		Last Modified: Wed, 11 Jan 2023 06:25:14 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdf5c076da04900817e6e3f226760aef228ff9e09f7477c7cd904bd2665e143`  
		Last Modified: Wed, 11 Jan 2023 06:25:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81499e5cc1fe453427ce4a3e3b1d136673471e5372fa06c888f1d4f5f1f7af55`  
		Last Modified: Wed, 11 Jan 2023 06:25:15 GMT  
		Size: 311.9 KB (311895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:27c733db1db6a80be329e33e0c4313f57b41d3dbc5887750c39a06b12f88a18a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.3 MB (65308557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebbe674283ea4af9ea0292b4161f2c3fefa55ad51019e6112df5cd52006c9ce`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:50:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:50:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 05:50:12 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian bullseye main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 05:50:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edbf9381c6084f1219e030d008ad8339f6e92d785875e08140aed78fced79bd`  
		Last Modified: Wed, 11 Jan 2023 05:51:55 GMT  
		Size: 11.3 MB (11312893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5a7269134cbab37436dc3e9d1b4670c006a385933a35c3f074a3d7677e98ca`  
		Last Modified: Wed, 11 Jan 2023 05:51:54 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1fa404746d5b9d57392439115c6f24aae360f2d474e2a0eba6fddc36db9ef8`  
		Last Modified: Wed, 11 Jan 2023 05:51:54 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645a53636e07bca2546f70a611a3b79aa5b2c617217c04be5fab4990329ddeb2`  
		Last Modified: Wed, 11 Jan 2023 05:51:54 GMT  
		Size: 311.8 KB (311789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:444be716335aeebbb196630eaceb3535be8f4c88043ced7e6c55d3b5734bd258
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67612573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955be20c1bfa4e8f43a5de5206533aa922e13f61b0cc35ab707c33961d4994dc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:15:51 GMT
ADD file:92d8f809db3287489506ac143940f0e87d91ffd2d40c99318ab865e9fae1e6d4 in / 
# Wed, 11 Jan 2023 03:15:52 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:00:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:00:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 06:00:23 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian bullseye main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 06:00:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e322a78778338013392b4956017b1d3ad99541f9ce0749e46105a6a52ddfb637`  
		Last Modified: Wed, 11 Jan 2023 03:21:32 GMT  
		Size: 56.0 MB (56005290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922c26c0335b081e8ffac5cfa9e661eff39df0c05f2c2fe2322693998e62d579`  
		Last Modified: Wed, 11 Jan 2023 06:02:32 GMT  
		Size: 11.5 MB (11499981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e96031a15a36b3da9ae082a24da29c746db45e291eb6095541410ba363c3140`  
		Last Modified: Wed, 11 Jan 2023 06:02:30 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aa3f043a98a6563e4086248b7247bba259d0e5ba3bd7015f37556ea573d965`  
		Last Modified: Wed, 11 Jan 2023 06:02:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cd4a9b61d9ddc9fe9294993e4b606b88dbd66e32fb8e52ea3b9418764591fc`  
		Last Modified: Wed, 11 Jan 2023 06:02:31 GMT  
		Size: 105.3 KB (105310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
