## `buildpack-deps:jammy-scm`

```console
$ docker pull buildpack-deps@sha256:76af93a99cb2b3299d6196bf9e88d16b6c362f4ff5fccc0191288d32358e1c97
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

### `buildpack-deps:jammy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:ce7589a8f1dcf26b8f5720f24804421c778f343e957f209bf8cf053fb46729cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76328119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988b0626144b174a3b906eedba30db410392e95e3bd92531cbe055e0e3f6fab0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:49:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8683688cadbe2a286c64253ef3f6cd7760bf514bf2ee3ee0c44c3e7f59ec4c05`  
		Last Modified: Mon, 26 Oct 2026 23:02:20 GMT  
		Size: 7.1 MB (7066793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527ed5ce922ed8b323f3fe9d067a9607c2ab5a8993c9536fe5bff6ff72c0e84f`  
		Last Modified: Mon, 26 Oct 2026 23:50:09 GMT  
		Size: 39.5 MB (39508838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c3acceabf5ad7b85facfbd6425eb552d4698325e21472dd2114db574e76dc52d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5803155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdf96f87deae169867bea037ce9653ec66e802c9857034a66f557a92918e136`

```dockerfile
```

-	Layers:
	-	`sha256:c4d3cd614b526c85dba59f9af27ab882bd3a3b72b8c1f58bbc0eab59190d1613`  
		Last Modified: Mon, 26 Oct 2026 23:50:08 GMT  
		Size: 5.8 MB (5795874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5463d5d9183e702d5e66c4406438dae75b668e2196eafa74a779afb2fa36f96a`  
		Last Modified: Mon, 26 Oct 2026 23:50:08 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:31d5b3faca1cd3e2e5e791532dd917213d973c3997c2b3b9c2eba32aaf3f30c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76112856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abbf6f6b6e005bb1c7743304973bee7463296d393ac16c8e0b037ae2ab060c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:10 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:10 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:14 GMT
ADD file:d5aead1ec8013ad6e577d2e1fc302b0d1e483da56b7a5a810a7ffb6694213525 in / 
# Sun, 25 Oct 2026 20:11:14 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:48:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d196a6cf79788071c4ad2a7753c754da85fe91c1c5cc6df9c5b8651a5582d129`  
		Last Modified: Sun, 25 Oct 2026 20:45:34 GMT  
		Size: 26.9 MB (26856546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96f4e01fd7a4634a2c3a89781658cb153c3f15ecb3bb98ac343e42b7e5de138`  
		Last Modified: Mon, 26 Oct 2026 23:48:29 GMT  
		Size: 7.0 MB (6967587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa7285d573ee017b0d43ef02f06f1bee38108c03056236ce0bbfa399f568d4a`  
		Last Modified: Tue, 27 Oct 2026 00:16:33 GMT  
		Size: 42.3 MB (42288723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0d262e42c0de96c5030478dc8d6ae06abe9e33ad9eafcc06b4df5328d164f9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5804499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35164d0d327056834f7ead6313539482779ab668c2135a30f76e7aa3eeaf4027`

```dockerfile
```

-	Layers:
	-	`sha256:8b865b45cc55afb9baf12a6d9d6d1bf70bda44c79da21c83041a6d6054171594`  
		Last Modified: Tue, 27 Oct 2026 00:16:32 GMT  
		Size: 5.8 MB (5797154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3279866d6d8c641790134d1ce300399f2735754f1f73740fe4faa931f747e3dd`  
		Last Modified: Tue, 27 Oct 2026 00:16:32 GMT  
		Size: 7.3 KB (7345 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:45875605a3dd3d16814fe1dfa86abb71a1d337e4547e39f5c4cc40983dac2f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74146208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49ae21f0bb15bb302eedc41574ac90b4b73b3ce144bc551e99f9d9457f6447d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:16:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4e2e86b0d238d884dc7bed967d31bfa9f7a8d39a2ac1b85ffc01099046e925`  
		Last Modified: Mon, 26 Oct 2026 23:08:19 GMT  
		Size: 7.0 MB (7021372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369bc0f7d59747757de46f5792d4c0b731d74c8536e0c90ef7d6d364e3ba9f48`  
		Last Modified: Tue, 27 Oct 2026 00:16:36 GMT  
		Size: 39.4 MB (39440229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d20d47a419e94a7b18ab33603d7c05ffa86b686edcfa8fb1dac2d1eeaea80f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322d1f8abd69a7f2448bf3e0c6ff46e6956fedfdbc52d9f7e6ba1e67bd7553dc`

```dockerfile
```

-	Layers:
	-	`sha256:849ae2fc3a70c6c8dc55cf0cfe65f7723245df1b87ba8f52bf4cfed19273cb0a`  
		Last Modified: Tue, 27 Oct 2026 00:16:36 GMT  
		Size: 5.8 MB (5802268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd83cc020db6bc72bd354881a572c762a1a6f973230dd44e3c09a4c85f1d462b`  
		Last Modified: Tue, 27 Oct 2026 00:16:35 GMT  
		Size: 7.4 KB (7360 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:21b5cf4a027712a092ac5ff65a084b4db78180ac26b57a2acb9bb509fc142698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86654910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9e998d23c5c77cef955b7fa3b75478af4c063a9f26d97d464bb754b4aebacf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:04:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:55:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c4b9dc7a2354df2e35edb353a1cc49b08824bc575e47afcd3d19f7bb8e4e0b5`  
		Last Modified: Tue, 27 Oct 2026 05:04:49 GMT  
		Size: 8.1 MB (8147528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7832f30543b6086b3f8fb7e87e2b4fd86188d0da39f0907b111a1c4829f84cf6`  
		Last Modified: Tue, 27 Oct 2026 07:56:15 GMT  
		Size: 43.8 MB (43803449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6298c0f326c59442b730664353132c7d70600330c92fd9d8069ca276086c97ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5811030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:532e8e593635aaeb1bcd0512d6de3b93b32edf373daa1984823c8675b2e10a0f`

```dockerfile
```

-	Layers:
	-	`sha256:7889d99b0f836f477e49933d8b41f30e8026483472c15603afc73a282829844b`  
		Last Modified: Tue, 27 Oct 2026 07:56:13 GMT  
		Size: 5.8 MB (5803718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd4e1784ef6b33b79afe36c4642228a5dd1366497cfe1e0f2f75c7312fa9f6ea`  
		Last Modified: Tue, 27 Oct 2026 07:56:13 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:30073534b57ef45e7a0c987c62a39ab33c47984ba286dbe4d539517073a74e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76712686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4cce477653f034c10312eba38ece29b39b676c7aadb2faf9d3a519cafdc090`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:43:08 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:43:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:43:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:43:43 GMT
ADD file:3a112434c313852f6b686804b274c87a797fcad590897fefb541d77808d79b00 in / 
# Fri, 02 Oct 2026 10:43:47 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 15:31:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 18:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4d0bed838e14ade943d4e603c13a3b83dc36c839c35e0d2f7d454d8b6e9695c1`  
		Last Modified: Fri, 02 Oct 2026 11:08:53 GMT  
		Size: 27.3 MB (27302181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef54cb2ceb02818e62a5fbe1bd7c1dba3878fa8ea9188e9750d96aabccdce795`  
		Last Modified: Sat, 17 Oct 2026 15:32:06 GMT  
		Size: 7.1 MB (7078164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca2bd97f5063fb6df66fd78e87078eadd9a792c189e60e57f25cad63e953826`  
		Last Modified: Sat, 17 Oct 2026 18:45:22 GMT  
		Size: 42.3 MB (42332341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:95858be8bc8c44c01d489e5e1c83110ea7905d2501cf363e876840a676535921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5795576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c8e7881b351684320c5d69fe2a6ed94201cf6974d23934b2e9f6283f1c7325`

```dockerfile
```

-	Layers:
	-	`sha256:b06ca31a41bbafebceb5bfcc8150323cea9c9d0081b551df849bf84af53eb5da`  
		Last Modified: Sat, 17 Oct 2026 18:45:17 GMT  
		Size: 5.8 MB (5788264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966d1ee32a5492ecb7bf6689e68192c7bc433486134d307e4cbd7e537780b1a5`  
		Last Modified: Sat, 17 Oct 2026 18:45:15 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4c3702c88d043e10e93c45a0bffce3a3bd59d668477f547c5a0e143a2a018261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74641256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae5b6ee8808f560ffd7d3c485967520e1d7f61a54f2bac9219591701254e0ae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:35:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:28:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d3b9e8da04abbe828d49f1b6295392e456f000d35c9f55e31a2706fe054dc9`  
		Last Modified: Mon, 26 Oct 2026 23:35:52 GMT  
		Size: 7.0 MB (6977550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51aaca49a522e93796f5016482f1e4de6aea10ee7eddd846dfbf4e3110d7061f`  
		Last Modified: Tue, 27 Oct 2026 00:28:57 GMT  
		Size: 39.4 MB (39440900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0eff22e4b67e0759e1717cd55d5c1d0b2032bfbc9e85f9fe9c3906002681e1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5804074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d687afde3865e4fdf97ac7992848fee1e9c0b88855183b031e36685eb69aafb`

```dockerfile
```

-	Layers:
	-	`sha256:6903e1f871782d8f02970ab26743a9084b2c00a83ce3b3aa8e15d93e8d6a2842`  
		Last Modified: Tue, 27 Oct 2026 00:28:57 GMT  
		Size: 5.8 MB (5796793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95cac506d7b2a26282ed1024bdae564abf5caf39676df360e1346aea0fdbd687`  
		Last Modified: Tue, 27 Oct 2026 00:28:57 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json
