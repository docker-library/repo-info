## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:b7f48194d4d8b763a478a621cdc81c27be222ba2206ca3ca6bc42b49685f3d9e
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
$ docker pull ubuntu@sha256:c6c0067e0e45b7a826eaebb193cef957be28045380963a9b1eeb2a5d3c70a1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41562646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaf0b273f92a76e458efc72cef4893c2c54ae2f1451d07112f1ce79f3ac0487`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:6d0c51c7673ae4683c46f6181c9d1eaf20dd72b8d816615e6cca4479d97bc1a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3705074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2241c079dc9b4a3e7928f7e752ef67c1506bd6b44c7b77e446d78b7840294f85`

```dockerfile
```

-	Layers:
	-	`sha256:bce5ee84b2b4612492d040c3cf469f6c6745ad3853780e9fbcc2ea3c896fa740`  
		Last Modified: Thu, 02 Jul 2026 01:08:58 GMT  
		Size: 3.7 MB (3705074 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:ecdc0c4426bb092ef295bf1257ef62b6d6ca18c5a0abba18cbc64688478e5fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38706012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7814be6bc1c6828624f48aa1d8454289bf3f58480b9e358cc5d4def4faf2bb0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9093.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:34.497647+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:34.497647+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9093.tar
```

-	Layers:
	-	`sha256:9af107dfbc6bb56b3be0516eaaee7da72df4711bbf62dc9facc6d46d52451e25`  
		Last Modified: Sat, 27 Jun 2026 11:15:04 GMT  
		Size: 38.7 MB (38705623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20fb499c3af70d1b780623a8b68fe372295b0d2e12bbfc55d4897ff4816063d`  
		Last Modified: Sat, 27 Jun 2026 11:15:07 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:0a84d9096a95e4b19ee4d96128929485862466315a9453aa09b3dfeee563e5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3706453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbbe86176fa23e0e6d17bcea1b5fb7e41712cf27a71898ab697dfa14d3c22981`

```dockerfile
```

-	Layers:
	-	`sha256:de15d5b410b054d551697c1129228aa117d15cf46d74c7b15f96ea1a5727623f`  
		Last Modified: Thu, 02 Jul 2026 01:08:46 GMT  
		Size: 3.7 MB (3706453 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2e05d3b43282818e548d97f7a7c4dd7cab14760603972353e5cecdac0839146b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40712152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3bcc37a9d41b510f9bdb8ec8e66884578aa44b9703f77cef905db46c6557e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:d6847c49a58b885298ccc459479945db01aeda97cf04d979590aef7386370f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3705267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5309c2261e79bcb5308c5124d79bd68b2a39328a7adbff0864d88694425238`

```dockerfile
```

-	Layers:
	-	`sha256:8cf892a939ddfa4e8d392ad4db1273d0a3675c3ecb25c94e1c4a4ebbd6c4afda`  
		Last Modified: Thu, 02 Jul 2026 01:08:48 GMT  
		Size: 3.7 MB (3705267 bytes)  
		MIME: application/vnd.in-toto+json

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:0ed5a2b1959db6e9298a08ec51bd437b544b3fe4995c1d6e452b7eb0224a12b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46591998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae9517f185efb5bb1054408f17f74c1b6a38085eb8a89864779a68a12db1bd8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:26 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8987.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:26.997781+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:27 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:26.997781+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8987.tar
```

-	Layers:
	-	`sha256:d64dd5d18b74c82a784c25257be2d6c73e40acee71cf48b70af4f97c3c1bc645`  
		Last Modified: Sat, 27 Jun 2026 11:14:54 GMT  
		Size: 46.6 MB (46591605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8733c8815773041f128f40bd66df0f61e8653f9e7104f3158eeb1032069ffda`  
		Last Modified: Sat, 27 Jun 2026 11:14:56 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:413f6649bbf0b0a3cbaebc1fa013ad7a60ab75ea2363723997b085dedd3644d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3708601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beae594fa344027aebd66a0e737636d0061ce2930a2de6a4d5c997ae818308d8`

```dockerfile
```

-	Layers:
	-	`sha256:9df5728478d5666d34666a4d1d01ec81c6b11c067f2d16e45a3a6723a5397bdf`  
		Last Modified: Thu, 02 Jul 2026 01:07:51 GMT  
		Size: 3.7 MB (3708601 bytes)  
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
$ docker pull ubuntu@sha256:007fde20cd1458d3ad0aadd1e88a2273a53e9d1156431021ddebd3eef3871056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40960420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22e0e116c9fd3a50e2780850477a6bc33fa59f5e436f59615ce03722ef7bc52`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9007.tar --tag 26.04
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:18:32.566053+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:18:32.566053+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:18:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9007.tar
```

-	Layers:
	-	`sha256:e8dd6f44cfb110d0553eb1e852db0df004443dd0af10a8b5a103696c1b0e2042`  
		Last Modified: Sat, 27 Jun 2026 11:15:25 GMT  
		Size: 41.0 MB (40960033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ef8a2a65bc8e54418c208b1a7653f8530e6ed10b2ffb78ddd9b6009ab5b576`  
		Last Modified: Sat, 27 Jun 2026 11:15:28 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ubuntu:rolling` - unknown; unknown

```console
$ docker pull ubuntu@sha256:45e6f39e46a910aa621477191a2373f7bcd69a5b93474db0a13cfee0a11254f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3707141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076763d1ac2869f73d2d7c070bef5d0249551b483735814f0b339aeaa63c55c6`

```dockerfile
```

-	Layers:
	-	`sha256:af5cd2f7a1c3064bf4906d103ff750779cca8b96782500ff1e24cf576ec14b50`  
		Last Modified: Thu, 02 Jul 2026 01:07:25 GMT  
		Size: 3.7 MB (3707141 bytes)  
		MIME: application/vnd.in-toto+json
