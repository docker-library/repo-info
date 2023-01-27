## `buildpack-deps:lunar-scm`

```console
$ docker pull buildpack-deps@sha256:d50451c3ff177ad107fb0a5631de46b8201118223120649afb9c7eb3d57684fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `buildpack-deps:lunar-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5b13abc9bc3a51b123b3c9f31c1ec3b66c4c7771d8b54f8b774a18ea3e6630f0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78409823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec357e0449733f3924c6bcef3e03c0c8ae7bfef5bd0c4a0a87c91539675da22d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:49:08 GMT
ADD file:454acefef6c46f4d8ea05f6cafa0de83698e9def83069c3dceab15df524ccb8e in / 
# Mon, 02 Jan 2023 18:49:08 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:14:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:14:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:14:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2627e5235478b0c8c569e6c5ff9e9e4e61fe03be2808f2324531fc5e73496661`  
		Last Modified: Mon, 02 Jan 2023 18:49:58 GMT  
		Size: 27.5 MB (27527968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf51d4062cf6a2b56ccc0a9ce0f01dbf0782460e2ed098412a0b941df503b27d`  
		Last Modified: Mon, 02 Jan 2023 19:18:54 GMT  
		Size: 6.8 MB (6777375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8156315225fcdde6e5cab74299b117df71db465d65e888528abbdffecd29ba7`  
		Last Modified: Mon, 02 Jan 2023 19:18:54 GMT  
		Size: 3.9 MB (3897739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e021d078b2a5e182026e7c26ebb4e685f66fd55cb41d147771621bdd60f0481`  
		Last Modified: Mon, 02 Jan 2023 19:19:09 GMT  
		Size: 40.2 MB (40206741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:39227a6e046f435aa7fbb94eacc238206f6ea7bf9ee89ac91dfafd52acfb0ddd
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79112779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61c35b6379e214329df0c01f26fb38b9126b33e8090e5d80bec74345fc37bcc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:50 GMT
ADD file:d5b7f8b874ee985d200663cd6bd4fe0dc5622c54f883004e0b84f92a74543601 in / 
# Mon, 02 Jan 2023 18:58:50 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:30:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:31:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:32:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9538a59414233f23f1325d2dbad0378997afd754348ad4f3e9ebbdb32bc48f9d`  
		Last Modified: Mon, 02 Jan 2023 19:00:37 GMT  
		Size: 26.0 MB (26044672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882c9bba555f96623eaf6d22b60dcbfe1410411923184b87f97cb487b614f675`  
		Last Modified: Mon, 02 Jan 2023 19:40:35 GMT  
		Size: 5.9 MB (5946529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d938a9b51795ad657ae70aa18a75ca9e73f598b071171702ce98e51467776a1`  
		Last Modified: Mon, 02 Jan 2023 19:40:35 GMT  
		Size: 4.1 MB (4059769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9b84022dfe649995ccf26883b72ebdff59223400997340def3747777fe54e13`  
		Last Modified: Mon, 02 Jan 2023 19:40:54 GMT  
		Size: 43.1 MB (43061809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:688987046263a0dc1facebbabc06e97ca4cb1e84a415dab25be7ebdc2bc3f7dd
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77327688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41f816ac8483c35d193209b99e116910a22e0a32691b30fc2354ecffcb16d9f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:30 GMT
ADD file:87f1515364340e1c65eb76041a8285f4f511485c46275949dfcff1961d556236 in / 
# Mon, 02 Jan 2023 18:26:31 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:51:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:51:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 18:52:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:03a7a9a433574ecc00c891140ebadd82c8592d8f29b7d5808b6bb9a0234684b5`  
		Last Modified: Mon, 02 Jan 2023 18:27:21 GMT  
		Size: 26.9 MB (26855540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e6d0788fd51c380a42af1846c598400304ca8803209292d56b2a8630aa89d4`  
		Last Modified: Mon, 02 Jan 2023 18:58:28 GMT  
		Size: 6.6 MB (6607822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bccdee025930916817db2cefd4732712b388478bb27ef225f2967af645d3754`  
		Last Modified: Mon, 02 Jan 2023 18:58:28 GMT  
		Size: 3.9 MB (3857692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd231be0b6fcf816a7cf5925909097faa87172e6b776e9c3f5ab19f1aae8753`  
		Last Modified: Mon, 02 Jan 2023 18:58:41 GMT  
		Size: 40.0 MB (40006634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2143a24a07086e67da60990bcca6c3c3ffb8c2a66514cb96792fe92faeeaf76d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89202330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65742a05edfaed30e1094f3415eb7c4369ca2bf35b1ac1cdd602158e7e7f903`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:43 GMT
ADD file:ea9743ea4cbf9deea0e3f8207b93c49151ad75ab037c042a1a4e0ef4f00c4779 in / 
# Mon, 02 Jan 2023 19:01:44 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:55:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:55:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2f3462978627dacc0661848613bd622e57c1cfabc7c39dc5dacfd0053442bfd6`  
		Last Modified: Mon, 02 Jan 2023 19:03:25 GMT  
		Size: 32.1 MB (32137445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e44601bc4bc41dd579ecfeb81554aa4c496d9995162e800f118496cd435d4`  
		Last Modified: Mon, 02 Jan 2023 20:03:15 GMT  
		Size: 7.8 MB (7753458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab9cdcb52034e44785fe194336aed75e35a7cc54548741d37f65772a24a2980`  
		Last Modified: Mon, 02 Jan 2023 20:03:14 GMT  
		Size: 4.6 MB (4616681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436ed3eb78aa18c69aaea5cf78ffc67c5435e1dabb4f41fdd6d978dd6bffcc7`  
		Last Modified: Mon, 02 Jan 2023 20:03:38 GMT  
		Size: 44.7 MB (44694746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:e47f456250688f4bef8b5cc0558319ac3021bd6a5283dbedd6bcd19ea8556050
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79076811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b9a57c039c22e55b673448e753d372a13ca831dedca3d3a55bddb818349f3b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:09:01 GMT
ADD file:512505c2df26db88aeeb5025ff073a2d8e98d995422df61a5cad94d79ef22a42 in / 
# Mon, 02 Jan 2023 18:09:02 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:29:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:30:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 18:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ada5e428c090bd736690979612e7bece7c31ff1f1701ca35de4d1899e835e69a`  
		Last Modified: Mon, 02 Jan 2023 18:09:56 GMT  
		Size: 25.7 MB (25669058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e756f227648e5a559b1f2387229c92d1fd4b83589d63631f0d177d76e2c6e34`  
		Last Modified: Mon, 02 Jan 2023 18:38:32 GMT  
		Size: 5.9 MB (5925890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb3fe222b3eac428f3f8b9fff7621e4aa631ace7d402b5590058b150e5b19b2`  
		Last Modified: Mon, 02 Jan 2023 18:38:28 GMT  
		Size: 4.1 MB (4141220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c4e43f4e9b3918249951c171418c34a155f22ed75ce4f308406d3e0f1de10e`  
		Last Modified: Mon, 02 Jan 2023 18:39:36 GMT  
		Size: 43.3 MB (43340643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ebf984911acab73106aee3ebd44b2757cddf968f96becfe03d448cdbb5fb5739
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76417085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65cac4aa7ab4081c63c5745a9c9822254c010b3993ec6aea40189fd0bd85b351`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:44:10 GMT
ADD file:00e905457e813e8aae003e51281910821c1d21806ac2f91869f665b31dc42d25 in / 
# Mon, 02 Jan 2023 18:44:13 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:10:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:10:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:45f3c7fc242d16c16595c5060c9b387bf176629597ffecfa997c8eb4491aa9cf`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 26.1 MB (26058061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e963abce5c8bf811bc4f78cbda07a8ccdd8da80ea8c1d8a858534d936f5a075`  
		Last Modified: Mon, 02 Jan 2023 19:19:57 GMT  
		Size: 6.5 MB (6460161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2a5da7c47e0f0e5374338816d746962335eda7c521571820150dc251d86c2c`  
		Last Modified: Mon, 02 Jan 2023 19:19:57 GMT  
		Size: 3.9 MB (3882551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcab5d27ae3ec1e901d4367f7f55dd541fd103b892e942bd7988bb67ad111763`  
		Last Modified: Mon, 02 Jan 2023 19:20:11 GMT  
		Size: 40.0 MB (40016312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
