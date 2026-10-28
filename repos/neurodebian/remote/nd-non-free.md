## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:391b67917fc047fd4a1ecc461bbdce0fb852f3781604a1659956e6764ed01c7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:0681766a50ae5d01c30d5f07138254424a0f44cb50e8eca0eb8f859754ba125a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61585454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2ea215935acae989eaac57be772fa42541f9664ff66f659948c02477df47ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:43:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d3688b6158959af95068db0d164f6459f98409d14d297bb3389eb178a16481`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 11.7 MB (11669026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf6cf225384901f1ede46a57496140f5647874bca6688f86e721ddb343d1ed0`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33f2cbd6327465cb94cde90b64cc1526e25e4012dd427ae2173b15829051475`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caffdb6184048ae506f8362a0d85758173c8f3215270c005973717189eb53831`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 90.2 KB (90156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701029795ec252c9c281cd3adc37e4837e31aa722bffe536ff978ef659d9df87`  
		Last Modified: Wed, 28 Oct 2026 01:43:28 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:795d8bf034b2a8ea0446cf37ebb09272cdf5ccd1dfcf7b51ffdb4402ca93c172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3597738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93f93ecda8077e95f42ece1bf6c5bf26f6a677dff4020c492ed639e9cdf781b`

```dockerfile
```

-	Layers:
	-	`sha256:5ba65634768b1afb209d8b741cf87e2f15c6a8925a335b0aabab3549f37e7bce`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 3.6 MB (3581807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bf8a3ac7739f4f552fc4e250e8a14fe14622b1f4f80370174d89fa312971fe1`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f62ec035806776d0440502e5058049c220e19b7a9d271a308bc05b8aede297eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60445203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19c25a634b0815bca1670f5e7900bf90da7db87087d64de648a4e5f50340103`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:46:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:37 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57284d10362f1c0d88fee60a1ea0d06fe4e0a343ffe6110c53589f67e911e56`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 11.2 MB (11181993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967fee27cef7fb1b73ca51dc344dcb2c0cab6b3e68fece73122eb0acde1ef215`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566688ac1340e1160fa13f50803e18d58d63cd40601489758a281bbede2de978`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f521e5bd1f0fa32c344f01382474424d7456a55127b6fda81356f205d13df019`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 90.7 KB (90670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36229d10040115ec8abe6ab2916615ad9c112e74c7a76fdbdd35069ab14a06f`  
		Last Modified: Wed, 28 Oct 2026 01:46:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1ecbf7eb90ec162c504559a118fe7c4188a390decb838257b5c8df020fe148e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393e977876551646f537708f5b99a0147f3cccfdae05f11ef4ed7b375a8fab3c`

```dockerfile
```

-	Layers:
	-	`sha256:973114185000ea0c59835099e7f9eb9c62985b5a4a0eea01db530351ed6b8b36`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 3.6 MB (3585291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cca9b0b16aa4f2039afe05564d362165bf1cbf91e3953139b512bd4f29b5e63`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 16.1 KB (16070 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:39777c2c8cac49f09b833d29bb60f9468d8cb6caa6e528e3591c8271b576d91d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62902898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d52a06127787f855af26586dae662d87eff313f1c586a8abdc62b4b75ee10e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:45:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793452d196c7307631e3388907aa9965ad52b781418b7e22bc40b474e02b2ad1`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 11.9 MB (11857845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bd6c421e7e499a82fd130ab28716b4be664c773117bb2afb848dcbf4eee470`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a725b82f0e7b6d413e5bd6630d0d911294988a537f0d48a83856548dcc740ae`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d8d6e2595d22936cf114333f26f8a29389aea4cfbdf3a346f1cc77c266c7cc`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 90.4 KB (90440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b23c7bd999f6f551e4b1173c26a840438359ba00fdd5436ff8aaca1368eebb`  
		Last Modified: Wed, 28 Oct 2026 01:45:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:92520956b335cbe6f0fbde855a1e05005d73830ca3a5859cdd91e71061b816bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3595559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c142d25d9715e3dd7d2643020bceb5aeaae74219f667edaceeeb159ed220d3`

```dockerfile
```

-	Layers:
	-	`sha256:03aa5a6feb6f5eee3a8a2e63ef09e5db070c62fa674ad2bc88cb20ef31dc29d3`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 3.6 MB (3579658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62b70608290f4ba1ca0f0064c46e3b2b3a136c2591fdb66e3864c228a9147764`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
