## `buildpack-deps:resolute-scm`

```console
$ docker pull buildpack-deps@sha256:9f68879d01d62e2fdb01c11c5bb5d9b1abca1f9a229d4215669f30d26dcb9125
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:resolute-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f25b5f29e79a2e85a846a5d34b6c4db77c2f5ce8cd21ca85e2dea3f500ae9a0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113381586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febaf3008254bd8a5207a41efba9a1f1f531c92d7062df27bfe45018f8cfda59`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 02:18:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a676fc846f35c3b35eb6f04e8e58675bb7a8d535a4e617a0abf7e89a7de1a8`  
		Last Modified: Tue, 04 Aug 2026 01:15:34 GMT  
		Size: 22.5 MB (22457860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07ff483592b4c14382048e83bb6ad72bc571b662610f18f6af7346e0a354af1`  
		Last Modified: Tue, 04 Aug 2026 02:18:52 GMT  
		Size: 49.4 MB (49355062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a756e3b4df7860a2297648f36cb5648673d779462b7d9567d510612df4d42e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7289361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9980ee0377b903148db6de2d447ab4817beed518529f1be25381afb6b78b15bb`

```dockerfile
```

-	Layers:
	-	`sha256:9b4a603941599927a40b1f15243c92d3a9ea2eca01885e02cc9eea0128d3fce6`  
		Last Modified: Tue, 04 Aug 2026 02:18:50 GMT  
		Size: 7.3 MB (7281772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53906ae702a74aaca99fc55e86b5a6d768b9ce3b2614e22171d91d2543a19ada`  
		Last Modified: Tue, 04 Aug 2026 02:18:50 GMT  
		Size: 7.6 KB (7589 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:resolute-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4a09630a92b576353314bf58106bad068fdd8ec32fa167aec869a227e64bd5ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108729265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d66c7a32f6eaddc2d4b5028c1f5ef0443d59141230f63c472b23ad30a4b44928`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9263.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:53.356062+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:53.356062+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9263.tar
# Tue, 18 Aug 2026 19:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 20:22:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2deb39580e5af4c89787f50381fddab8cf72f4ecb3d9252795af7ccb34934f10`  
		Last Modified: Mon, 17 Aug 2026 11:35:47 GMT  
		Size: 38.7 MB (38743245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfad930506f57b0b580c596e4ddbc8b4624b90f9af092dbc201f17ee4aef8bd`  
		Last Modified: Mon, 17 Aug 2026 11:35:50 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599f03ccaf8a480417b9a252f10f41cd6fbc5358f491b6413798e4de08173cfb`  
		Last Modified: Tue, 18 Aug 2026 19:11:17 GMT  
		Size: 17.8 MB (17779459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836d2dbae94284c779eb7e0258e3aede34497fe58abbfad66df95b71c53a7184`  
		Last Modified: Tue, 18 Aug 2026 20:22:29 GMT  
		Size: 52.2 MB (52206168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1bca58e56e97dc628ad329ace337ed38b63e4ec7589bcfe45fe0597c992a8d1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7289951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0878a27c424f25a7492bde85065f6361e9de8a01514a85598cc96c9f60b541f`

```dockerfile
```

-	Layers:
	-	`sha256:5d55bb9221eec71793d55d1b8bb4cf565b6d83bde59e536fdd09b8bb2ab1e822`  
		Last Modified: Tue, 18 Aug 2026 20:22:27 GMT  
		Size: 7.3 MB (7282299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e843779d063027ff53abf11e0d17e5ca4d3fa6db6ce871fd20dee92e566361ec`  
		Last Modified: Tue, 18 Aug 2026 20:22:27 GMT  
		Size: 7.7 KB (7652 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:resolute-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:27746232266aa535f872041ab1c91e283b9c1ddafcfd90213ec6b90d8bede8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112027687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878cb05359ccbe9f4ff228261e82bd0410fa658af116c343d4812610f94c8b49`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 02:18:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5765947ad0e2282f176f47ffe73c3ddd34a296d1dfb478f1331dfc9f92430d7`  
		Last Modified: Tue, 04 Aug 2026 01:15:20 GMT  
		Size: 22.4 MB (22356848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391e862f37b18918029c9e59f3e4ac8a4a58a25394bfef52c0c820e0b3bdae3b`  
		Last Modified: Tue, 04 Aug 2026 02:18:53 GMT  
		Size: 49.0 MB (48975362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:41a5bb1e7b792a944b321f9876cefbe6f4a3e180b9d9c859bcc064d64fb366d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7295829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4263f0daf6269811604332ca8fa7bd04739306941866341db34a8473e424c0b`

```dockerfile
```

-	Layers:
	-	`sha256:fce86eef195e75080e4125c0b7b314d5813ff46e6a76f42e0b1b59676b035e80`  
		Last Modified: Tue, 04 Aug 2026 02:18:52 GMT  
		Size: 7.3 MB (7288160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed48728d6d8d3de0f04e9e7331b3dd6146817fb623a2cf26bea7cfe1f46d5e8c`  
		Last Modified: Tue, 04 Aug 2026 02:18:52 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:resolute-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5877d3393af9075602e447714860528f21028895c87117fa10b4c404106c0570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.6 MB (127609537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fd805b2b9fcd64df37fff3158f144f20e4ba9288f990a29bc6ed6857d71ebf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 24 Jul 2026 15:36:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9150.tar --tag 26.04
# Fri, 24 Jul 2026 15:36:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 15:36:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 15:36:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 15:36:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T15:36:18.038301+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 15:36:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T15:36:18.038301+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 15:36:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9150.tar
# Tue, 04 Aug 2026 01:13:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 03:10:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:09db4e17b15bc005e878c30ddbcd47b57b0a0892ae62c37fb5f357cd52bd5ff0`  
		Last Modified: Tue, 28 Jul 2026 09:46:59 GMT  
		Size: 46.8 MB (46790717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac91b4de129e076f83a2a38a587195ad1ed1429ac3a4024ec8e811945b699dd`  
		Last Modified: Tue, 28 Jul 2026 09:47:01 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298ac242efa65f1f96207ba4f2aa574f5fcd11d79aa7f5945d8d3fcf886e939d`  
		Last Modified: Tue, 04 Aug 2026 01:13:41 GMT  
		Size: 25.4 MB (25414141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147cd84ab23e5ede4c031b9d0a1feeee2798f7bb369491043c333eb49de6eec0`  
		Last Modified: Tue, 04 Aug 2026 03:11:43 GMT  
		Size: 55.4 MB (55404287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8c7da84d193811ef360c255ad0e2e9728d48bb27fc076ad66aa307d075c6035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7296452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf9abc6273e74c54d12d094e3324b89a13610d5e5a3f6902c218537696b6f75`

```dockerfile
```

-	Layers:
	-	`sha256:398fe89903fd4f5f3cb0faea8cb54eef2b129ff2e300caa4aba2141c11f482ee`  
		Last Modified: Tue, 04 Aug 2026 03:11:41 GMT  
		Size: 7.3 MB (7288831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11ddcad34b256cb6ade4925a96d3b2cbcb9c5846cd57e8b7aa65e458c2127cab`  
		Last Modified: Tue, 04 Aug 2026 03:11:41 GMT  
		Size: 7.6 KB (7621 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:resolute-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:f9d55e1862815e7f8115fff533e239d4ba438626934466f2592cfee6f0d612e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111679663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351af85f327fb06ad76e1f3aa541bd794761ffb7bcdf6fcde918b2388f4c7d95`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 08:51:48 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9176.tar --tag 26.04
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T08:51:49.237511+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T08:51:49.237511+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9176.tar
# Tue, 18 Aug 2026 19:09:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 20:12:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b1aa13925330270ece5314333db4d2d0539a9fa79fb104cd43d7595fe5aa69fc`  
		Last Modified: Mon, 17 Aug 2026 11:36:08 GMT  
		Size: 41.1 MB (41147115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d201668f161ff89d301e6e21bd71b4f685b5539cc6d2cda9e1c09a9dd2d0d04`  
		Last Modified: Mon, 17 Aug 2026 11:36:11 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b22a03d3d371f791cade9a49c3ddcfbebfaca1ec6b5a693b9fe2cb2a7d7cd95`  
		Last Modified: Tue, 18 Aug 2026 19:10:07 GMT  
		Size: 20.0 MB (19972767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8187633d6b658abb9d49948ff08a3ea8bb337ce213b94aaf6a917ece669d46b2`  
		Last Modified: Tue, 18 Aug 2026 20:13:12 GMT  
		Size: 50.6 MB (50559392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:resolute-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6c42b64c8097316e368ad14f6c4cf00cf96a90a7b8f4af053c14ca4c923ef01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7290120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef3551026f056fdd739239dcfda246c8a7b8b10e5757fbfff766640fc8e8ba3`

```dockerfile
```

-	Layers:
	-	`sha256:82ed07016d0ff42e86dc3390f4aa850d41f60942ebc77afe48c5770989c66f84`  
		Last Modified: Tue, 18 Aug 2026 20:13:11 GMT  
		Size: 7.3 MB (7282531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e88bbe8d781dea8e22f87249e115a1feecc6202decbcd6f97c352cb3cd54f3fb`  
		Last Modified: Tue, 18 Aug 2026 20:13:11 GMT  
		Size: 7.6 KB (7589 bytes)  
		MIME: application/vnd.in-toto+json
