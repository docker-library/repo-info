## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:df7617b4b5eb6469508fa500186e3da0a897362f7ebdf637aad4c974ad75f911
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd120-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:350b3b339573ddda73417a51ea68fcdedc0df06347453b23602ad34b76aa0b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d830a27ed956bd6273fd76f1f3473a47b0e3e0788298da3f7aadce314ce7ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49396bf6f048da2520e62e2054f85dc7bdae22b8d96121f5f44d8d896f6e3b60`  
		Last Modified: Tue, 25 Aug 2026 00:54:31 GMT  
		Size: 11.3 MB (11273562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816baf9f402651077195bef00137b4682b085f60dbdbffa852dc07d230385675`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11ef57d991f9e929bdb5ce98eb9daa294d45261b7aeadc7103b9bca90d7a811`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3e899cc2b89be46af928ff74cc113637ae22b6f82554e846196ca40000a37c`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 93.4 KB (93382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0313d6da1406b99d36694dbb720fff1666f28350851c7581b5aaf391ec40fe`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9c1b2e3b939d22ac6b97d15ff427ee601fc810cadfeb31cd519e745cbcb650d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae33e2c84117be2114b48b8a6703c6df64fa6c4960a0841e72e3aa70e0c47a4b`

```dockerfile
```

-	Layers:
	-	`sha256:7662096bad904a8f7be933da3a4bd014211f8d7579fba36b71419366fed9094d`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63f506eca33811857e8eef432da5dd3bf2de6e050bff7b3e780f2470d8bb8ab8`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 16.0 KB (15991 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f9c927c0102fcd257f2bfc8a4eb6bbcc2cb7d7b9a523e54256f5c1731ccd9676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe032b86251656edcf9f4856191571986ba493e902ae066cd10ad9e1736a962`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:56:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6756e76b359130321fb6c3915f5a8fd23762c83aaa19a964e7c91689aca61dea`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 11.3 MB (11252955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975cd053eaa9e47c8b49dce9dc24863ff9f529c30080730cd2f2470ca87edec9`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b93b9b487059902387ea9e2d339cb992ff9902c916cc62ad8fd028966b5e0d8`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876884d649722e5f9d0b2568e730832d6ee0db4cd8fe9d8aac4e27c4be37a7bc`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 93.6 KB (93605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0395bcd15135533f9ef590a4ba418b90727ac213d2a5345adc0c207d3b2c860e`  
		Last Modified: Tue, 25 Aug 2026 00:56:40 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4bde0df1146bfda285bd898760be5b31f670dd66572a57b97320f549bf495420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3077379394dd058859f1209d4aecffc80f47967c710e961f3444cd6b5e0f907`

```dockerfile
```

-	Layers:
	-	`sha256:0dd87b0bfe1f1dd6fbeaf641f561494523b75f23cc0c41e43f53428c0cfeb239`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b422b89c5363bc3b384cfb12cc55a0e5245b980d4ca3c60016248dedba92a50`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

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

### `neurodebian:nd120-non-free` - unknown; unknown

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
