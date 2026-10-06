## `debian:testing-backports`

```console
$ docker pull debian@sha256:2471395fe0f9772c9da96a768c023727092c55e3db17ed2fc0057b5529f60d6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:testing-backports` - linux; amd64

```console
$ docker pull debian@sha256:fa6751148e26dec6aa07b9354724ab85c6af826b87fb1b74ced026a6ef0a402e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31cb09d7701acbd6fbbbd7f08016b2da97a27a97bf00d4a2e4e779d28e9d416b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:15:02 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:65fa1856b3fcf0aaf689bf19470dc9b767c643904ac974ee6324bb352a294cad`  
		Last Modified: Tue, 06 Oct 2026 00:13:41 GMT  
		Size: 49.6 MB (49649157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e5515e1bf8d2199d45feb6a5b60aa55a08ef2e045e962a09a28fadee284c58`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e7df1bcb4392a3ef1c23d3d05f483126dbbd7987792061541ccbd898cfe26774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131991b3e6a3663c26c847f8edfda8bc1838823507f51a3c249447aba600c3b1`

```dockerfile
```

-	Layers:
	-	`sha256:0d0402568fb5bc019a621d84f39623c03d9646b8a70225aa1b0c299536ad699f`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
		Size: 3.2 MB (3184177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dab0011f7ff15583959678f339ebbe6a326388c7046f41d000acef4af32f1304`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:75785c5d268efc415e917544f91f6dcbf04d8db504b8d84ccba57e15cca90812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45925139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b64f02d4c74c24d1e0a8943f74b4775395d8053960537cae43d0b1a879b4de81`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:14:30 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c73b50e5d367dc9005dbcf15ce364cd7afac5ed71ebf3ffb7f6774c0ce9ab59b`  
		Last Modified: Tue, 06 Oct 2026 00:13:50 GMT  
		Size: 45.9 MB (45924915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe28812f36d743dc51d000cabc3af830b20c507b75c054d8d04ee4340edff72`  
		Last Modified: Tue, 06 Oct 2026 01:14:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c2caf627fb379ee681386f8d36107c540ef999fbec6de26e4caa0d1770444a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758de82b416507f868781fc499e87a4b9feb62e9654fbbeb82c96bdfa5302ce5`

```dockerfile
```

-	Layers:
	-	`sha256:19ebf08e48590f661ed21a8175a69091c5a71ba13255fa7a5ba78016a633f93b`  
		Last Modified: Tue, 06 Oct 2026 01:14:37 GMT  
		Size: 3.2 MB (3185704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4a471fa81756dd57e736905ce2d0a70d15d20611d60c4cec2e1bf9f317581af`  
		Last Modified: Tue, 06 Oct 2026 01:14:36 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:08c134a65684bf5a3eafb93408b159046ead8ffc80ed10bd8efa5dc4cc8bbee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49048163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8ffa85ffe8cea429ec580a4e8a54c79b85e879d7ad7688d915734839b7970ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:14:38 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:12d1d72ad8cd584e48c2758a1a3ecd8200db1230d16c5a9882b9da871cd754e9`  
		Last Modified: Tue, 06 Oct 2026 00:13:52 GMT  
		Size: 49.0 MB (49047939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e423907d1e72674bac5207d949c148ca4ffd52687171292e6d45f25469183a5`  
		Last Modified: Tue, 06 Oct 2026 01:14:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:005fb5137d568f7f104663e8639501fe320c05816b3354a0309d484a5fd79956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fded71e185dc16a2688aa1f4bc16f3bf0729f1323fafdbc2025785873600a81`

```dockerfile
```

-	Layers:
	-	`sha256:28deb7e3b2b738d6adb1363fccea78a1e35389f9c1b10b1a0ed08d3d013f3a20`  
		Last Modified: Tue, 06 Oct 2026 01:14:45 GMT  
		Size: 3.2 MB (3187626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a25b2eedd5e61606cba19146a729eab242bf9eef74e9d773f7dbb2866f33fc1a`  
		Last Modified: Tue, 06 Oct 2026 01:14:44 GMT  
		Size: 5.9 KB (5862 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:974067d1e3dfe7060ca5a455877afe7770b24806c2a123d016ef2774feb27f8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50774075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a525a2911e9e6084379f5eea9c69c029819d263e06ced8c87b20101e6b08e1ac`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:14:56 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1a1d21b3047d1c57d61446f79dc91c9d3cb2541adbf746802fa7e578eeda18b2`  
		Last Modified: Tue, 06 Oct 2026 00:14:14 GMT  
		Size: 50.8 MB (50773854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29895098c63117973f370e05691b01fc4d024550737da3e8e8483becf3db026`  
		Last Modified: Tue, 06 Oct 2026 01:15:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d116abb41b65cecaea3f319ccb5307c52ca7f2744374e1b6c1d4d29207753629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7746f41ddaeb5639d231ac929322457a38b733d6f9084bc023d9b809b4b7df`

```dockerfile
```

-	Layers:
	-	`sha256:88d802d6a8af4dcc5f76b11df26eac76efdf2955b6b8da6cac587d55fdd2ebcd`  
		Last Modified: Tue, 06 Oct 2026 01:15:03 GMT  
		Size: 3.2 MB (3181276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a1112457177b575bf0ef3d79c2922e2067640c64bec1370edbcc675e869a525`  
		Last Modified: Tue, 06 Oct 2026 01:15:03 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:a26a666c3f8e18d102d44fe6e5ad8367af16e222fa72b6e40b2356921425eddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54325242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3abfc37ffd34afc8f871c90d49ccc34accee2e8b0893a552b4dafd73f190cd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:16:22 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:26d67b9953850eb63391bbdd03ba3d4c1f5fe54668bb4b335957280542faa5bb`  
		Last Modified: Tue, 06 Oct 2026 00:15:33 GMT  
		Size: 54.3 MB (54325016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f292d75487ef538d598930ebca5efdf2bad0e91a3bb33e44fb7d9a88b991e80`  
		Last Modified: Tue, 06 Oct 2026 01:16:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5dbdc2ac7582053bff36a25f443a092a1d133fad3bee942e96839415d4975392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e977bf7a89388a123b5b291b6cc674b57a4fe5a738ca9300c730bc03fc0e1828`

```dockerfile
```

-	Layers:
	-	`sha256:d5445cc9a4e2486729f64003d5411d44e408dc5e0888968cc58d925b3d490723`  
		Last Modified: Tue, 06 Oct 2026 01:16:47 GMT  
		Size: 3.2 MB (3187939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1f211b7bff84470ad8c487dbe1a3bacaf8d4be95075cf57f8d29ec3e7149d36`  
		Last Modified: Tue, 06 Oct 2026 01:16:47 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:75e528db386319ebd1270f2f3abd376d74855045f4f3c3320479936c9f485504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47131987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899b756f3dc660e7fecbb8a34d14bdab3a0592960f61e7e3b4324e79ada4a139`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 04:29:01 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:936ad8789bab20a638cf4c0a454764c239511dbd12ed2ad93ec707673c118c58`  
		Last Modified: Tue, 06 Oct 2026 00:26:38 GMT  
		Size: 47.1 MB (47131763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6d627357de55b84075b0d12a8c6e539ca4b8c67a2de1f5d200fb3e05407abc`  
		Last Modified: Tue, 06 Oct 2026 04:30:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9b502143618347c4e6a052adc6365a5c9c3ba20910e01c89872af06623929cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2b68c808055567b326909a5d14ab6d6178a7e89eea3f3007350be08ba39955`

```dockerfile
```

-	Layers:
	-	`sha256:2aab1724aa3c1d3bcab3642fbaf0ef91ba44f4a60a829011b9d61095d7a42dc5`  
		Last Modified: Tue, 06 Oct 2026 04:30:06 GMT  
		Size: 3.2 MB (3175722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f078b1acbcf06a417e28be14af8f8f5052011dd326ccedf13d9aa89ab368a26d`  
		Last Modified: Tue, 06 Oct 2026 04:30:06 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:f4d6299dc9b90cfc40a81fd1c19daf9718104851271afd74950347902188aece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48824823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b31eca26ffc494dc7ff778b0637c9105fea925f7b6da8dc8cfcc36c88d7b60d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:13:12 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:77283ff3eba634cbb92d1cf5e9f32e5c44d706e7e0096a2cb14d3fa15d402059`  
		Last Modified: Tue, 06 Oct 2026 00:12:48 GMT  
		Size: 48.8 MB (48824600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ebccd0b6e62d9e79a5485b8a6d87c8c4876698dbd20c1fe4495c93a4981b10`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:73b269040bfdc4ea3b2540fa7b4bba6e4a2112e744c22fdd2e9161d93d488559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816da65dbbf9cb760c8486e9c73a2e900c9e083fc7cb214498d7f883bb6bf499`

```dockerfile
```

-	Layers:
	-	`sha256:4837d97584672a29e028527670403453f989c641b9c36389383bc758bb5a01e2`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 3.2 MB (3185573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17e5e00f527fb94f764fd019cb6d7a7c7df72e05b0a52f11f8029fcc5871793b`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
