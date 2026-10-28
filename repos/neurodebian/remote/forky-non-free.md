## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:69bf04b5df8c9a9c9818ae19d20325316567b263ddbc62fe6ac18968dece09fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d446c5ff0b7abd73fc5ccd2fe63cfe4fd4d7d91a48fcf3d8bfe93696aeec8db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61576947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee6f0e1bb6bc381f2219d709cd690b192df70f229b8fa18d901610d6fdd45a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d15952eb70107cf3d193b7dd11f03b0ba36209b8a720d9c7462570e03fd1ec1`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 11.7 MB (11669022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6088724f67c903f967fb4b1df2867b9f6cf8b8eee3930ddae2570a877aa611`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b80162623f77117bfd641ca626e7a1e14e8082e0f637dea1ba5336716763bfe`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2c5bdb148cdbc56e47c57ff79ced5ccb2dd66547a3274a837711c43a4041d5`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 90.2 KB (90156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad92ae9df8d3b87c8fe48ae7d46f8a037fc5c3a0698c4a2b9436d8610c56b5c8`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8a35249c78a5fc9dd3e91e44d73c29c1f5996de5f62d152b78914b77f6130e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abc30d0bfc26217650f7397f24772b1ec1d88e2ca695eb6f21916a35d5438b4`

```dockerfile
```

-	Layers:
	-	`sha256:139ae7b640b3f7bf13efdcd6ea81494b06b438920138ef1dedd0c8e2d8a1491d`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 3.6 MB (3582616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93ea8b85b88e00922455913815e8194648e5f4818838bc9255fcf8d58417fd5b`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:089f38e0aae80bf030773b9b8601c0cebbf4b1746e085961b09cc7a936b9043f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60419226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d30bed6b9b4de50a922786f60f73ac0f0d4f0e2b03a8c6d6280e00bfc7007dc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:46:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:32 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f7804927c5709694401423bb6f5599caece27080756fbd42f2e84e3f7e2520`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 11.2 MB (11181956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e4505fa7d91478c48a3cb3cab2efb6340d90dd03cae80c35cb8b2345baeb75`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144b2b327259e1378f39299594bed7bde29ef07a4fe2ca1ec2d80313ef1ff4d3`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937d17b248d3fb4feebfba209fa6e6eba74223c2e97ef810fce82d4a3c8d2051`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 90.7 KB (90660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9781e11dc18dff1e17fd1276f3e525becbb6bcc854ee705fda7080878c78eb44`  
		Last Modified: Wed, 28 Oct 2026 01:46:41 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e0bfd5cc9f800f0b20d9854305a5b5ae143cb21bcd4d755c80b216a7a8d73b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf462a976f558ff3e1db460879a807b50fa383789f8eb7fb0bb1b67be35039a6`

```dockerfile
```

-	Layers:
	-	`sha256:85262fd69e25d54b467170de4735b6f409683a5f36bb3628f70e93992347de57`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 3.6 MB (3586100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aff98ed2da06946c6710a5d189bf769f0efe9565ee827a449ef051956cbf37d`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c98e87b979195c0880b4d6d9642a97d78e921e2f8c8f3f3736062ba0aab446b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62887054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4359a312a34111be0cf65c972e7c497a39488f74c07d255ad5e6627f41bc2e9f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:44:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aae0d2c16beed9deedf8f053a190cce50e2cd7200ef71d8a4b7fdf6a921a1c1`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 11.9 MB (11857841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e7d566c859f9cf207a55a4d9b129a5cdf744ba7ad9cd19ac3c439ed4508e6c`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1a49c814278a49e44ee9d4cc670ddeea9f442a52dadbb6169fbc904bf682ab`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3094cc6bf3e5fb04eb90088eaa9c1b84aa30b52108a7c9efa6cd648639f9d7df`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 90.4 KB (90413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f83d292188ad94c318d4149c3f9ea87b9c1d0154f333fb64647c700273d6f94`  
		Last Modified: Wed, 28 Oct 2026 01:45:03 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2dcebb1bbf24001ef8055a6e5b83383b5c3deff94b4ace736c08352729b70806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2526499de6ca6f9eec9bc0b36753c44bc0ce7fb06f9989f81ea7e24a85ece33b`

```dockerfile
```

-	Layers:
	-	`sha256:335dcb56f77935a5e59ecb11b80b8ddad9fab43d973c07edb16098900975c564`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 3.6 MB (3580466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b63b45adb0332227b6ff1da2dc1a14f1dd42acf8f079957f73ca62dc582d540`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json
