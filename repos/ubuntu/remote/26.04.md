## `ubuntu:26.04`

```console
$ docker pull ubuntu@sha256:f144425ff09be612d6d9ad965196e9cdc23dae1f42110a8a11a3e9a8198759f7
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

### `ubuntu:26.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:88a381d5b5eeb2b35d3ad70925a362c37ce569daf43ede89ff818ec20e4d3794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41837909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e92c4fd8dfdf7276d56743a65002a91c9eb35dbe7af327e6c85bd204b646156`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:26.04` - unknown; unknown

```console
$ docker pull ubuntu@sha256:e1bc42d6c867c3b8eb305cd9edfb144488a721631e17105c5b30890ec4e7bdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3747531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed4b0f595ad930f68cb281baa9cb9e62fa91cd34422fe8bae2207b2f1cea4717`

```dockerfile
```

-	Layers:
	-	`sha256:8f70d2bfe91ae9ab8966ab965b482fd04f86047eb78c1ff48675d81efd3897d6`  
		Last Modified: Fri, 02 Oct 2026 00:17:15 GMT  
		Size: 3.7 MB (3747531 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:26.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:b6494803896c506c06af0b0a6ace05dba93223f157da57ba5c645a1571d1c25f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (39030789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b369696437914e29a56e605d21d82a7fb126c4a709be9e3d7ec8540795098f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:28:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9618.tar --tag 26.04
# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:28:34.968156+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:28:34.968156+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:28:35 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9618.tar
```

-	Layers:
	-	`sha256:bf7b4836e7438e88b9c61586d9311de762063b89a9d0e3a79b787fb3046fad7b`  
		Last Modified: Sun, 27 Sep 2026 12:12:36 GMT  
		Size: 39.0 MB (39030395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d05a1bce55d568a59f618862891d55343aba4ed1af2455c1e2ca96a615344b9`  
		Last Modified: Sun, 27 Sep 2026 12:12:39 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:26.04` - unknown; unknown

```console
$ docker pull ubuntu@sha256:5c4eebf590cb46cab3b31ebd616225fabca906a9253c4129116a4433bb6af4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3748910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aeb622db143bd5a785c6e6617ae89fe2cd5b127c3bfba617f5db14ed764a10`

```dockerfile
```

-	Layers:
	-	`sha256:036f8a6fbc1be2f57a85b079122f59999f402d9d70902d7a58bf7730a3ab7ef9`  
		Last Modified: Fri, 02 Oct 2026 00:16:58 GMT  
		Size: 3.7 MB (3748910 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:26.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:3ad1c71aa6b7e477f7aa91445a5442fbb163742849393b511661a88081c3d7a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40865147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b016b8418dc08803fa0fb3aea39d5029a8a6c05a861adf9905a20d7307bdb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:26.04` - unknown; unknown

```console
$ docker pull ubuntu@sha256:4577594852b7ef538bdcf1c22126d1a7346c040f5e2eda97518830a2f2eb9e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3747724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bee06de0fa000839a62dda0ea5d8ed4254f70ec2fdfb60c3fcc11547411e10d`

```dockerfile
```

-	Layers:
	-	`sha256:a9ea534126933fb25f850af7823b89dada7bc92fc59ce4db431da2ef912c9365`  
		Last Modified: Fri, 02 Oct 2026 00:17:16 GMT  
		Size: 3.7 MB (3747724 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:26.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:8e2160e074a674ada24f38141945bac8df26f88a47d759d05bbb2fa42a9ea3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46963417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ebc13ff99c3c00373eb9771371c28c60929dff735a0c8ce23c412fa4b57da6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:30:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9496.tar --tag 26.04
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:30:04.151026+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:30:04.151026+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9496.tar
```

-	Layers:
	-	`sha256:24cb2080a4f15f9f8f3e5b34cf3d351ca6a179e34ef7a5be195547649bea7b44`  
		Last Modified: Sun, 27 Sep 2026 12:12:27 GMT  
		Size: 47.0 MB (46963009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f37a94bbdd591f234d1c72cb2519dfd51120a905756ba0cb98728f447abe93`  
		Last Modified: Sun, 27 Sep 2026 12:12:30 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:26.04` - unknown; unknown

```console
$ docker pull ubuntu@sha256:45bbdc2b188003ba739085f4b37edb23fd35c0f9201c8a420585bc3118f6cab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a1cbe1645ee418821a20c22e821285c6cf4f0eaad195c316ff933092f11fc4`

```dockerfile
```

-	Layers:
	-	`sha256:7ef55a67cee2316f89fd9557ffad839476744c38964bf347d8e0d9d334327354`  
		Last Modified: Fri, 02 Oct 2026 03:04:38 GMT  
		Size: 3.8 MB (3751056 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:26.04` - linux; riscv64

```console
$ docker pull ubuntu@sha256:2e230ede84f76c54c57437cc1f1f9f8bf1e5f78031fa0b1d532ab7396cc5612f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42179293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae34af007b0a1d0d60baf32d7678d635c28af42d06fa21ae61194b8bdcb9eda0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 27 Sep 2026 11:24:48 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9714.tar --tag 26.04
# Sun, 27 Sep 2026 11:24:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 11:24:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 11:24:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 11:24:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T11:24:53.438745+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 11:24:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T11:24:53.438745+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 11:24:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9714.tar
```

-	Layers:
	-	`sha256:2d9680e53f19447268787afeef00096eb048e850a5ddf8e0af81b76b3cf8fcb3`  
		Last Modified: Sun, 27 Sep 2026 12:12:46 GMT  
		Size: 42.2 MB (42178882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db560e4d8eeb4a61800db71f4bcdd7def6cea15fe32fe948848a78b0f392543a`  
		Last Modified: Sun, 27 Sep 2026 12:12:48 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:26.04` - unknown; unknown

```console
$ docker pull ubuntu@sha256:3e51c721f6b899a10d32abf0113cf2eb939ddee6610f943c2be54afc5dee78cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28176def7ebe04481c21d39c683020b77dcfa81d8a47ed9feaced1ab35812924`

```dockerfile
```

-	Layers:
	-	`sha256:277509e14b234c232772a305964dc933cb5fb004da9acf6ad2c5a68e671b7b6d`  
		Last Modified: Sat, 03 Oct 2026 21:15:41 GMT  
		Size: 3.7 MB (3740420 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:26.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:d812c8d15b3ff6102cf9c0a5fbfdf97d5ebc2193181672db87a4193adb641fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41627641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3045524d7d4ba957cb19fb694b4562c8f35cbd37c8ea5115aec6c83aeab798`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9534.tar --tag 26.04
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:27:53.861327+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:27:53.861327+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9534.tar
```

-	Layers:
	-	`sha256:d6ebc3b508a6f57d9b3b99430767da95a84a53508b118d1f4ba5df92e295dcbc`  
		Last Modified: Sun, 27 Sep 2026 12:12:55 GMT  
		Size: 41.6 MB (41627251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd388e78139fa95688128f54e9acd78f41931e116be2f83de83559b714894c3`  
		Last Modified: Sun, 27 Sep 2026 12:12:58 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:26.04` - unknown; unknown

```console
$ docker pull ubuntu@sha256:5de45f5b7c1505fcafaf012042837d91f8df7abdd7ab842352e52782fc3e04e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3749596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4703d0e7299f270a2cfa1da9630302ad9315abce65109675f0520be7590cb675`

```dockerfile
```

-	Layers:
	-	`sha256:0b2a7f3719b1d93ab99424da1a07c66c65b3b1b14aaa7226425aa858d8ce0748`  
		Last Modified: Fri, 02 Oct 2026 00:17:03 GMT  
		Size: 3.7 MB (3749596 bytes)  
		MIME: application/vnd.in-toto+json
