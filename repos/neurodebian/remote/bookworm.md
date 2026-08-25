## `neurodebian:bookworm`

```console
$ docker pull neurodebian@sha256:68e1cdc437695c84d269ac5d458c8d20acaefb7ce82bee2850ed51ebc0bce9f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm` - linux; amd64

```console
$ docker pull neurodebian@sha256:d12e035abbaf95afd44a12dfb6081da94a30e455105022222f2e95635ec5bd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8430ae997e6bb0c3f65441679fc1801aff4c7f7cdf2bd789b3ee8c00c8f44a63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7336ae245b2f75e2b26e89ac0d831cf717fc229902d7f6cc13301a3013cbca3`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 11.3 MB (11273529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0deeeed784b0fe9c85328f10d61eb7172ad822244be4beab84e267a8308c7d1`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 1.9 KB (1900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab20587be59ec35a37d935ee51ed828fb4c5fcf2741b6823bdd98cf1602fe31c`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06268731d9fb2f91db7c86f6b0dfbefee50ac39c5bcba25d38f52433201788ca`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 93.4 KB (93391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:610cf74b24e92709bed0393d95913b6d09e66ce31af8bc211b365f56bd13578e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffcb50a87f1c9303332979a47a1f9bc192488c3296465137865cb9ec9bd061d`

```dockerfile
```

-	Layers:
	-	`sha256:83d5cdf1d70eb9fde3db32038686248b40a6c5312f52fe41335a391a6b20e1e2`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 4.1 MB (4075951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76ee5a3bcf33391a18c944039a44994f8ae9e82dc58db8142465481a82749bb4`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ed84c3bd6a2b9d196c1c1046f2df2d0cf595bd3e495764ecc2e1b31e410c729f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b85c40ca270935c8379e29eb9fdc35d98c07c7c93cf0158307fb91a794f60b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:56:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb473d834964aa6e85414151b9b130576002f4cc7b7e455c7fdfca220797b11`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 11.3 MB (11252907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ef85fd01e6d732af7d262be470c7767ef233835298cbdc627c4a5e82cdc17f`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a16f36cd66a6bd3563ad0cd2aa4428ad056492378efdeaa34f9a92a3e21002b`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9ecc6cba59236cae2b6b6ddc889e6f984fe5a59f39b59cfce667651334cee3`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 93.6 KB (93556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:980ab228217d3b88b03dd6d3bc0e4d598949464e42bb706a88599ac4c15c662f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194bdbab9c6a9b1328dc108127a9ca0ca3e401b7de1a7ab9821725e68acf244e`

```dockerfile
```

-	Layers:
	-	`sha256:a23577eb52903b8c46f77587eeb4e22d581787b85a46869a37270b0ff86bbd38`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8770028ffea3c693943fbcc22a42e463981b74a7377479f621e51fcc9de2b067`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:aff5bc42b7a1eeb4725c10135a836972b8ae7e9fe040b8ae91b438c5b8b7780c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0675ac7d612032b806d6ac658a7e213fd855eaca972196de42f256bdbc03c55`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdc54cbbf90d4683e40020bb9ac3d6a2bfc35f5b61f241f95548431e8761e81`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 11.7 MB (11693174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11de585d12d59709b748ed1b55b3d775105a97a7159c3a13947bdfb5f0f5affd`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1be1788e3fe9b565a3516067afd79a73b5502179fa3a41319221f91a913987`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024adb886ac6b6c9abd917a676dafbd58bfee472da7c51e79235870411b62d8a`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 93.4 KB (93419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ee484a199d8128ce8c68ef573a34164aaf64cbdb88e21bbb51457a6835b0f4d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7da09bee78623eb081af3b47b13c28fc1f42b465666b8d65d90242791c82216`

```dockerfile
```

-	Layers:
	-	`sha256:788068166d8775d46608484bace8258d758f7d0dc5a2d1905f31433bfd61d8e6`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4951ac794b6c8842e188d2bd06fcebdb545ec88232742cddf03c4b9d9b84bdd`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json
