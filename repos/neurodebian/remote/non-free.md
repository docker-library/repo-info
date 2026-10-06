## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:c37025256afcb2facfdce09edade94617c1c030d4cf620e9e0816ec2b8da9cba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8f490e04b1d2c61c01aad8eb581180469ec068f33131301fd07fb504fb48dfb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59781027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce446e66bbfa5418db3551f61bd258ba7610840f3b0875c4867e252161ba107d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:37 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:44:37 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:44:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:39 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adbb4dbbca70fab44427fed15e0726f8489165d6cc49ba99744bfa53fd995074`  
		Last Modified: Tue, 06 Oct 2026 01:44:46 GMT  
		Size: 10.3 MB (10294111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226cc5dfbadc2d9edbd894ec856439263560af87bab7ffdfec0dfb52408213de`  
		Last Modified: Tue, 06 Oct 2026 01:44:46 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83ef9841705e0b74583fdd9996ff4375f9e1bd266cc85f29723d3fd5e2b4c37`  
		Last Modified: Tue, 06 Oct 2026 01:44:46 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e112654a40a6633e8487b80c50e2ecd6d7e7f9591e1bb687abc5d4501468ec`  
		Last Modified: Tue, 06 Oct 2026 01:44:46 GMT  
		Size: 90.4 KB (90367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4029bb7dca6fb4eaa2d94ebc7b582e26da0f6319f12e8beea4dfa342fbf415f2`  
		Last Modified: Tue, 06 Oct 2026 01:44:47 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:49884af659bb95a9998a62003008c8b1f689e1c68be8d213117f0a0f035f7afe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0800468ccc16f0efe35f3dacef6d9a3aa1845be58f5b26dae100f840c4488df4`

```dockerfile
```

-	Layers:
	-	`sha256:c72d5d2a4fe7bcd9f9c5fe60c8cd0bc68ba5ab99d901ab7786321d8f581b79d5`  
		Last Modified: Tue, 06 Oct 2026 01:44:46 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:256194f0750ed996016e816079e6825698daa7dc9846e9a8fa7e4476ca2a75db`  
		Last Modified: Tue, 06 Oct 2026 01:44:46 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1660cf5501b226aff3802fae144c86118e28624fdbc193319698b653ab59f833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59934361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a1f53ccaabfafe7b3115f0280f0adf24bcc5cd8821333b21a2d686ef9b804f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:47:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:47:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:38 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2547464b7338fbbb9b576c1c4f6048887d6117ca3c24c155fcf833d1e53289c`  
		Last Modified: Tue, 06 Oct 2026 01:47:46 GMT  
		Size: 10.1 MB (10078830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdba2e23e4a13f3fbf08e58f4202fd2f51a31e2c6a83a5a07f567427867529d`  
		Last Modified: Tue, 06 Oct 2026 01:47:45 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fbb1b5cb38e63114a485097f28fa4f03d6209ea12bf98ff8874dbb0252c4c4c`  
		Last Modified: Tue, 06 Oct 2026 01:47:45 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990dc099d1d80d3b703cc0262f2d4ce6d0b1821005830e82bb80ae1a8c5ff007`  
		Last Modified: Tue, 06 Oct 2026 01:47:45 GMT  
		Size: 91.1 KB (91074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c139834edbff8db7940aa8f2fbdd0f1e7766056d695af20dbe1ca5b5f160d4`  
		Last Modified: Tue, 06 Oct 2026 01:47:46 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3446fd8116b7150f9597be88252e72cbc88947a8565acbdcd89e04439d679e98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bcdc335b51d1e203fd6e85391b2a30ab2511b895b446748018999af89f062b`

```dockerfile
```

-	Layers:
	-	`sha256:6e050f7db75b722d94e5de7ac70333574f01955158878290e1c0fb6946197dc2`  
		Last Modified: Tue, 06 Oct 2026 01:47:46 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:780223f50985d5997c6da997d3009982afd8783b3493bd8c320a91d84eab576b`  
		Last Modified: Tue, 06 Oct 2026 01:47:45 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:0199d412532c80c9e67decce422de8566e8d6ea02069df06a9839a991843c104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61468422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013afa3771debe1e03b431adb9d09703c534e83029e663f3e2f771fd55650080`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:47:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:47:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:33 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b546da4808ce28bd62f73c167017ea37b1f987d8ea20d6b9035f0bfaa896216`  
		Last Modified: Tue, 06 Oct 2026 01:47:27 GMT  
		Size: 10.5 MB (10468207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a356e0ec2a0ef96b5f7096d44418285050f0bbba8558b893a995f38b9644c7`  
		Last Modified: Tue, 06 Oct 2026 01:47:27 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619bb7f00e0b7582161d7b16b436820ef672d61889e3092a271d41a638d8f555`  
		Last Modified: Tue, 06 Oct 2026 01:47:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a61c46f202798054dd8f5f99fc41f0541d9772960ea764558e57611dcd12a3`  
		Last Modified: Tue, 06 Oct 2026 01:47:27 GMT  
		Size: 90.8 KB (90768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c945f892d8d09a6ca8fd5532104b46175f876c7e07087ff44bbd53b97e356c66`  
		Last Modified: Tue, 06 Oct 2026 01:47:39 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f96f21668e156032ac68cb40e7a5c17839de909850287fefffaaa0ad017fdac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8040f85c3aac226924f8e505389d029beda29d211e1f3071c26b2634171f4d28`

```dockerfile
```

-	Layers:
	-	`sha256:9dc4d8692b1b1d80d38f022d28ff4af33818fc5ed1ade3a53a826a435657736f`  
		Last Modified: Tue, 06 Oct 2026 01:47:39 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aaf3d436c2cd5606e10cae5a1162d4393e8d0e3eea66e6a7a8eb0f82bfdf3b1`  
		Last Modified: Tue, 06 Oct 2026 01:47:39 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json
