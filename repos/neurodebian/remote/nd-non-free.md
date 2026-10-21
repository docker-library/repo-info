## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:f341ac5d6585ede78411ceb33455cae4fa2f419210b6299355b2360063ec4024
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
$ docker pull neurodebian@sha256:c4c8721c0bb7a4c0bfeb666373960d4c8a9ac44342963f807f4e33f28fe51e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61582498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93b8102d350cbba6742fc7f45ad9fd03df53f01a17d949b962da1e3d4da02fd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:49:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b4e6f7f184eb26c2de69e913d8e719cb6612b69b12932727db49fdb6cae72ecb`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.8 MB (49820002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e03a5fb3359aa9d77efa61f5b14a86eddb3511b4dd2b64ebec57c5a0b0dec0`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 11.7 MB (11668996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1cd350506fa62dc4691cbbda4b36570f9c88c4be23c357ab945b2a7fd31bc1`  
		Last Modified: Wed, 21 Oct 2026 00:50:03 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf767687d690a6bd02d51ead3fbdb1cfa513b7f189dd23392426a4504365771`  
		Last Modified: Wed, 21 Oct 2026 00:50:03 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a3094645f44ebf363f8c6ed5416ae376f7a5c6c42cda8c0dfc7f21c3cd398a`  
		Last Modified: Wed, 21 Oct 2026 00:50:03 GMT  
		Size: 90.2 KB (90178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b739b323b1d6ec2519fb24b99296f1dbd7097b636002e26e5f09c1b76baa3e`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:522cc95ea2ac40194a16fa0b94f04495c12e55b983d0e324600b1bde26822692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3ea9f1ab825baa485036f8a9ca41ada246fc722557f3eec4e76ec9d3bf669c`

```dockerfile
```

-	Layers:
	-	`sha256:260c6be7a4336afa7fd648053b75a6ac9bf063b88d47085414bf4361533f5941`  
		Last Modified: Wed, 21 Oct 2026 00:50:03 GMT  
		Size: 3.6 MB (3580182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be046209ac15ad7bb1ec3dee3b949bcf7f054877acbcb232bea94f587a28eca2`  
		Last Modified: Wed, 21 Oct 2026 00:50:03 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8de7f1c9c0f42d60d3edadcb9cef5c052a82339a342841e105b08bb2a0908738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60426376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2b753351194ede8833fc45a3971e564b3bd62bf402de16d8d2a71f94cb9cd8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:53:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:53:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:53:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:53:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:53:11 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dea936373025148eef2466d49274a28713a73a667b217c79557bb1b36319723`  
		Last Modified: Wed, 21 Oct 2026 00:53:20 GMT  
		Size: 11.2 MB (11181937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a66216ce0576da7ddf3b098b4c91ba830504d806656de414cb08d0a588ec82`  
		Last Modified: Wed, 21 Oct 2026 00:53:19 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57296021beac219b42439ff36b310efb0c98c16d716d2e117ded62520fc2881`  
		Last Modified: Wed, 21 Oct 2026 00:53:19 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbad27b70c163abff13c445098e02f1c8e07aeac77f8bbf8b7087b0acdb07bb9`  
		Last Modified: Wed, 21 Oct 2026 00:53:19 GMT  
		Size: 90.6 KB (90625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2030ecf9e7d79130c834de204a58a9134aef646d2dfc20c2416d33de742bd7`  
		Last Modified: Wed, 21 Oct 2026 00:53:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:db650888801081bc0c4fc7dd30ed004e3041fc3e25de517030dfa396cbf73236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3599737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3550fb746194e1fa8be9da180f92445fbcd3dced24f7cd6b127fa0f8bdd46079`

```dockerfile
```

-	Layers:
	-	`sha256:1cc9d9788ebf1ab9f376142f6dab4c226865f58bbf85981c66d92cd50cc6938d`  
		Last Modified: Wed, 21 Oct 2026 00:53:20 GMT  
		Size: 3.6 MB (3583666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29c9a85f7531f76a94f77f16ba4346f4af5a5b446dda438a8593511bab80c799`  
		Last Modified: Wed, 21 Oct 2026 00:53:19 GMT  
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
