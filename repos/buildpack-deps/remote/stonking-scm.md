## `buildpack-deps:stonking-scm`

```console
$ docker pull buildpack-deps@sha256:a859303554f0eb305ebdd39568c0023f9a29bf7da990eabaa6c6f3410d95a961
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

### `buildpack-deps:stonking-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9672d60938b217be6b7dbf96b32b819e098c892ef20c5092f0acae8de27091c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120329313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57a610639c6e2ce6ec7d31d22a0f1a9a9e935aba61fc2d1ad497fc1e580b1fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:37:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.9490.tar --tag 26.10
# Tue, 01 Sep 2026 20:37:14 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:14 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:14 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:14 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:14.403481+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:14 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:14.403481+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.control_data.9490.tar
# Wed, 09 Sep 2026 02:12:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:16:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6a336d9406353f587cb44b3c036ff2fd9c1d3da17e45d63829bee32c41e2b4ee`  
		Last Modified: Wed, 02 Sep 2026 03:07:03 GMT  
		Size: 45.1 MB (45130716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb4bb9f2bbc35246377bb16368fb665d68243f5748f85b8bf1544590cb6df4f`  
		Last Modified: Wed, 02 Sep 2026 03:07:06 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbf7068d27d6b5068ddf414cccea26d0d0834a5b40faf779262607456440649`  
		Last Modified: Wed, 09 Sep 2026 02:13:01 GMT  
		Size: 19.8 MB (19809122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64105c5b4a996732ce5cd93eb5cc4ef967d28a10db661aa2a7911b235558cef1`  
		Last Modified: Wed, 09 Sep 2026 03:16:56 GMT  
		Size: 55.4 MB (55389087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a7232420bf170af396dc9dac9c2ab7b399baea586a1f9ba9ba271f29be9353be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7649499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9cd69ba7e73e086b1ec932f5e63e0ee81f8ce99ee69a6d7771d2a75bfe525c`

```dockerfile
```

-	Layers:
	-	`sha256:88de553b69121be589df16d37af4b8b920487eb86ae26395cc1a9a9243448e0f`  
		Last Modified: Wed, 09 Sep 2026 03:16:54 GMT  
		Size: 7.6 MB (7641910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8da51775f281467ed819153a75b94d0ee109967bd8f313719519e394254cdf`  
		Last Modified: Wed, 09 Sep 2026 03:16:54 GMT  
		Size: 7.6 KB (7589 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:0b774234ccbaebfdd605646cc045eb6de4be3980716c3167a9b74f5b64c90526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117512626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3945bbe2018ca39ba25b1884d87f44739467998dec4461278939519ca3f1ae05`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:41:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.9488.tar --tag 26.10
# Tue, 01 Sep 2026 20:41:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:41:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:41:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:41:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:41:12.866790+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:41:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:41:12.866790+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:41:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.control_data.9488.tar
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:16:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:11c7e7b6b69442ad5afd04b4959ec3ec2dc3a20b0050ad53eaea63fdf09bead3`  
		Last Modified: Wed, 02 Sep 2026 03:06:53 GMT  
		Size: 47.2 MB (47176513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4438219eb84885c876f6b22ff7dedf7f843966103838d8324df40f203a8ca9`  
		Last Modified: Wed, 02 Sep 2026 03:06:56 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd776fa338d4f819b3d50fb81907ffe273faae257eb1ed216fac749f5bee1e94`  
		Last Modified: Wed, 09 Sep 2026 02:12:45 GMT  
		Size: 17.9 MB (17907655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541454eb3eaf51158f0f5e15fac059a491a482ad9e63aeb8c50ccb3247b3365c`  
		Last Modified: Wed, 09 Sep 2026 03:16:25 GMT  
		Size: 52.4 MB (52428064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:425be4c844d51640967353d558f5172e9131fd646e3bba025b2887669a41c3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7649453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd1ca06a957e665a00009b2f5be468efcdf59851030297f670da11294685245`

```dockerfile
```

-	Layers:
	-	`sha256:3d940e907d555f3464761fae70cc513384cad221da04045fd48c741d35bb1a3f`  
		Last Modified: Wed, 09 Sep 2026 03:16:24 GMT  
		Size: 7.6 MB (7641800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23708ca265ea0419d2996285fc7276f54ff1aa36a02b04ea7b658a76351d7ee8`  
		Last Modified: Wed, 09 Sep 2026 03:16:23 GMT  
		Size: 7.7 KB (7653 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6eabd587c24e0fa2c3a98fc04e3e19a8b791c953969564408033134ad42b51be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119032266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55cf968f44ad4b39064b1dc3248438fa3175ac0a1b435fb4060db0c3dbef812`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:38:51 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.9482.tar --tag 26.10
# Tue, 01 Sep 2026 20:38:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:38:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:38:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:38:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:38:52.103410+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:38:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:38:52.103410+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:38:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.control_data.9482.tar
# Wed, 09 Sep 2026 02:12:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:29:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3d3bcda51468aa60db6a9a28a1c586eb336373d58244ad4984fd35cb6d244728`  
		Last Modified: Wed, 02 Sep 2026 03:07:13 GMT  
		Size: 50.7 MB (50684572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e653175c92406a96d390e93351e2a22dd25b6c96e9b59f88d79ecaec4d72d2c`  
		Last Modified: Wed, 02 Sep 2026 03:07:16 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4228ef980e87c650827dabf6d7e463f3211b9224d6e6222b0f15d2c3013a7e`  
		Last Modified: Wed, 09 Sep 2026 02:12:42 GMT  
		Size: 19.2 MB (19231728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee28526aa7421b4a3fdb100cc8aa10f4091ac1211200dd671d2b67189b1c0cc`  
		Last Modified: Wed, 09 Sep 2026 03:29:41 GMT  
		Size: 49.1 MB (49115572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7891ccba4844dd9529ba3632ea70d341fd3ccdfc152cdd207671ceae94f44a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7655970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640978e24aee8a1b2b8b8a7e365b6ce4f966e833a5e0f3e05f06f983e21f5eeb`

```dockerfile
```

-	Layers:
	-	`sha256:999a558417d7d9e33862b8b85fe4c136e63a9d11c94613ced354e2effa17c3d1`  
		Last Modified: Wed, 09 Sep 2026 03:29:40 GMT  
		Size: 7.6 MB (7648301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1657bb916100f3d899d84d7217c54c4802c6e370349420ac51ed606c58b58113`  
		Last Modified: Wed, 09 Sep 2026 03:29:40 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5999eff4a9d13723209388e0b42e99de47d43e9fab5b8b180ddd814ca72a2adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135899285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514673bb75b2a31da0a1faf149ae75040860237c99475a675fa985cfc03c02c3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:41:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.9394.tar --tag 26.10
# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:41:05.549052+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:41:05.549052+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.control_data.9394.tar
# Wed, 09 Sep 2026 08:44:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 11:59:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5d571b36b765d5e25efee79a7547930722f9019afbbcdc355828615932d51a28`  
		Last Modified: Wed, 02 Sep 2026 03:07:34 GMT  
		Size: 57.6 MB (57555112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0860144ae4b6aadc103dd274170a657c7f62e296d00f3b13de17884a67b283`  
		Last Modified: Wed, 02 Sep 2026 03:07:36 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5df6647542f8c6b98c72781b3df20ad587a6544807982b3d8b78a8e9efc88a2`  
		Last Modified: Wed, 09 Sep 2026 08:45:15 GMT  
		Size: 22.6 MB (22610781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27cba84bae5fd04f03fa690ddb3f5045d5ae3ddbdc319f2a6b0dd51d7d08b95`  
		Last Modified: Wed, 09 Sep 2026 12:00:03 GMT  
		Size: 55.7 MB (55733001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5ed6142b87cf5ed47ecbee00222a06bb50f4c615eddded5c16fc227a2fec035e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7656609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0737ad8d6aa249cd6bb53f18bae5540483953d0d931a89d17182c221a65cf4fd`

```dockerfile
```

-	Layers:
	-	`sha256:e638ad040cd0b2f7500195f1e1e3c1201f3be4c06121d174b3caa80d02c858cf`  
		Last Modified: Wed, 09 Sep 2026 12:00:02 GMT  
		Size: 7.6 MB (7648988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e449b0e1a4146e8bacabcef5dc697eb0ef0b7b54567eb2929714d46a77eda7ac`  
		Last Modified: Wed, 09 Sep 2026 12:00:01 GMT  
		Size: 7.6 KB (7621 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:7709bc66a1e5bb53b38a623c6ac0cfe791cb4226dfa09563c66a9b23b459e9ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111367009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddee617bb1baadcb3b960efe79a81fab658341a5c96d5a308cc5e71568181f29`
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
# Fri, 17 Jul 2026 20:11:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:9cd2b8a57d9f629aa9f0172351c49be6490153ee22a455e4880ac0cbd9b62a5a`  
		Last Modified: Fri, 17 Jul 2026 20:12:15 GMT  
		Size: 50.6 MB (50617469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7b14a1a6d618246e61c79a6fe203792e492b2f859b6244afb551a830d1a3816f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7288375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2807af46a155cf3e649e7e3f7c6a5347bf5d0573f91356b7143e8a7110693c`

```dockerfile
```

-	Layers:
	-	`sha256:c6ed1965f30c93744b24cee627a8e0df9b37af6296c20ba81a29e2b8e3d7fa80`  
		Last Modified: Fri, 17 Jul 2026 20:12:13 GMT  
		Size: 7.3 MB (7280786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5a87a918d5565fe776fc02d05e838e3357dce6ca01752f3e2d595ff613c662`  
		Last Modified: Fri, 17 Jul 2026 20:12:12 GMT  
		Size: 7.6 KB (7589 bytes)  
		MIME: application/vnd.in-toto+json
