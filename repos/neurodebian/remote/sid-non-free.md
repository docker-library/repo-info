## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:4dda0bb76c4b0fa34e985a26e1fd727baf3d908483e81e0a546248273e94b988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:37cf710cd62a340f23262bc0a341be1c932b52f187f54e21edc4c61e1d210726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60436945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23040e44a1a08a0e261ae6c0f779fcc20db8f2fbc448ba27717f77b7ff1e404`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:27 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91982b10edc630f7e808f915cfc15d51d1e0cad084aa1f3a49ca6b015b78c7c5`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 11.5 MB (11479642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35ff64bef9d2e3cac1ecac403283ed88a168b39c492a94640af6f8223dafab5`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d8f674de13f57dbadb2b6165dfa8b70eca13f8eff036950162321ae22ff167`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc5a8db4ccd991e9cf9d1c100cf6c65350c9f26cf82560e87b6e4c92b1cde25`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 90.0 KB (89950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6021371c1f35748d891e95928dd444f84b97dec0dd79f2d8999fe536708c548`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:45ad6d1ffac84bbdc88c2c0bcaa5f0175dcf9b3c4df4e9d3691a572d50ce3982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3571520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e4f839ce4bbca3c790dc5a47b37cc3ba52c5c50224e31bbc8e9c45f07fedda`

```dockerfile
```

-	Layers:
	-	`sha256:5b4490500f01980e51635872e38a131f421854e588644ab05283ab271ecc8630`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 3.6 MB (3555589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44c584572e84abeafb99d0ec2ffeaa013b0badc96233cf1717b95df0a6b1b4e8`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:7e61b50ffbac59dfd9583ba279990798f19b673a00580ffd8f88d7fd6ab0ff8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60042087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8c568d5a30102825cbd1783e90b9fd13889eba73c5bef9f21833718c20c5d4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:48:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:49:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:49:00 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:4fddf52615bf1690082a9d73cb8346614997b5b51315236c93a190fbd50fb899`  
		Last Modified: Wed, 24 Jun 2026 00:28:05 GMT  
		Size: 48.8 MB (48798835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0de53c870ac2c975727e1e6e262e6c67909ed871769e29804e9ccb5b75a55ab`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 11.1 MB (11149497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d3a9052c5fc69b30fe247c52919da76b510e8b194c75862cc38d3cc9064aa3`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f886bcfe5b666c3b7762dd45748af67744d2c0af7dd9abbf9ab630515245c031`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a335ddd10124e4ed92d2e4f4738cd58356c71246207fd8f85f4645668ce34d`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 90.4 KB (90435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d3cb9093cde8bcb80d597ff70df796d6ef6cb08fd8761928f583af2293f7fd`  
		Last Modified: Wed, 24 Jun 2026 01:49:09 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:eb91629b8d1f4ae0219e52b597a3df99885b45352c670e1271db99c00a52b1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf046a1004c2f9bfe5ff2de9a9cfca500d99fd1c08950d02095c13ff97773d72`

```dockerfile
```

-	Layers:
	-	`sha256:c0a90934088e0b05bcf9b0411f67e2703b83cdcd7994ea2150f3f639e302f38c`  
		Last Modified: Wed, 24 Jun 2026 01:49:08 GMT  
		Size: 3.6 MB (3563060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0ea1cd2cdc0c6fa480b0803e55f7f03f46055075aec54501e1bd2c0f475215d`  
		Last Modified: Wed, 24 Jun 2026 01:49:07 GMT  
		Size: 16.1 KB (16070 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:46b7cb8f647a68a5248e01044e099b188dc0ef419c7ec680a19287545fd43a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61872131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76132dff404b68e08cf7f0cccafac943f1954212a6836a38fc29282927d8668c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:46:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:46:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:46:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:46:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:46:07 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:466f7f9acdfac81cb720fa13d53a50111bee95182357f963947200187b3ae3fe`  
		Last Modified: Wed, 24 Jun 2026 00:28:18 GMT  
		Size: 50.1 MB (50080955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0661dcf0892236c7ad6a3772cd577438245afa6a970cdd7d75f4ef1d4fcabcbb`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 11.7 MB (11697768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be0d6a535f0f2554e712d75691f577c3cbd2278774bb14085f694f2bb53f96`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5692dc14820ae2b6dc7893762711293c89add7cac576eb143644d4f190997b`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2467b2a5569126a69b9d278550ff2e9b7dd20d11b8b4100e817c521f82962c0`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 90.1 KB (90086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41d501b7bce95c0c3115cb5afd3fb72a90428f014abcc10986fd7148f58623c`  
		Last Modified: Wed, 24 Jun 2026 01:46:15 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bf5fdf943bf50b822dc9844879bcdf59dba86e72b2aa01f6471d3d0870843f01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0994ba1595a2933e6fe9b3c4f10eacdac01294daab404ad95b784879c973e03`

```dockerfile
```

-	Layers:
	-	`sha256:e331e30ede5af8691aafb177ae46b119274b0e1f3d7e03bdb3951745e4f0ba0c`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 3.6 MB (3556311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f2c584d176ec5681766d0c02764347fbbe2d6c677cd384d3141c439571a0fe5`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
