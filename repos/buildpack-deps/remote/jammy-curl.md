## `buildpack-deps:jammy-curl`

```console
$ docker pull buildpack-deps@sha256:4725d8eb7b929e4447e1b7278b55fab0357ec38f077d17124f0b8645a39c85b7
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

### `buildpack-deps:jammy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f3e6917fca19051cb9bb812b7821435b031630869b67a5e610f3b0f6665e1c9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36821529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f798a844fac653d1effc3ae1e41e90c93763f4f8c4096da8e6ccc1fd3497d6fe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4bd2e1cf8d1673ed087d13e7d4484e4202ae74747f4712409ed1e6adfb72f2`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 7.1 MB (7069053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f82c00629b1e7def8969b7cea38617035bba2ffb4d92563a3e4d4b8a8f9b1b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3195904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0105f71536bd7365ecc7af9f4d7d7d7273163701a5d4ea301ce43ece5b123e50`

```dockerfile
```

-	Layers:
	-	`sha256:1632eec32989aade0404c156d00008d41e20246fa13c927bf7aef8337cc7d95d`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 3.2 MB (3189023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e73434c857e4e63d77d87ca568e9accad1dbda8b70d6b47a22a21e66a550aff`  
		Last Modified: Sat, 17 Oct 2026 00:12:09 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:870ec0812fe036a42459ddf00d826c114f28ec88b17362d9e68912b8439c9a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33826075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab774b438412d96ea529892d12cdaaf5c5c2e9c1074627848ae53ecf602c8c72`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:21 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:21 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:24 GMT
ADD file:50a860bb86a61a938205aa42540aa15297b2f6be7f485db52a6f525e3208ef3f in / 
# Fri, 02 Oct 2026 10:27:24 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9787843ba490cff9717a8f5c2f4e7feb6766cda214d74e674690b1d2f5c17e79`  
		Last Modified: Fri, 02 Oct 2026 11:08:39 GMT  
		Size: 26.9 MB (26856530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07859acbfbdb693d7ae7a02009be4082ccb3a047264599451d084aff2706ee22`  
		Last Modified: Sat, 17 Oct 2026 00:12:27 GMT  
		Size: 7.0 MB (6969545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0bb35d8c7e74fd13dada0ad0a142d5d5a187b6a9e602d666fe0ae22c4aa4e311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8e26342d57bb7a2a6c560d9d04ec14a2e16b3a19f1125307cc32e9ae90d45c`

```dockerfile
```

-	Layers:
	-	`sha256:4665baf8f6dabbb6d43c458fe7da0f868924258067b16570a6c24141a13c50a9`  
		Last Modified: Sat, 17 Oct 2026 00:12:27 GMT  
		Size: 3.2 MB (3191330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19fe293b152c68b13ffef4cfc4ce7172d2f66e1ec801af9a6ae2854d5b10c371`  
		Last Modified: Sat, 17 Oct 2026 00:12:27 GMT  
		Size: 6.9 KB (6945 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7a153faec930ddbb051fc5329fa2818e2a65d74656681ee3eceae827166e7cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34706824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db08d4a51b29c1ea1c03dd90b6a6b4cf0dbd64139f6ecc89eae67b12ed8a641`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95774da1dbe68bb0136b29920ab4d48aea1373113a4ef80d7a8fb7e68edbba`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 MB (7022101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9dc84052910e3caba0ff77bad02da3a6876e9d5482caa315f9f80be654cdb33f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3196251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278cef0c7ec9e7721e493adc8616ed04dd7919c912cc685496b0421f9726a624`

```dockerfile
```

-	Layers:
	-	`sha256:7ed2e2e5080fc8737df0470def4035f4f4e39670bc29e2230b6f789286b1d434`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 3.2 MB (3189290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90ce49b182d8203ce3f281a9e8f831e15898804d275253d85c3b668bccd56876`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 KB (6961 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:44470f715355bd4c23f0193bfae27075920276741a2187767a354068fd24fc79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42852388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7033a44e8bd47637f578b46d4e847d7fbfaa032f96dbb61cee0b15dc82ba3c5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:13:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab42a1bb07aabf12e370b02657a842aa784ca2eb369d42c7074e8a465858530`  
		Last Modified: Sat, 17 Oct 2026 00:14:13 GMT  
		Size: 8.1 MB (8148751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:392a3df13e5a39db7be697039dd7497a4fb3b17ca3e7f1f153bb30b82b6b4e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1361273a16faad5fd6779714237033c0d79cc57a2d3eaf3ece777a8efc79054`

```dockerfile
```

-	Layers:
	-	`sha256:13eda3b754734c7dccea347302dd8a927fafd93fa5698bbcfd38d4e57d6491f7`  
		Last Modified: Sat, 17 Oct 2026 00:14:13 GMT  
		Size: 3.2 MB (3193659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9995d5bc03b8ee8bb0872dbdcf41d1536456573fc17c19ce8b3eb01cae166a4`  
		Last Modified: Sat, 17 Oct 2026 00:14:12 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8e576f55dff306092957be11063790dd0c67a9efe55b538b6a24d6ad5fbbf209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34377199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3f3555fc2351d3ebbebb4da7cb4dcb575ce7ea88614cb3305d97b465647ccf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 23:05:25 GMT
ARG RELEASE
# Thu, 24 Sep 2026 23:05:26 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 23:05:26 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 23:06:34 GMT
ADD file:cb3a3c94d10d49287891ea08cbf8b7fe79473139463a46576d63e2080b6bc527 in / 
# Thu, 24 Sep 2026 23:06:40 GMT
CMD ["/bin/bash"]
# Sun, 04 Oct 2026 20:37:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f3630582427710780089d8db818cfc199c0497126d6d8cff737fe0c0f2c57faf`  
		Last Modified: Thu, 24 Sep 2026 23:36:32 GMT  
		Size: 27.3 MB (27301128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b2bae9d2354f858148e47c23992147b58b4bb8af88954f41563f4b430396d1`  
		Last Modified: Sun, 04 Oct 2026 20:38:39 GMT  
		Size: 7.1 MB (7076071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2225b139d23038f3ff8eaa9bed3464f557ff4a67b1e8c560dba72bc0c6525d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3026984b164e77f4dc262ecd0519079fd0af5db10933b09e11164a3e9e9f532a`

```dockerfile
```

-	Layers:
	-	`sha256:8623cb22e1ae2c28a05a2b82a5ab5625b5d138d9df21e1d9b923b6ddf2d7f5fe`  
		Last Modified: Sun, 04 Oct 2026 20:38:39 GMT  
		Size: 3.2 MB (3186186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f1862862fd52ff8401b99cdb07d45ada5ab11bcd1024e266161a79e1b5d9b0`  
		Last Modified: Sun, 04 Oct 2026 20:38:38 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:277ef5db7bff884f05873ed11d514a7a42e8cfa7553bf0e14181a6c3da1c53a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35202726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef0f31268486ede45eb9e8e9a1380df30dd61a4952512825a696b71f5b301a4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:47 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:47 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:47 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:49 GMT
ADD file:37d95fb30f79d123e31757f3914721d25b7e55b974a72d49a4ef18cbdd2c5044 in / 
# Fri, 02 Oct 2026 10:22:49 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1cc3b16ef800fa37e67e957552c6fceece7de8c1f49769006e2e5ee5704c33e0`  
		Last Modified: Fri, 02 Oct 2026 11:09:00 GMT  
		Size: 28.2 MB (28222770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ba51a3bcd334fd30a3f5b87ec753bc2d99e55b2566f414d59b97aee424d886`  
		Last Modified: Sat, 17 Oct 2026 00:11:01 GMT  
		Size: 7.0 MB (6979956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e101d50f3bec7ab45ebfada8c7efe44dce29d819f3811e07801bf7e6bcdfebb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398120d30ad730ba137141e9fb6fc3e957cbfbf151e3325e1bac59e004cc3822`

```dockerfile
```

-	Layers:
	-	`sha256:cabde50ac323dbd5d0aef7eb3de0fba7e2ceaa84daa6808729f208837b936a8f`  
		Last Modified: Sat, 17 Oct 2026 00:11:01 GMT  
		Size: 3.2 MB (3191240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d69ff8a693f2dcdd3e2041db3511b869874af1b11063a01db525b13f2f46585`  
		Last Modified: Sat, 17 Oct 2026 00:11:01 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json
