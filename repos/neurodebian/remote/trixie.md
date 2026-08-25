## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:eb4e3dd2dea45b338885a467da48d3680a57b3764c79e424f514c1fb7229562c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:trixie` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6d5c72938cad91ee0fd30c3654c6587db01d24191a483f8b822ca5e5410dced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1ba1614dcdb127df00cb66046ee5a392a686e41b9c5b2cc8ba5e62333774c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88aa34e88b514a6fc663c20e2587d082385503604bd7ec752ffc94014e185af`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 10.3 MB (10294197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60ec1baed9a52493741097e33fcc892da307fb597f9f0f4d23a8c606ce2d295`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c641e6eb7dabfded1b82e2d57c505c86d543e80107de5395f258291ce5158b2`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a342d6a62bb570e42252bddfdbef07b74fd7fe0d2027f42d5317aafd1d0205ac`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 90.4 KB (90383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:501c62ec8d37e53afb960ac5f2175e4bf11f0a3b7d7691b407b3502fd61dd71d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58827c38b278a78a633bb64d02f11264f6cd8bab6910857946231ca19ce4e64b`

```dockerfile
```

-	Layers:
	-	`sha256:7468c7f1e72c047f4e786e7385a0980133ef8ad548f313079979dbc8a343a6e6`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 3.6 MB (3619196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ceb0233fc51b778035f144201dfb10251a91ce25539a14ff4baf91ef4923a4`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f08fb22a2ac015904871bee246d74a1e52639a489ac1c9f5278cca89ad1c2c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59877638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4790cf48f05352841a014ee45a8803633929677a93f1dbb84f5382f556804035`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:56:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8470dde52347be92c29a219d0ec9b6feb51da133748dc414f0266666b4a272e8`  
		Last Modified: Tue, 25 Aug 2026 00:56:45 GMT  
		Size: 10.1 MB (10078864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3467360f2cebf7f0387dd86ea24af03765585193acd42c1d782e3985efbabc11`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333f6d90a17033ac694be8e8ea1719852732ddd7460bda09301c0d23d95ec34a`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e024d9a3d10a754cfebe6bd0aa2aafb58dda70b31a5c16748c39f8942c39a68d`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 91.0 KB (91013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:132029423ffb394a29c0e7562ae07b592f88407ca08792f388c4538d464d48b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fea72597f9e6f28217523e6debc9a5dc431cad6bf69dca0712f3783d86b3ff9`

```dockerfile
```

-	Layers:
	-	`sha256:e4e5b7408e84ae71a11946dc3f3ff4ec7c651afb3f7cfd38bd1904c7ddba94a4`  
		Last Modified: Tue, 25 Aug 2026 00:56:45 GMT  
		Size: 3.6 MB (3620086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88949446fcc5fa21445d318b7dbfcdabda6715cc377c0d5620dc2ff10bb0957d`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:bd5afe6199b66a30dc1f829c8c3982014a30754cca8a0f9bc1949cb7f81c0940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc3d18e54edef2458dde665c221fa10ba7d4d821c94878fbc6eac5a531c57d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e21e16dc9460da177f9a39e5588b0bef1c3e8a68f91cb0a0f4dc7550d991a4`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 10.5 MB (10468187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd9649fc945a5341fff8b413beffe7f7422145544c93a20b06d8a440c632543`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0aa0fc22dfc72c9a4e9688ecd1f2caf9aaaf884e9510cb700bce39b2b07c791`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e961075bdc7d293611393d20ebab1f6b0de9f64d8094c4037772f1145d6700`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 90.8 KB (90775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3c4ae5ed88411f4dd62cfbb7cbccdb309042b731fd3b2b9c5b67cfe8c32660b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eb4d781dd0d2c480f203dd154c68f37cc0922f7a9c36058f712f9db36e1fd9`

```dockerfile
```

-	Layers:
	-	`sha256:28a620dcc3041ff023a5ae4709261f22cee70c531ccc954d3b4c854ac103b439`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 3.6 MB (3612166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dca1b41ce85404e2e1b85b93fe025c53099fff854418a9e1e29ae8dce2a22d7`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json
