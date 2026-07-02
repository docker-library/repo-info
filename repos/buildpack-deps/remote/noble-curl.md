## `buildpack-deps:noble-curl`

```console
$ docker pull buildpack-deps@sha256:826990d5afbd76f7b0dcc868f287aafa56b7bac8011386a3ecc54cf2e2dd6049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:noble-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2e353bd86f6bd62261d221f163014bc3857b9a6610e370f27d04f4836935d27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43318880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4439ccb8b6db6089f65e0eccbcb85fbcde823ee3cc4a4311693b79372df1f376`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a991c6bfc1738367d1f726699924445e25d762cea07820a5069de2e0ffb806`  
		Last Modified: Thu, 02 Jul 2026 02:12:08 GMT  
		Size: 13.6 MB (13583279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:89a8ae4bf9659d884d8c608b5ca150bdebd9cb43fa66865729525356c6a28b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2598525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5c6af5ced57ff0c3b699864a7f46d76fab57634e0385669d41c3237cfb4719`

```dockerfile
```

-	Layers:
	-	`sha256:5445a5ea49218704578141ad9d154d35cf4979de6132cff6d6b33282af4463e5`  
		Last Modified: Thu, 02 Jul 2026 02:12:08 GMT  
		Size: 2.6 MB (2591609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc4dde9344c540965e917cdd63969ec8e19045e23f21b869493d57327242039`  
		Last Modified: Thu, 02 Jul 2026 02:12:07 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:08a576334438b9fc06a3645cf8a58a40e5e192f33ea22443466707632276e5ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39601233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506ef2a545b3958f096654333a93d3a4141b4777df197df95a3ca421f0d03d2b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:08 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:08 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:13 GMT
ADD file:6ca8a72a8c816a3a81eb9f721933f3d02719fa75abc81d4a66486cd6efa33e3f in / 
# Mon, 22 Jun 2026 21:25:13 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:67abbeb92f85087f969de6f6864f7b5cc172fa05098a68931182f6e5b4d2d8c6`  
		Last Modified: Tue, 23 Jun 2026 01:34:19 GMT  
		Size: 26.9 MB (26862593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3766dbf598c7f2d33f485765a78259ecdcaf2851f8d23dd2c3c2d4c51f162ba1`  
		Last Modified: Thu, 02 Jul 2026 02:11:45 GMT  
		Size: 12.7 MB (12738640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ac974e5e0b3bfdfac34555ff958e6da42f65a4cab5b9c111f3f0e30a99585182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b21ae90193d2eb430fef5451974c076b4d44d444ba65167fb5844cc0e370e62`

```dockerfile
```

-	Layers:
	-	`sha256:80258aa5eebfbf287d90045300e9c775c988fc79f0dffe05c29e9c80d6f2f355`  
		Last Modified: Thu, 02 Jul 2026 02:11:45 GMT  
		Size: 2.6 MB (2593913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20990e009bbf08ac2807b068a8337f3c251622f1bf5743d6ff1d7c76605c71b3`  
		Last Modified: Thu, 02 Jul 2026 02:11:45 GMT  
		Size: 7.0 KB (6979 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:25d3ae0535bd1053fa6d3fb7d10adbe6655fb5c28df9d203f676847edf2fb7c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42311365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9b87e4426903e87472884a380866108c13c704c65c9888db4327d46680d46a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5920cc53f5bbfe3c77b3e51ea21533a0f564b0e08c9adce437ba7268ec9a3e4`  
		Last Modified: Thu, 02 Jul 2026 02:12:01 GMT  
		Size: 13.4 MB (13427185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9a15d562368840840f95b6a25f98056712ecce36a68510a91727885453ceef6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2599662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283f6f8d9f98ec23098b36c44431bf7fc7ba0020ac567351f70ce1e0c4d2f289`

```dockerfile
```

-	Layers:
	-	`sha256:ab7b6f4aa2d617b93d49be77c3cc41f5ec15bb72039bdb9e5220c4f102d238a5`  
		Last Modified: Thu, 02 Jul 2026 02:12:01 GMT  
		Size: 2.6 MB (2592667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbe3896626f461e72ef81e83507d20c25761c4f6abf7ea6882a6d21e9ed041a2`  
		Last Modified: Thu, 02 Jul 2026 02:12:01 GMT  
		Size: 7.0 KB (6995 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9e1eed39a24fde33497aef418cfd919fd9ad1c6a25a66649218c4594a706302d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50227857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb57393ff20c485641b183de74ebfe897c744ad36660b555194ed11e78d7f49`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:10:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8dedcabe1442d7f78cd6ae2e918456df6be696e50ac2e6f0fea96e9939d5cc`  
		Last Modified: Thu, 02 Jul 2026 02:10:48 GMT  
		Size: 15.9 MB (15914381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7ade85444dc9e0f42788d3fc8dd67f5303d3dd6bb22f60eefb10fa10db74419b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2603176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cce1a7d8e19485f6d20e68db958e134651ac93805033786806a727a30465a73`

```dockerfile
```

-	Layers:
	-	`sha256:30ef3c79175f1a545f800c380cae8a082e6da5562b0da26cba6e498e929a165f`  
		Last Modified: Thu, 02 Jul 2026 02:10:47 GMT  
		Size: 2.6 MB (2596228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83229d5ec81d5440288ddd4cb92b298a011d191ec6c4d47abecd229bc8f0d657`  
		Last Modified: Thu, 02 Jul 2026 02:10:47 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:bdd7774e235c1c07bcee8faba16b01318e147192458a400775d9ac9854861ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45268114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07816f967e849ce26dbf824c2d5af3b7da05e79bbe769b1ef8ec5127fb4d708b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 23 Jun 2026 01:25:37 GMT
ARG RELEASE
# Tue, 23 Jun 2026 01:25:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 23 Jun 2026 01:25:38 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 23 Jun 2026 01:26:18 GMT
ADD file:7170cf1f50457fa19167130bbb168bf8fb601a52574716867b67758ab43d5dbb in / 
# Tue, 23 Jun 2026 01:26:22 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:14:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d36d9a4ee5b21337a0038d06f00582b458b412ffa7aa3be4086c8692dfab4687`  
		Last Modified: Tue, 23 Jun 2026 01:35:00 GMT  
		Size: 31.0 MB (30971606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a265c15f2e554d7b8b0453a7e7818dfbf542f5e9ea82348968e670fa4091400e`  
		Last Modified: Thu, 02 Jul 2026 02:15:46 GMT  
		Size: 14.3 MB (14296508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:92907ad9a284acce3ddfd848f6e585293c51453296ffd11db38e8d4640bf90b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8e6d1cf9e1e099e613c2f9d73873fac82f75d23970950cb0b89e973c1326f5`

```dockerfile
```

-	Layers:
	-	`sha256:ed3ec541d2c2299810135fef9994f4a8713a49f7191ab626d9dd282397496439`  
		Last Modified: Thu, 02 Jul 2026 02:15:44 GMT  
		Size: 2.6 MB (2585508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9be90866ae5dea64eff8d75b173dd8425e68d83a5adc4d68bf54f0463476426`  
		Last Modified: Thu, 02 Jul 2026 02:15:43 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:7a76d564599cd9621554a9d8adb9354999c618d2f6d5a508df6708366f4d61a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44835639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bf35b9d8d75ee29150c5f587b2d0e2b959b309b585f8c0c97ab2bea25c80767`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:04 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:04 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:05 GMT
ADD file:2e6c463b4adb9218af4efdc52eb0c653c0b81b2e15486825eeeee9fbbf21b4c7 in / 
# Mon, 22 Jun 2026 21:24:05 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:10:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd4f7ed1c2dbdaf35d8a21bd37b372af97a90ff9da565b0326c0b7021a50433`  
		Last Modified: Thu, 02 Jul 2026 02:10:28 GMT  
		Size: 14.9 MB (14894325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:473167fb8ac42f83466c66d09720b2dc8f6ac9cd3421c21d8c124d6ef3118ead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2601350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e57cf4988abf6714d0ad80a9a2e0c24ff8cd0c3ebc21c8b4d1947bc369ea11d`

```dockerfile
```

-	Layers:
	-	`sha256:cc17bdf24fbd2e08a9cd1a3b680493744168fe7112f24d93385d931537ee46da`  
		Last Modified: Thu, 02 Jul 2026 02:10:28 GMT  
		Size: 2.6 MB (2594434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac3bf4c88b77edd9167dd1ba4f76c47938cf8b042b91753feb0e8fd48f0976f5`  
		Last Modified: Thu, 02 Jul 2026 02:10:27 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json
