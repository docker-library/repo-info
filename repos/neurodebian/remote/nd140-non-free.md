## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:22c7e41ba003d7ecae185849cd9ed12cbe5089f02444c1d9158e02ee40572dd1
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
$ docker pull neurodebian@sha256:b341dbec00ce3473afc272d86c78b3e3bbd61a525fb67eb9b71e99ee520903cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63133680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc162239935dc36fa8ab7987b030ca05846ab1b904a9c4d1ce017a0d4e469af`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:51:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa6371292b824e966126e38aaff98bafe5190dbe718f3e32920784156d4036b`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 11.8 MB (11826511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efde4de6ea23ba204cc0f27195d0e66463e4e12c2df9e50721edce043b1be8b`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c184cb5b4495fc0698b19d72418c60a1db72545d1f4a1b66dc2ab9cd778b2243`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792783bc8c120b29c8fbcd3898aa1481b8fb76eac6f28c9e7cfbc770dccca219`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 90.5 KB (90540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d7032bb5c48603554292ff4ec0d6544c949fcb6d857c99dbdaa933fe020428`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5302ffc9ac73e7bfcec28962ed08b9e7e4e5cc5734ee1cf912e98f06fecf0aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e23fbbeebca5bb14b3f16e8d8ac8ab4812b8fe275d628c253684539943a38a9`

```dockerfile
```

-	Layers:
	-	`sha256:bd5d7fefead61197cae59912986f5db6e86dcc36cd93a70f272d15e000ef722c`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 3.6 MB (3603814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a4c746b0e00830466b9339c407733924e9d1739365e68b652080eadd16c6a3`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json
