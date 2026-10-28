## `neurodebian:bookworm`

```console
$ docker pull neurodebian@sha256:29bdca91818b0beca7965490adaa4269730b447c1a55faf8b2cd5da5462872d9
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
$ docker pull neurodebian@sha256:5999c73333c5f044a683167f6d3a730c927717375c030f6a7c779606cad0fe25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59893690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b291cfdcaf9a5c9547c36795fcdd65598bde4079de3e291dedbeb8e929e60ce0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627617ab94ad5b2c712fed9a4308dbe5c84682449931f6fca64689955707ad04`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 11.3 MB (11273559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1caad7fadcfb7c743a717844c246c2e222557df85366d08b90fd689c8fdaad`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831d5d697aba9e63cd2c3f2cbe9ce841c771ffa391e4d0af4870cc8c3b11bc02`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f681840219671ffb40baa453f6b0250fb25d26d7245473f0996a102d1ce7ad`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 93.4 KB (93404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2a472b7db30636627c8d1756319804c3edfae811a133afe9916be258dd6fa002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8dcf42770a8a303da5fd880a1599bc18df2360633ae37b31b55ed07c35b49e`

```dockerfile
```

-	Layers:
	-	`sha256:f036645ee2d081fdcbb7254f08c4a51014cf77e5d69cd3d76b536aac6644c1ec`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9afb53b6518d86d93e95975902a51ea2b3557a33dcccffa06071194c2af4b365`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 14.0 KB (13964 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c2d97b6020e4349340bed379527c7c98d7a8d6c7fa820b0fb23d9bb45c1130f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59753829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51602447cfaa4fbee1984db11b0345dbcddf6f5d175724da139e7f54ec84692e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:45:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4015637c93165d0f6df8b2c87e5ccde119a1b6d56c53350a5bbd050c31383e1`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 11.3 MB (11252944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651e5302b46863e028751f549b50a6c22f58c53d418543c1f41f1142b8bcf4bc`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:534070351f907c79548e5527a9e316fb02503b13190d0c2deaef3bdefedca422`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d15a0a1e656c2c179a5e5481d92b540042b31c0890177243cd9e545f2725e8`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 93.5 KB (93543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2d411d4dc85d344e5f101ad950a389136a6a2c4ee589f8867a534d6bb341cd4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50fd9326096c1aba5844ac23dacc02717599a7d98c3e0a7df5685917445a827`

```dockerfile
```

-	Layers:
	-	`sha256:376d3acfa19c95f022d48ca3d9e2c7b4596267d9d182786f020da68b87044ed2`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a37694c5c168251baef25c873085b2eefe595547ac6483e51873bf4a0cb34b1`  
		Last Modified: Wed, 28 Oct 2026 01:46:02 GMT  
		Size: 14.1 KB (14089 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:985560252401fd401c18cc9c49f2a6791e737f1e9707a8ae4aac74437a62bac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61302393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80fc360944017cf546432de9d664639e2dd642554cedf3eae287bb4d4aa43cc1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:43:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7d013cfb99f9a659ec5a70c7dc91ff3a30fef8cec1975cdded7a6450f2dc79f0`  
		Last Modified: Wed, 28 Oct 2026 00:10:25 GMT  
		Size: 49.5 MB (49513537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e0d5c145dc58c1e533528219f618739e6ca84300f62710f5aa6d392842e1fd`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 11.7 MB (11693238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0288e2fa4f64bd2e6969f494b0683917460d1e51e5c127682390c8d7956f229`  
		Last Modified: Wed, 28 Oct 2026 01:43:43 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da3a58845e7cd3c30ae69530649beb40cbe5dfc32bb32e129b95e99ee973c58`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd0e7a31edeab4052763a31221467ec40697e0de474ebfc95e78415ff4748ab`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 93.4 KB (93442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:248aa594747420a86ca72f0daa8d4f0313522ae92b0328f1520c482e78b65dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b05472b9c6c407ffbce36cf5112c9cb9985f582d00788a141829f4eeddd6f3`

```dockerfile
```

-	Layers:
	-	`sha256:ef87adff59021e56a709d3de9b9ee2ec8c7a298f559242ccc516b3558668a5a8`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b2d899d5aeec05bd6e364b5b5970f6c3cbcd83e82c119ae933be512cf16a00c`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json
