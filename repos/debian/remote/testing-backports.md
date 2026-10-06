## `debian:testing-backports`

```console
$ docker pull debian@sha256:375f5f77076e1c1cc271cda9844c6a24a02b9e733b07584f9dc1029b1071f69a
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
$ docker pull debian@sha256:eae9805cbc30858d091810eee3cf4977911ff1caf8a1feffbda1fb665cfb11da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50075298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da8b1ec726cc5788e78f1d10dd0fef42150f1fdede870c588b18f2dc0337197`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:12:01 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d8c22133c9f304464b99471e4b4d4968d87d56e8544b7855059f2c0a39fa5b22`  
		Last Modified: Sat, 19 Sep 2026 00:05:24 GMT  
		Size: 50.1 MB (50075077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d805a012d9ac5202df226c7be36c097d552ac987e3a7d8f7ede699ea8571c3f`  
		Last Modified: Sat, 19 Sep 2026 00:12:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a5eedf9dd2f8562dfaa7fdff512ba5d10d24705f8f05f5be5f45a242428db820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e924b6836070816a1710a1959e4e0ed957dbe70537d4fa72f3cda99beb1579b7`

```dockerfile
```

-	Layers:
	-	`sha256:837a574af3ac6002ac26965f82eb9d72eb7f9593cc48879545c6a80a18ffc557`  
		Last Modified: Sat, 19 Sep 2026 00:12:06 GMT  
		Size: 3.2 MB (3194721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:975ab6397e10256aac2ccef70a627fd7fefc8660f1dd2ac815ede5a2f9144503`  
		Last Modified: Sat, 19 Sep 2026 00:12:06 GMT  
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
$ docker pull debian@sha256:99ef0aa4bcca6241c79ae363db891f4872fd7579c0ba7b76d8c9028267091db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49556707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aacfdd724c64e321badb2de485d75332ea4949523c1915c411450c9585eba2fd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:12:26 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:afa59e8e36339ab83cfad4ae751210d30aa42bc784cbfd0588224e9897b3a3ae`  
		Last Modified: Sat, 19 Sep 2026 00:05:15 GMT  
		Size: 49.6 MB (49556484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf374e850526e1fd63d1b505d1fabb2c3e4adfabc7dcc539490f9947e3fb7483`  
		Last Modified: Sat, 19 Sep 2026 00:12:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4c37fcb73710ee0770a6a694cb1521d72e55df8e3785aa6c67f07b2f4f4f1db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d690a576049fe1f57a160679b05f6b6524b5b5b4ace850f639e4a7ac689e1ed8`

```dockerfile
```

-	Layers:
	-	`sha256:4f0d4f718de61d368146327bf3edeaa9482252e54e7192ef6aff560021a624e6`  
		Last Modified: Sat, 19 Sep 2026 00:12:32 GMT  
		Size: 3.2 MB (3198170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:256cd7534e897198819516ad7eb3eb9defa0dfeb0f6daa1e62e21db68ef41ee3`  
		Last Modified: Sat, 19 Sep 2026 00:12:32 GMT  
		Size: 5.9 KB (5862 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:71492d41d163e6035a88fa0c71a3b5e2017a30be708e3a1ea6923b60086a4096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51213499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8320051a662b386c328ef72dd6f7027a990e5c8e5f11c47427e3af1326c4b54`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:14:05 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:276e774d489f31407832345316afa4a1838cacc528ed3bba305fcf2fd78c6ac8`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 51.2 MB (51213278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6b12912a01aa816fe5189b096e48b1551aabbaa047d0b120854337b63d2d6f`  
		Last Modified: Sat, 19 Sep 2026 00:14:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:68b7e4a69c3ccb4017de4837febcf0fdf38a27d0c456961e69a71a26e1385a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ee93bd07b72bdef137afb7ad962c659a2ffd00bd1d384c72c007f58ed19828`

```dockerfile
```

-	Layers:
	-	`sha256:d06da252c6348f7bdcdae2773c42d40b97880bb8ba5e1fe8803bd48bb8e2d61f`  
		Last Modified: Sat, 19 Sep 2026 00:14:11 GMT  
		Size: 3.2 MB (3191820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba81e77135e0025b3eba2fda3a26dd2097c0416a1b8b84e9b7e59cb4f62081dc`  
		Last Modified: Sat, 19 Sep 2026 00:14:11 GMT  
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
$ docker pull debian@sha256:17e829d22b9bfb22fd7c5c9d6fd355939dc3dd50fbdca9518f1786e9089fe874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47644322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af56d03eef412d17a9dcb86b5e889503577111409b34fb26c0bf49bcc5813fea`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1789689600'
# Wed, 23 Sep 2026 04:46:56 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6582c5878b2a3fdec61ed2af7bcf967a2fadc7ce64cdd1de1870302b6f818c25`  
		Last Modified: Sat, 19 Sep 2026 04:03:42 GMT  
		Size: 47.6 MB (47644099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37448aeff0662096d15d1fa178ab747f2d60b8af0aeb0cf175aecd5177e2ab6e`  
		Last Modified: Wed, 23 Sep 2026 04:47:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:205649fbf14547ad2a12039ca5c44f5f0a5cb3d37bd1ec7c94e7369d9820f3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b0cd465229dec6ce38f2f1e1c1aa480d533680fdd240cf71b49fe5737841908`

```dockerfile
```

-	Layers:
	-	`sha256:66a22e6f4ac3925c2984a63a0f046d4a2245680fc85a67ffeb13fba73eda7362`  
		Last Modified: Wed, 23 Sep 2026 04:47:54 GMT  
		Size: 3.2 MB (3186266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e4377fa4432c2b101d882de9196a802497a6e30cb5c4eff26d96680da954dd7`  
		Last Modified: Wed, 23 Sep 2026 04:47:54 GMT  
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
