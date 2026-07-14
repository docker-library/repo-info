## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:cefcfb188b76b20952e09f88f012ee9972b3387f8d7ccc665fdeac0d2349f7f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:a1cb2aa96523a78ed35991112115a6d402e7916fdf4ee010e85f5c06565163d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d402e2c0346af1bb26926d3f399b6aab53c2382c86bc2423acbd9dfdff474c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94bb8459869ec6e3955d6415a65c4dd063d5281ce2c130e8f23ccebc0a023fc3`  
		Last Modified: Tue, 14 Jul 2026 01:47:14 GMT  
		Size: 11.3 MB (11273524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bceb97d5b48caac32ae6e23db0d7e6a9efe075d67bd5b7b7945e8603447bf40c`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a006ef7289ea2e5aa9e3ffb8f9768e25c462cf9097214dc3d3ddf38ad11f28d`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7586680fc8fce5d7f90e316effc60ea3496c82f7dd336c046b30b04007bf83d5`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 93.4 KB (93383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051c03efdef6b4ea5c1a73b2e5b9143e769e744a9f6e5278c40f0986cd925b35`  
		Last Modified: Tue, 14 Jul 2026 01:47:14 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1b74b0aed9a9c498c921c4f0a3e9275aed6f99047e1c9fae4485f7078a3d37b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce0ce94d6700e135ab9e6cd2903b3ef8c0e523319df8f1baf613098065dc64b`

```dockerfile
```

-	Layers:
	-	`sha256:07b0f23f871b015fcb2e541483a31c5691a2c83e4daf5bb26472db3bfb2d68c2`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db2cc8a264f88f047caf2561ad253a13e3eb4b0fcda6ce148e9c848f9d5b6a8`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 16.0 KB (15991 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a0c725c90bd82a07b763b48817bbe18e11f0976e499ab913f7451b180386816e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08065a33d2e5933cd148cf006c7b31bdeccdc4cda15a50f031090f2e740a1b48`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:50:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34608e75f7ab99b9437d7c478aafd910752d4bd234a0439c98636dff43f90ecb`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 11.3 MB (11252901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4aeb2fb86266a5add6c9a3b5610dc2d7efef5c82ec3fc80fe3b6d55e54185d`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2c91c7a6f0200dec2bf014d9cb31d19f3a90de2c99303ce3a6a2b372503339`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56f34877001491b19301af6ef5a3c313fb6445898dfccc2290666bfc6211f0c`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 93.5 KB (93528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be74fefbde0fe24ffa25617d793c273c1d5f5384fd4cd780cf5105df3c77173`  
		Last Modified: Tue, 14 Jul 2026 01:50:25 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9c5ed594615a0cdc595cc32011a2aa9e3343d922d2ebe0090e3cf8fa23973524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539dd36bab5278ba714e4fcda749eac3f527750abaecfa1c49ac1481f9106b19`

```dockerfile
```

-	Layers:
	-	`sha256:80d0e174ae8b450e6e384d6c8ddd8d179be211fb917043f07ad08526dd2c11d7`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:715e11e9ab3cdfbafee2c092550362321551cc9bfadf2eb15b800cb6e863fc79`  
		Last Modified: Tue, 14 Jul 2026 01:50:24 GMT  
		Size: 16.1 KB (16131 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:46eea2eb331ea78f0504671855c3777bd3dc0f9a2ea9d08e2b21fee480652e6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d840b2a3abe39096a3e8e64cc622d7969372e030d70c78e3a91d7f53619e18`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:48:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:44 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5701209877286384a72fc65bd913b909f5ce768bad1e96b92c976f61728ec0b`  
		Last Modified: Tue, 14 Jul 2026 01:48:38 GMT  
		Size: 11.7 MB (11693007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cc8c8d28df8ec6e95338de947bb3b77200af835da38d3c8c9083aafd6b4bde`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5a057379cd72530cdca33265f704314100de9b76fd59783559b3197eae4b2f`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1fc12449d016568ff5e9d28c1c0517022281d3455aa83eea109dd87d93ce3a`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 93.4 KB (93418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b83eaf1bd38ffb0f8c94cb426887b841175442803e259830012becd399cc8a`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5baede45330cb3eced3ce3a4af9d530f4cb9084e87e91fd7bb88acb7f5f8010f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b97ce6b7ac02b7f3dafbcb5faa5eaf3dfe3b1d6c8455ff15c8a731aa541d6a2`

```dockerfile
```

-	Layers:
	-	`sha256:250f8639803ebebb3a190f00e4db2738cc54a4b68a3f8de97425765c20e5756d`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a775971579e7a8e0d745768bc1ab076b1e3e876bd40ce7d43ae4d43d94af9dba`  
		Last Modified: Tue, 14 Jul 2026 01:48:50 GMT  
		Size: 16.0 KB (15961 bytes)  
		MIME: application/vnd.in-toto+json
