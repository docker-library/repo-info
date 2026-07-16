## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:651ba3fe3a830441e3deaf70fafac40d808a6bd2800a6f2c43130055159f23e6
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

### `ubuntu:rolling` - linux; amd64

```console
$ docker pull ubuntu@sha256:7c2884fd32770fc6c173b78e0dc2278a2851d89f5447919edbc45475ac55dd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41581150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7345b16e942e22044c6ba053020ec85ae879984860a9918517d54eb6cef851`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:06:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.8989.tar --tag 26.04
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.8989.tar
```

-	Layers:
	-	`sha256:ed819469700fe2cd94f44a7c218a84e40cda16dd2e7e5238cbdef33e6153d536`  
		Last Modified: Mon, 13 Jul 2026 22:13:37 GMT  
		Size: 41.6 MB (41580757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3679419df184857c0d317d7cdaad6187f6c0f0b68dd2ed58becf174e28f4c1b`  
		Last Modified: Mon, 13 Jul 2026 22:13:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:46c06e647987ca8a733617391168ee527e1e42c41094b8cb45feb652db0254cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3705074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4abd30269f4740ff09dacb3a548b334e9a39b263018ab26c38037200e21d35`

```dockerfile
```

-	Layers:
	-	`sha256:e16351a257e45cbfc4164edf86cdfcbd6fe13137884782f613f3615762f912bf`  
		Last Modified: Thu, 16 Jul 2026 00:19:44 GMT  
		Size: 3.7 MB (3705074 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:a055d6b31f9cb70d7e6f764e58c03bb2cc1712ef409c6a9c045619b96eb18e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38749635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b132df813de0e9eda1bc2ef526d2a212246039130a15def7338b24be61d7f4c6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:31:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9155.tar --tag 26.04
# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:32:00.638517+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:32:00.638517+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9155.tar
```

-	Layers:
	-	`sha256:aa792015b30db3d1c721c9b85ed84e4c55d79864d86dc190122d9b95aaeb3cb7`  
		Last Modified: Mon, 13 Jul 2026 22:14:08 GMT  
		Size: 38.7 MB (38749247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6a3f9e5b4e5a1e7252e8cb3569bdd5cacf2f5f84e5556f2e77bba25c6bb279`  
		Last Modified: Mon, 13 Jul 2026 22:14:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:e2a4f8ce17c42a383b2e73ef5ad401c5249cbf1c94074dd63e44c7e6b77cacec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3706453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1110d13720997cdb8a454b0b27ac6454ecf35d8896bed0de38b31fb66954fd90`

```dockerfile
```

-	Layers:
	-	`sha256:04e58f684d1031f4d785130dca1b78c04b536f1a6728b6b47f2c5c562db2d12b`  
		Last Modified: Thu, 16 Jul 2026 00:18:54 GMT  
		Size: 3.7 MB (3706453 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:9c17d26897bad0a168dee2f03da949e26458e1eba3228190ac0022d3513498a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40705736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9238bf8bb4a4e6efb7e7c96bea51fb7a167315f6de0f18d1ea9eca0070e25336`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:c9b27fe9b938f5026682ba02bf4dd49433cc619529d57a14b294d6c993635f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3705267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ccc6f71b29b8668a0399237f79ddd0623106741eb428831fe005d44500dc5`

```dockerfile
```

-	Layers:
	-	`sha256:fdfb14aa961ed14c762110be45dee44a8339f36e5ddcc1b2fc715f01cc0141e7`  
		Last Modified: Thu, 16 Jul 2026 00:19:29 GMT  
		Size: 3.7 MB (3705267 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:027aa0fa42126bcf6ecf6dee7a27925f7ca26c7a894d6a427c1d0ccb11bb3b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46799891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9d5f565526f40cf88137851e71b8cd412cf9854df1ff88c02755075cb96885`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 15:58:42 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9051.tar --tag 26.04
# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T15:58:43.512039+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T15:58:43.512039+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9051.tar
```

-	Layers:
	-	`sha256:da93fc9e7a08b0f170c4b61e1cf9a2115ba0a3d68cfa67692c4dceee9966cda5`  
		Last Modified: Mon, 13 Jul 2026 22:13:58 GMT  
		Size: 46.8 MB (46799499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c25de32f797d08e02ab7b61d6f6773457c56c2063dd25d4c9fb0a292da97b1e`  
		Last Modified: Mon, 13 Jul 2026 22:14:01 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:46e39dd67c4f786851934ef7f48db557069aaccad8f87d5cc25a85b289aa3c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3708599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74cd5b078f9954086237c21d88f8db7df82440dc594c591e33250bad20e3d6a`

```dockerfile
```

-	Layers:
	-	`sha256:44f508f39892a38e6e09447d334321547a93f70c64ea497aa444438df03e79f4`  
		Last Modified: Thu, 16 Jul 2026 00:18:54 GMT  
		Size: 3.7 MB (3708599 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:rolling` - linux; riscv64

```console
$ docker pull ubuntu@sha256:9c405b2c55c8bce5c9d93abf9040d93ede2db3f3152a920b41c208e19bf3e67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42270939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db48bd171bd1b34671200a17d832b66e0a3755e4fd9d300947549592ab24e772`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 10:56:37 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9116.tar --tag 26.04
# Sat, 27 Jun 2026 10:56:47 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 10:56:47 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 10:56:48 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 10:56:48 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T10:56:48.474611+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 10:56:48 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T10:56:48.474611+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 10:56:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9116.tar
```

-	Layers:
	-	`sha256:3b083a1c6082d2fdc77ca21674552ff486d44bf5cd285f9e1a3f2e2f7c23d8fd`  
		Last Modified: Sat, 27 Jun 2026 11:15:15 GMT  
		Size: 42.3 MB (42270544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7598326f859ddee82f045bf379cdd2b66108b5342432f71592f0136d7495ee09`  
		Last Modified: Sat, 27 Jun 2026 11:15:18 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:945aed9e87dbb6c788b35d19b4fed1bfcb519e378e847c7166365c737afbfdbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3698023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab704c07db1bbcb12ac3cbfa36eb9b87c9b8923e4e05631ca808226659b82408`

```dockerfile
```

-	Layers:
	-	`sha256:365869110eac4b8b2724644f2bfee5ac81544fc5595171e151a0c1dfacf16157`  
		Last Modified: Thu, 02 Jul 2026 01:14:24 GMT  
		Size: 3.7 MB (3698023 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:rolling` - linux; s390x

```console
$ docker pull ubuntu@sha256:dd02feef3bda46bdc594ec34114348171c35c423c4c30d79e4458cc127ad75c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41158304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8de64de8054459083f5a441d1f61872b3e91187e1f6d19031d6968df379b68b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 21:46:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9066.tar --tag 26.04
# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T21:46:15.064196+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T21:46:15.064196+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9066.tar
```

-	Layers:
	-	`sha256:8bf47cf5e2e1fd91308da2c6ac3ffd390f5fe8d4eaad8f16c90039fac614fdb4`  
		Last Modified: Mon, 13 Jul 2026 22:14:29 GMT  
		Size: 41.2 MB (41157914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee76025823faad7e29b9d2c280cb2c471faa01b3c79c303d1c8a2c99118ccbb`  
		Last Modified: Mon, 13 Jul 2026 22:14:32 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:86004955779115da5901edea25c9d6c4ac69ca575359a0f68839af567c2787d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3707139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4666ee7eb92949e8767938e68b25e47ad1a12205867cf676a5f379d2ea5f4ee1`

```dockerfile
```

-	Layers:
	-	`sha256:bc629b6becdaf9eceb42db23754a8707646a3df4ed01ddc89fec00d708537703`  
		Last Modified: Thu, 16 Jul 2026 00:17:39 GMT  
		Size: 3.7 MB (3707139 bytes)  
		MIME: application/vnd.in-toto+json
