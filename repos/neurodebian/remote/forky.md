## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:429fee1a677fb275e4843578370afe90f423e3bb1e98ab28343ad367d17f5420
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky` - linux; amd64

```console
$ docker pull neurodebian@sha256:6d7f8ca8f239fedd5dfff1b3f4dbd58a57d8064b0520e328b0f509464198daa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61407164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cab28f870d2dc249ed3b9112dce281f1574c177b7a958ceb65c4c2291d21570`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:44:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:44:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:44:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7469b51a5634026d0ec3b005b5a4726cfcf2e658e06e0d7f08c5489d9b1760fb`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.6 MB (49649159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396ae3083aa8d4bbfcdb945feedc3d9fc44e9e0cfd5b1a79e5536ed9c64d6ef3`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 11.7 MB (11664954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ba94d530a41bc169b1b075fd50c5e74a693255081558fabb81f1e0d33003b5`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753360d0100cb7e2dcf3b984dc0955ac69f11f9fedb64ff5c8a75cd544abcb96`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e418f592c1831270028a0f95354840fcb9ea41bc8c6905389d5804292bd88e8`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 90.1 KB (90143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ebaea934f5f873c17ff475e0139c3481cb94f1f1fc0319a45778d01cf7538805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3608507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe5d0cf24f5e03afa0dfb1b855df5d5e6c117a17c67db560609e71d6997e693`

```dockerfile
```

-	Layers:
	-	`sha256:bd588b3e236210bb2cba8f15bddb3c99efb4dfae01e82861ed7d4a5f4f13c8d9`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 3.6 MB (3594575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:283c5d25178fbb71611ade8d41d54bc0aabc6d684ff086c9a8a2e1a2e96a8d44`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:123e4be3fa396e86aa866b91b4db610c9585619c34c196dc2c622886d71efb25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60323128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0b9cbc8f562667ffaca540c188778d34b225916993810886556c5adf3ca687`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:47:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:47:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e248a7d56738c8f8ba4b2a2297d1668d1b8e939c7f77503cdecaa73940dfdb15`  
		Last Modified: Tue, 06 Oct 2026 00:13:14 GMT  
		Size: 49.0 MB (49047941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a2d33c0418955b55c8dadb7681d716a7c25c0cb593cc35549b03665736b798`  
		Last Modified: Tue, 06 Oct 2026 01:47:57 GMT  
		Size: 11.2 MB (11181625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7a8f0921d72bd08f562874a59e76a4e61477ba6afb9fed570cde62b8f544dc`  
		Last Modified: Tue, 06 Oct 2026 01:47:56 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171a469a87e3401674456b2e20ab802fb204235f50b46989a0486e4ee59dbce4`  
		Last Modified: Tue, 06 Oct 2026 01:47:56 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0138c053c0e401c32a33295ec9d153089a0f1dbc08413d189dabb797cc1c5b90`  
		Last Modified: Tue, 06 Oct 2026 01:47:56 GMT  
		Size: 90.7 KB (90659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:96b134823195160aeff08ca288aa53d3ecfe67c7d4d2cdd223fec647b70f192a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3612116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09589dfdf73e7743a3efc3dbcc211f801c7be875dbb75578965886f8e1704f9b`

```dockerfile
```

-	Layers:
	-	`sha256:dfcf2faf8faeec32c52896f8cc70cd4738c939f29a0f614b252eb7ec1ad6a12d`  
		Last Modified: Tue, 06 Oct 2026 01:47:57 GMT  
		Size: 3.6 MB (3598059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f79dc1b4afed8ed3bd39704d1b788ca8cc07e6e23c9d992fc8450a544902260`  
		Last Modified: Tue, 06 Oct 2026 01:47:56 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:376e54a5a40a16fd86689fb54e67f96ecb6db05bc46f2cd73241259925b4aff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63133410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c80de1e2139a822782d6e8ebec79a42feca362e385fe2490dfedd6ff08a6c5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:51:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c233988ef079ce2f9cb44b816dff1f5ab9d9d2c6ad39d6a65e12197c3789113`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 11.8 MB (11826704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671fb0f3fc9f0121e3a1ea64ca84ad2bb592127d451c72bff9b15510d60cd4bc`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb873c5c757226f0b49b0fc6bab94752283d8e8c3f9d6e78c390759e94d88c6`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834d229edcfce447e386e648831efdeae2d5ee67992113fd6fbb6af5f77b4da1`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 90.5 KB (90523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:02a5a1381149af91c5893af0112136c82552e7e0d10570c17878d90f845c6be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783cdb49f4c16ba647a76885457c83843bf5d0f3d92f9d8aeb9e2e73ad0be202`

```dockerfile
```

-	Layers:
	-	`sha256:a4b2e5b214032a98e4147ec2e4545d6564052772a3b6ff5c1c0def345aa05a6b`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 3.6 MB (3603778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:610c45089c124a5c3452341fdada001e4b92d69b544390f331f2ac9563a5e6dd`  
		Last Modified: Sat, 19 Sep 2026 00:51:24 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json
