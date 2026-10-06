## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:08b99dc53a50f58cf58deab3d4e9d67239612de4ba29bdbe7b6a2838a7684034
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
$ docker pull neurodebian@sha256:9f5a333e18c72b7dd494d189efe4f2c13f6605d96895444baf7f7075c712569d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61569432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958560080fa16527deaa99f89a347eba8f6f4b4a6e22817cd002db526b4012a4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:45:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:45:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:04 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ab2033ad8cb0b43749503cab4583da73f596c307f88d12356e5364054a51048e`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 49.8 MB (49810882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49fefca12f83d15dabf80ee0c067683714871b1b34d8de6d812e2e0d8f84f0b`  
		Last Modified: Tue, 06 Oct 2026 01:45:12 GMT  
		Size: 11.7 MB (11665045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c263c05872832ab53395352f50cecc1292ba286cf52f047327e9a05fdbcbfb`  
		Last Modified: Tue, 06 Oct 2026 01:45:12 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5795227be4da2f05a1201d964dedf8f6c890e1a9ce4adaf488a2ef680eba403`  
		Last Modified: Tue, 06 Oct 2026 01:45:11 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d17b4ee8decc8f8eab4928fc92e9967280e15e9067f0e7e4acb9120aec9286`  
		Last Modified: Tue, 06 Oct 2026 01:45:12 GMT  
		Size: 90.2 KB (90183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b92afe088e39212420e5ec4adcb7f40e165bde5d857606860ea3e60d73ffad`  
		Last Modified: Tue, 06 Oct 2026 01:45:13 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c6d5f6a781acb90cbe34abc41c6cc3eb4fb554d28b24cc7c37c861ca0d4f60f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3600141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f21c4b248b06c93f81d7f0b0262916d5fcbc67a30e3e3492be44ff07591e4668`

```dockerfile
```

-	Layers:
	-	`sha256:869fd02b0d78989683a01182bb77aadfd5b7bfc608773e997c44b2c20aa58627`  
		Last Modified: Tue, 06 Oct 2026 01:45:12 GMT  
		Size: 3.6 MB (3584211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b049f93fdfe5d72e08a9f66d35924d1a9806bd20e3ae178a8fb8cf8d395915c1`  
		Last Modified: Tue, 06 Oct 2026 01:45:12 GMT  
		Size: 15.9 KB (15930 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:eef170924f5f479946b430aeb057da57a874a10a7ae8d1434f613b13aaf76554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60412823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99882efc4508d4b0182cc198c3e4ac4a8eceae245e88ee3ef753a0436a64141`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:47:58 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:58 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:58 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:48:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:48:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:d7a8bd199db3cdecd4fbba67b4222426a79183b07610eeae664329cc97e17682`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.1 MB (49137221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496cd614d483593cd2d7f4f8f61fa27c96742a595cf1c47f3415a746f4fe9f3f`  
		Last Modified: Tue, 06 Oct 2026 01:48:11 GMT  
		Size: 11.2 MB (11181637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c48f01c08b8b95b4bd7ceb0808526b4511b0ffae4a24756a9862f6aaaa67082`  
		Last Modified: Tue, 06 Oct 2026 01:48:10 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc621ff47eb0a79494861f74de1b1db2ac957f4a5a6590372cc32914778410d7`  
		Last Modified: Tue, 06 Oct 2026 01:48:10 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cebfd7642b8f47a32a8c9a24a0531ada6ac2b901b1577f0ec989df99e1a6adf`  
		Last Modified: Tue, 06 Oct 2026 01:48:10 GMT  
		Size: 90.6 KB (90647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a514eec029a834d7f784ccab8e6ac8bf8a61ef6fc07b0aa1be97b39308a561`  
		Last Modified: Tue, 06 Oct 2026 01:48:11 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3089acc89e17ed459fdcb535105bc3977eb49329bfe1d3762e8d40777292d2c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3603766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48779154c547015a7934b6a867ba915bdccd1bdccf618c847b24f643df10775f`

```dockerfile
```

-	Layers:
	-	`sha256:6dc296d89125e4dac80993bf41e72dedfbca764bdb006919159f7e8e64d64f86`  
		Last Modified: Tue, 06 Oct 2026 01:48:11 GMT  
		Size: 3.6 MB (3587695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee18ce5ef95755947b1e0fbba506122d91d69c90ed1d53fd9248407681a1ffb5`  
		Last Modified: Tue, 06 Oct 2026 01:48:10 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:622a331d32dddcee8268a17321f6a74462b0693a82533eba04f71a5b8fcdac13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62879573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f05b3541c42386220f71029c874823a47c259f9739b085cbe2616b2d0800e4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:48:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:48:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:48:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:48:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:48:34 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9110db07e46e0ee00d66b51c152e37c62b0703707db22c577c69116c284fd877`  
		Last Modified: Tue, 06 Oct 2026 00:13:59 GMT  
		Size: 50.9 MB (50930428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b80bd948617dc1ed760f40211cf79be6f5352a4eefc1c792ec4b09285a72ab7`  
		Last Modified: Tue, 06 Oct 2026 01:48:42 GMT  
		Size: 11.9 MB (11855387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab37386cc9873539d4652e9d20cc5ce075def2ea64295303d541debbb7ebffd`  
		Last Modified: Tue, 06 Oct 2026 01:48:42 GMT  
		Size: 2.6 KB (2630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ff99f79bfebf3eedae90cbdb837c5e769979edcf23d4d5906e18f4032beeb2`  
		Last Modified: Tue, 06 Oct 2026 01:48:42 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808fdde544d14d6ba7222cd2e6b9a6b3335aeee56854879e1e504bc1224243aa`  
		Last Modified: Tue, 06 Oct 2026 01:48:42 GMT  
		Size: 90.4 KB (90444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521661aab901f21321109cbec9383c0ba57870f9da72aa7a653dbe06ec2628af`  
		Last Modified: Tue, 06 Oct 2026 01:48:43 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:340f0cdd257fff9f020b28524f302ff1d54e83e88e6b00e6bb19d0fb3ecd523a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3597960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b3e23e09a1af29b3441f8b4b265a098d326b06b38352e28eb45ac0b9d30e15f`

```dockerfile
```

-	Layers:
	-	`sha256:a24efa7afab3c3ca7994116cd8bf0f6a5739aa84c1169d5cb156a74040734bf9`  
		Last Modified: Tue, 06 Oct 2026 01:48:42 GMT  
		Size: 3.6 MB (3582059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d187533fd82940286c86655660729548b8fb45c7b8d5b0a0dc8afef88634b5e`  
		Last Modified: Tue, 06 Oct 2026 01:48:42 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
