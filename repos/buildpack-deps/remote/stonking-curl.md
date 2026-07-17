## `buildpack-deps:stonking-curl`

```console
$ docker pull buildpack-deps@sha256:f4d0bda2580fe961c9cdf3f84f8d926df242793b54ea2221fd82b7cd55916bed
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

### `buildpack-deps:stonking-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c1ea9daa0351ee6aac5d545cc67157ed51c3c8b9309db799eb066fca55ba7a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60652747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93584d250897a906f58f1923238a42f89fe463d408358525b4ca692561cd214b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.8959.tar --tag 26.10
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:02:45.701705+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:02:45.701705+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.8959.tar
# Fri, 17 Jul 2026 19:13:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:494b6931e23142385eb9e3736ba64fc4cd099834296ad198612dfa997b22c465`  
		Last Modified: Sun, 05 Jul 2026 06:07:39 GMT  
		Size: 41.7 MB (41718141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5d62685fc4d1087c915506b2d8c92e07a8fa1bd3ba8ffe2d11b62e8193df68`  
		Last Modified: Sun, 05 Jul 2026 06:07:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bc93c91df4ce26463407060f9ca89298191a569f418e4303ac902fcaf33477`  
		Last Modified: Fri, 17 Jul 2026 19:13:28 GMT  
		Size: 18.9 MB (18934198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6fd289ad5c6be6b726f3c4cb45edbe5cf8bb69bf54d8229e98b172265a72423c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4409039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f02e481917a94ea0c3dd1c3f7ceb1d8b476d81c54248c2df3c0f3cc772655f`

```dockerfile
```

-	Layers:
	-	`sha256:c1172520167eee7e1c0b3fa89379ac901e9b3ca244a7777fa1f2d2705d31e088`  
		Last Modified: Fri, 17 Jul 2026 19:13:27 GMT  
		Size: 4.4 MB (4401797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfeacda84804866aca9214ea6e0ae2c8830cd9929dc5fd056dd8bb4e1ea4ea63`  
		Last Modified: Fri, 17 Jul 2026 19:13:27 GMT  
		Size: 7.2 KB (7242 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c97a21158aeab6391c57194690a9e19239ee01fb5478f4410bc2d2a18769e2dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56100399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33637253d299d3e2240330df11d3b347cf14934a18b24bd975be32c201f3976`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:05:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.9137.tar --tag 26.10
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:05:19.167297+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:05:19.167297+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.9137.tar
# Fri, 17 Jul 2026 19:14:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:979cdb850e04fcaea1e28f20bdc9691a369068ffaef8aa02bcc614b34dc00a63`  
		Last Modified: Sun, 05 Jul 2026 06:07:28 GMT  
		Size: 38.9 MB (38881916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945fdfea6eae770ad46266121d06c9dfecb814a12bc32f98d1bfce82d6863149`  
		Last Modified: Sun, 05 Jul 2026 06:07:31 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adb6a821902368333d958cf087eb362363d8d33f2db7cbe08aeb2bef353a33b`  
		Last Modified: Fri, 17 Jul 2026 19:14:53 GMT  
		Size: 17.2 MB (17218095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5e5854f167dc51cd8a8787a75be8740a248ccc6fc8fdc21c05983ece8716d424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4410597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eba75cbc699c141427893ca65793d17a1af112a2267c7c6b0d199bf13609852`

```dockerfile
```

-	Layers:
	-	`sha256:63cd6ba50f62a629070b8b697e9b264346e74e10d9ed003489e52653caf8acf3`  
		Last Modified: Fri, 17 Jul 2026 19:14:53 GMT  
		Size: 4.4 MB (4403290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1e6ca6e0c5a3f3bd3ab4e854f3c7f91f8f166337a868ebcfd5a0193a01ae5f7`  
		Last Modified: Fri, 17 Jul 2026 19:14:53 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d5c4e35cb27f1ca003cbaa4748c78136f1f0f9022d9ff91d6b3a138e346b80c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59304423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929e681858d0f029c2cbc70e40ad9104921fd246f2c562890d68939ab11be2d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:04:42 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.9129.tar --tag 26.10
# Sun, 05 Jul 2026 05:04:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:04:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:04:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:04:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:04:42.692728+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:04:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:04:42.692728+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:04:42 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.9129.tar
# Fri, 17 Jul 2026 19:13:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:42e943747805b0ee4e60f0c381fb814b19292a73b1b9b10e77de68f349ec25e5`  
		Last Modified: Sun, 05 Jul 2026 06:07:49 GMT  
		Size: 40.8 MB (40826812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc12615a30bebe466fe66f03f75da7df709443664aee25a6f0cfbea28e0e2170`  
		Last Modified: Sun, 05 Jul 2026 06:07:51 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e068214820b0030c41d25829b95b7fd6e32eaea8b4fad130c2a7d35f586f4fe9`  
		Last Modified: Fri, 17 Jul 2026 19:13:21 GMT  
		Size: 18.5 MB (18477222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b13d2a24f5e42d2f2377fe63a1a9afaa953777ccd151b3a63be3f5d871b90c50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4409374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5dd1ab7f5058d5b9061a5be6b83b4e5af21be65284567e82e8ab6a467900c8`

```dockerfile
```

-	Layers:
	-	`sha256:1311782dbf17e749d107ad74b0676ee270e89e51ca9de319f697d7f621faf1f2`  
		Last Modified: Fri, 17 Jul 2026 19:13:20 GMT  
		Size: 4.4 MB (4402052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b682af13785ef4c085c4875120d97c7aff05da3b29b7cb0b19d13a54cb27a8b8`  
		Last Modified: Fri, 17 Jul 2026 19:13:20 GMT  
		Size: 7.3 KB (7322 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:61ee491bb5088c197964485977c6e6c5f07010e813a36fbe71051ff6734b180c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68306350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c613451b180c9b7a02232ec71b12ae2d4f068f5bc9c3df4eead3a9ed84fc2107`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:05:19 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.8953.tar --tag 26.10
# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:05:20.176803+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:05:20.176803+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:05:20 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.8953.tar
# Fri, 17 Jul 2026 19:14:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:78b60d48005aa89560ed425be09b8751f399ecbac2293b4395c3afdc22b7aba5`  
		Last Modified: Sun, 05 Jul 2026 06:08:08 GMT  
		Size: 46.9 MB (46903219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559384570ea8794da3138e5a4337569d73ed531418fd040bd8974e9f2dce59ce`  
		Last Modified: Sun, 05 Jul 2026 06:08:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f69ad037aaf1ce1d403e4913fbf01e71b24e46b7d2c987aeba270d82189fe2e`  
		Last Modified: Fri, 17 Jul 2026 19:14:37 GMT  
		Size: 21.4 MB (21402740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f459f44a9c40059ed803a47c345a46d26629298f3e70e5036962cc650d0a3fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4412872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7406e06ae80a2e8e9ab8541bb97ea35880295eac73f1e090a9a97f886ba55410`

```dockerfile
```

-	Layers:
	-	`sha256:8cdae499eed8734bd4aef97d89416416cb67f5b94aa7b7342a46be0e064b69d1`  
		Last Modified: Fri, 17 Jul 2026 19:14:37 GMT  
		Size: 4.4 MB (4405597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab77d7f8dd6496afc39e9e89f976b67600638670b913d3d13116e570b7ac56c2`  
		Last Modified: Fri, 17 Jul 2026 19:14:36 GMT  
		Size: 7.3 KB (7275 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6f9a8b70b82e2f846e2757e0ebfa9c450a2de1b1d102b7282a409f4a7974bc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60749540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41637d6adb4740d7e12cb1c94100a83d79d1fb7e4fb42435cdaa491cdec721ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.9048.tar --tag 26.10
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:06:45.369521+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:06:45.369521+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.9048.tar
# Fri, 17 Jul 2026 19:17:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b1ae513063a3259629bbdf65b97f9209febd48c54b2630a21e995f38111a93bb`  
		Last Modified: Sun, 05 Jul 2026 06:08:18 GMT  
		Size: 41.3 MB (41304292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd32bb1cae263ec245a2bab33c4f5866723e16da0a1f83daecbaa5850a44ad2e`  
		Last Modified: Sun, 05 Jul 2026 06:08:21 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d322560cb66865f554d353d0569c450b4d93b307ee27f421fd6a0f4d7233bef`  
		Last Modified: Fri, 17 Jul 2026 19:20:38 GMT  
		Size: 19.4 MB (19444861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9adc28caeb3b04d2413dc6f14b2a1b408bcb8f0afb808913d6f19bde219ae29a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4411074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4388b1c06dea11c24b87e4fcd9e3cc03ffaa89d03c8089719513d1d09f2cb0ba`

```dockerfile
```

-	Layers:
	-	`sha256:fc4f33c17c2e200430604e0c328cf7321fac8b829710bfaf9b105c0f77771d2c`  
		Last Modified: Fri, 17 Jul 2026 19:20:36 GMT  
		Size: 4.4 MB (4403831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:439f8a1b4666d28c23f3681aeba93b16662fe0ecdba347bab6caead79a3d82f2`  
		Last Modified: Fri, 17 Jul 2026 19:20:30 GMT  
		Size: 7.2 KB (7243 bytes)  
		MIME: application/vnd.in-toto+json
