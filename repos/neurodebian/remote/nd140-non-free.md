## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:a3a85684fa6e330714c887582280364457964adb9d3cb09b287ab1d9ba6cfc16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd140-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:3a171a0c9aef9de9d6e05324d578dac94f2bbda03b7953b756f0a054350aa0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61407665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44298f8e98a95aedec00fa3bdf4c7be184d588e2883417b8194edf2f861c2050`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:44:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:44:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:44:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:44 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7469b51a5634026d0ec3b005b5a4726cfcf2e658e06e0d7f08c5489d9b1760fb`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.6 MB (49649159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20dbf674a2b05cbe88c005770640c270ede8ad593a0accaefee8f46683bfab6`  
		Last Modified: Tue, 06 Oct 2026 01:44:51 GMT  
		Size: 11.7 MB (11664990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172ec0e9d2cba98e9ed5d779900305371d09f45f5f4d0f52b7f88fc5f57e31be`  
		Last Modified: Tue, 06 Oct 2026 01:44:51 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365988278c5e4f8de367a2d4c93d267d36f5bf39ce3f02c88e043fdd5d472a23`  
		Last Modified: Tue, 06 Oct 2026 01:44:51 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b38a4b3f5eaf14b6d50ac2ead0fa1af553dd2906d2b0572aebcfb03f6600`  
		Last Modified: Tue, 06 Oct 2026 01:44:51 GMT  
		Size: 90.2 KB (90163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1e9a5b3f0f793fffade5e1809750b564b36726a0fd2422c183159a08f3be41`  
		Last Modified: Tue, 06 Oct 2026 01:44:52 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:391bccdee9c8b43f2e215ee33e8b99da5a4251a655abb833ef1f1b196c11d97f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3610568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8750937e152c7751d95e7718c9675916e6303b01c2da2da248f251431133fbf3`

```dockerfile
```

-	Layers:
	-	`sha256:30da91b9fef5a27c20b7b6af473a73c1dc0e6675ea38dc96eee46b12e4407d95`  
		Last Modified: Tue, 06 Oct 2026 01:44:51 GMT  
		Size: 3.6 MB (3594611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d29e4499db2f2c207b07b87b92c181acbb830137ce4e32757f6866b307ef0f1e`  
		Last Modified: Tue, 06 Oct 2026 01:44:51 GMT  
		Size: 16.0 KB (15957 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:51e6a0c2c718d6ea2780874cc319c661264e5568e3c8de176ed8b9924f74fedd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60323560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cfbc9f18dc6a34cb3da8adf70e71374b642f48f3023d2ef65be3552749c73c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:47:53 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:58 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e248a7d56738c8f8ba4b2a2297d1668d1b8e939c7f77503cdecaa73940dfdb15`  
		Last Modified: Tue, 06 Oct 2026 00:13:14 GMT  
		Size: 49.0 MB (49047941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2530bf80b94a2d36bc9ae9441c95fb54dacb98614b9280ef48bdbd34acf0d08d`  
		Last Modified: Tue, 06 Oct 2026 01:48:06 GMT  
		Size: 11.2 MB (11181627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6693ff98b5fc47dc73b5f0703145145ec305084ea8aa46d8317533a9af6ba25`  
		Last Modified: Tue, 06 Oct 2026 01:48:05 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab170dd9419640c7612c934e2376df02e1895c7d25f84f2795bee3291c3037e`  
		Last Modified: Tue, 06 Oct 2026 01:48:05 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba48bf5e9abf07ec24aa98e5f344726ed1f5754f13ab6e0f348ca63ddd9482`  
		Last Modified: Tue, 06 Oct 2026 01:48:05 GMT  
		Size: 90.6 KB (90642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7916fa24341e6280e4e6e828265ad078679979fba87bea4244fe9142cae6119f`  
		Last Modified: Tue, 06 Oct 2026 01:48:07 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:28571e5a7973811c7ab64504cb20d164e5fa28cc12a396eeb467d0aca35f8df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07504aa5b4c37ecba477bc7e7348b3bf1ef7902e762c4e4d63afdf324df247b1`

```dockerfile
```

-	Layers:
	-	`sha256:f9463b3ee7f5f17214e67569bbb674b8e124bed813ebbc06ed11dd3c987ff056`  
		Last Modified: Tue, 06 Oct 2026 01:48:06 GMT  
		Size: 3.6 MB (3598095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78d4f6685f4ae4347ee5ddf713ec1d497192395413f327829f1393a5629e21ff`  
		Last Modified: Tue, 06 Oct 2026 01:48:05 GMT  
		Size: 16.1 KB (16098 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:3ef97bc87365625693f89d810875ad6457b3a233802184a391b5568f910ff36c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62722928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13cae80780bcaf1b555735c7b6bbede421f16c50725695a07ae73408b5d31156`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:48:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:48:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:48:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:48:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:48:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:fbda3f7c32e707d7ecc3e8261c4b9b2b897138641aa26be42e13abbe6cc98387`  
		Last Modified: Tue, 06 Oct 2026 00:13:36 GMT  
		Size: 50.8 MB (50773856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5035445f5f3c5337ce74b295248ccfd71b8ac7ea64c13b9dcec300d65a0c7b`  
		Last Modified: Tue, 06 Oct 2026 01:48:29 GMT  
		Size: 11.9 MB (11855301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea75b7e8e59920fdf0bb03d0ce7ace4c817a52b826bc745ec08d13affcbbaf9`  
		Last Modified: Tue, 06 Oct 2026 01:48:29 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184d4facf865ce45a74641210c7cfd27cf0d10b92dd75a438123003b172a6177`  
		Last Modified: Tue, 06 Oct 2026 01:48:29 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f55fcad25047a562af47dea79d44d9af1e55b1ea0c83aa96d5170b0142812c`  
		Last Modified: Tue, 06 Oct 2026 01:48:29 GMT  
		Size: 90.4 KB (90421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231d06974698cba1559bae8b436b030e9239e00c24d9c1f775c790a6c18a336d`  
		Last Modified: Tue, 06 Oct 2026 01:48:30 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b56b4cda3a9ad88c98cd95534f2889c80a1ac98ce1aed615bd374013e1cb32fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3608386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298d1782e6084eea3c3273e975ea8642741445dc4abacaa80ba40250ddd8ceaf`

```dockerfile
```

-	Layers:
	-	`sha256:9608bd2fb6e7e3d45d18a083fd8769a41b0825256b601e84f00d75d344be6eb5`  
		Last Modified: Tue, 06 Oct 2026 01:48:29 GMT  
		Size: 3.6 MB (3592458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed5bd2949d242bddc50c6b2df90f14007d280f639109c87ee927620604726b22`  
		Last Modified: Tue, 06 Oct 2026 01:48:29 GMT  
		Size: 15.9 KB (15928 bytes)  
		MIME: application/vnd.in-toto+json
