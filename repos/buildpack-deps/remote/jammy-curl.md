## `buildpack-deps:jammy-curl`

```console
$ docker pull buildpack-deps@sha256:d8652a0224193b3d95873585ff221528d60ea5ba66beb01960628bf8e7037b85
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
$ docker pull buildpack-deps@sha256:e4816c3222fb6387393f57230cc5b387093b1d88ceac32de21f6d85051cf5a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36819281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad21640f64fd5d557b28a18f4ce291d862a633a8419bdbcbc335583604034f0b`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:75a14be1e10df46277821c040d03f686f35e1c9c3956b9b6d073f1a6e46ee1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3195271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0dd57de9813b5fa67c7b068d7997d726e5489389bbb0b74931c1fcc4b316cfe`

```dockerfile
```

-	Layers:
	-	`sha256:262f1a16af0ce38e73825d5defc8a71ebb5d9f77476b8b1292da9971283d0089`  
		Last Modified: Mon, 26 Oct 2026 23:02:20 GMT  
		Size: 3.2 MB (3188391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc8639fdbee9efbd92126ea99792bab1834ba9fb9c882bde08a1b459e82deb77`  
		Last Modified: Mon, 26 Oct 2026 23:02:20 GMT  
		Size: 6.9 KB (6880 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:59901bf1c62ed0448a922d12ead75c585c53f6a70d8f9753006a7bf50b9e22ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33824133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66563450881d6f7c511d05f76649a7b32ba90c78caa08898ac1533a97f536c2d`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e98fe74ff8f12e907be7fdb054b3811d9fb6f7d7950f2b9177a2f9a26cbca772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de641b37540ee655cb4bb704c246fbf73c3ec631e4650f9e57fcc57496a508`

```dockerfile
```

-	Layers:
	-	`sha256:8105bac5d68cae03844271511cb7b36373cdf69c90ae679d94fb4d2afa7b2ebc`  
		Last Modified: Mon, 26 Oct 2026 23:48:29 GMT  
		Size: 3.2 MB (3190698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b64d19818e2791a03bf09bb61fb71f76cfaf63bb0c7bc6d089b4def38ce21b51`  
		Last Modified: Mon, 26 Oct 2026 23:48:28 GMT  
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
$ docker pull buildpack-deps@sha256:09223afa050cfdb101247b3eec77875fbe8edbfb7b911b275e462dc835242ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34380345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15bc5ceb3c4ba1900dcba8c7a3a5073d33d45e8f3b9f112387393160e8df62cb`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4b0be108f6be8d2df68a7fef2b8ad385032764059a1453c174dce7aceee2bb2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cf03baa92576a52bb59ce7695bcc5f6dd8dbc9da266c20bde9304209134fb6`

```dockerfile
```

-	Layers:
	-	`sha256:b81b87668c8c9b695762520057b9df588da7baeec8414cc0918fbc2b7ade7cdb`  
		Last Modified: Sat, 17 Oct 2026 15:32:05 GMT  
		Size: 3.2 MB (3184283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c84364de1902606422c22c4f1e35b37fbb46d2e7ddc6e527dd6a2f21c447ea4b`  
		Last Modified: Sat, 17 Oct 2026 15:32:05 GMT  
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
