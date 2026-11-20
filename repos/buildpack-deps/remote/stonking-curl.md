## `buildpack-deps:stonking-curl`

```console
$ docker pull buildpack-deps@sha256:deb5b745db52ff75bd754fd4947e3fb117ee98df6ccaea6063e01d1817334b3a
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
$ docker pull buildpack-deps@sha256:a33f91d6a64f56201e4e13a1a37f8a3d3a1b5ca60a51816809c4f24e2f0f41e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63265733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2415604598d738d77aa06672084805230a24f617a80cbeba85fd8cd448ea69c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 16:23:25 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.9001.tar --tag 26.10
# Tue, 17 Nov 2026 16:23:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 17 Nov 2026 16:23:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 17 Nov 2026 16:23:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 16:23:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-17T16:23:26.304308+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 16:23:26 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-17T16:23:26.304308+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 16:23:26 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.control_data.9001.tar
# Fri, 20 Nov 2026 03:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2e3f211e01a0c76a2de6e9e41895da0e65ab9ffc6f6e140454afdcea1a2fa76d`  
		Last Modified: Tue, 17 Nov 2026 22:50:22 GMT  
		Size: 43.0 MB (43037542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3195e82344696ba47fc19f97209e113bcfef0bdd344245805c4710e3559b60`  
		Last Modified: Tue, 17 Nov 2026 22:50:25 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9072feed2b0b0065be5fdccbab56162f34dc2b51b0cea26e02f1565b060b87fa`  
		Last Modified: Fri, 20 Nov 2026 03:10:12 GMT  
		Size: 20.2 MB (20227798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2cb11704bd6a6f421d33c32635598de4e15710a97ca2dd099c78f6416f777920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4488034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492c5ac916a10bdcf4b81e7faaeb83d24f513b82569ce30333af1c64400c6c9a`

```dockerfile
```

-	Layers:
	-	`sha256:daa643fa1595762897859d6f2e092fd555482cd56a19fffedabac85c0606f4fc`  
		Last Modified: Fri, 20 Nov 2026 03:10:12 GMT  
		Size: 4.5 MB (4480791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2bc61ced5754d2c1580c889d1980e137bb947c7f71c9b06bac79de3fca83835`  
		Last Modified: Fri, 20 Nov 2026 03:10:12 GMT  
		Size: 7.2 KB (7243 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:251f6515c6d6c86bf2254d2370140076e0c3b095fd78edfce1e427b96239fc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58552782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b4a865b67466c287780715ec148dbfdfc0eb93004e93a570edafed7ab8c9a9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 14:23:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.9000.tar --tag 26.10
# Tue, 17 Nov 2026 14:23:33 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 17 Nov 2026 14:23:33 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 17 Nov 2026 14:23:33 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 14:23:33 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-17T14:23:33.664894+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 14:23:33 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-17T14:23:33.664894+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 14:23:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.control_data.9000.tar
# Fri, 20 Nov 2026 03:11:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f35634e58bb436657121e0e5d125e76d5271c1e1f140050c40ec49c94a738976`  
		Last Modified: Tue, 17 Nov 2026 22:50:12 GMT  
		Size: 40.2 MB (40236451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5c282bc8885c0a5073dc5ac88863988025c5a2778e36480eb9b9f153f057d0`  
		Last Modified: Tue, 17 Nov 2026 22:50:15 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252e881badbe905856064a7f1782e8301ad9ee3e4a8ccdbb6d3f0608d2847026`  
		Last Modified: Fri, 20 Nov 2026 03:11:14 GMT  
		Size: 18.3 MB (18315941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:41dd897623b797c0f49ea786dac101a665c127e244e5911d7e6d88e6db3998b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4490552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de77c9b84e767e0b5e5f2e37c891f090e26dda7ee1adeda8e77abef485e468f`

```dockerfile
```

-	Layers:
	-	`sha256:681a4bc4b6459427975a09ab35b8f598718ce7b4bb70d5c9c2c713a193b3979c`  
		Last Modified: Fri, 20 Nov 2026 03:11:14 GMT  
		Size: 4.5 MB (4483245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:874e3a8ccfc26ca1859932d27489da3cb60bc15e9db98dc93251cd1851f67c48`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e15b4616d89928768c5cf38906e5195f1b37beaf56201f16e702d5cac0d9b4dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61784534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c449e3bf40b00c2b20c112616d357d726c71c5311083756362ff55ed94d76b1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 14:23:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.9026.tar --tag 26.10
# Tue, 17 Nov 2026 14:23:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 17 Nov 2026 14:23:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 17 Nov 2026 14:23:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 14:23:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-17T14:23:00.468353+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 14:23:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-17T14:23:00.468353+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 14:23:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.control_data.9026.tar
# Fri, 20 Nov 2026 03:10:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2622a46f922c6da51c25fd533b8ab09f0a119cf621d0637fa4ad44730691b1d9`  
		Last Modified: Tue, 17 Nov 2026 22:50:33 GMT  
		Size: 42.2 MB (42197437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76823af551d87b76b51268044bd37f97f791165a582dd59b2d1cf15817169d0`  
		Last Modified: Tue, 17 Nov 2026 22:50:36 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f020e2a421a4c967b671cccbf7b650502535a5f15910d488708e398482562a7`  
		Last Modified: Fri, 20 Nov 2026 03:10:15 GMT  
		Size: 19.6 MB (19586709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d5d384a542daecd136d2b562a57d632c406b6efd0167105df035d8d5a3004523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4489221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4431a7d9ece7ba949ea61a2f2aaf0a71ae385854e21faa69d6020a82f81ad0`

```dockerfile
```

-	Layers:
	-	`sha256:201ad6ac3b3021a915daa408abe3f92b29ed76e7bd867ef4b75f7697af610c0f`  
		Last Modified: Fri, 20 Nov 2026 03:10:15 GMT  
		Size: 4.5 MB (4481899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7326126252f06d328ff0ac397ee2f7346d6047c95ec23fd697d767cd9a3308b7`  
		Last Modified: Fri, 20 Nov 2026 03:10:14 GMT  
		Size: 7.3 KB (7322 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b323e5d49bec0422a7391b5a3a962d08a294de966017e1b264456eb9d9b73ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70721661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844f39e58d4ce879ff1f2ceb213810284335cdb61ce1bc0f5960f39afecc0ed4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 14:25:35 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.8882.tar --tag 26.10
# Tue, 17 Nov 2026 14:25:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 17 Nov 2026 14:25:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 17 Nov 2026 14:25:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 14:25:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-17T14:25:36.190272+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 14:25:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-17T14:25:36.190272+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 14:25:36 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.control_data.8882.tar
# Fri, 20 Nov 2026 03:21:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7d5032363411a59515336480f4155a94f1fb3a53736a69b2a13e4bd780dd4478`  
		Last Modified: Tue, 17 Nov 2026 22:50:54 GMT  
		Size: 47.8 MB (47773748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff1af29d9c6572f56660eed007dc7078633b2cdd9f8b7d9a16eb07e2d2d6536`  
		Last Modified: Tue, 17 Nov 2026 22:50:57 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84dd32fafd48e68f81b2138b68dcd3b6d33ff8a263b8982072747bb2d341768`  
		Last Modified: Fri, 20 Nov 2026 03:22:10 GMT  
		Size: 22.9 MB (22947522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:37743d9490bd5bca47c289b1a04860f644c5b783a63b28d1cd982186a9161916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4492939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f290d3174e7bf79d3693b465a35b6539193b34274e5d2c27857bc36271dd804`

```dockerfile
```

-	Layers:
	-	`sha256:17fc8028a6ec25337050113d53e5a5443130e0f5ea494e8b299a02f42513b115`  
		Last Modified: Fri, 20 Nov 2026 03:22:10 GMT  
		Size: 4.5 MB (4485664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a9443d44a86e53ccc13c86cf41d491a19e4722e7d4665ab5edae8a384544433`  
		Last Modified: Fri, 20 Nov 2026 03:22:09 GMT  
		Size: 7.3 KB (7275 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2c8dc786ad77a9ea407eb245d725b57312e73f6d856aca3a69096038eb6d8dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62861124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460150270e0d43aafd737b4d957602398b656204827de510604fe15a286b576b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 14:17:51 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.8911.tar --tag 26.10
# Tue, 17 Nov 2026 14:17:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 17 Nov 2026 14:17:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 17 Nov 2026 14:17:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 14:17:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-17T14:17:51.574808+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 14:17:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-17T14:17:51.574808+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 17 Nov 2026 14:17:51 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-598fe37b5317ad29c45f1344d9f9b4c2/images/.temp_layer.control_data.8911.tar
# Fri, 20 Nov 2026 03:08:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:411e729ece5595bf52a8bbaf07b0aa3623674c27136b8682dce048a23a2a808b`  
		Last Modified: Tue, 17 Nov 2026 22:51:04 GMT  
		Size: 42.6 MB (42576356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7a75d168da824a65baa34e266e8f9bbd861831f41459b19937700bd135e076`  
		Last Modified: Tue, 17 Nov 2026 22:51:07 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95752724520f1e2f6467cdb9c932d84396761faa79120dda295ed3b7d6e3bf68`  
		Last Modified: Fri, 20 Nov 2026 03:09:12 GMT  
		Size: 20.3 MB (20284381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d594431c66a04ad0ad5f8506f824e7506c5a22b61cb9fe1cbf8ea4053999d2cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4483703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86898250db024028cb34017f7fe69f5ced726d21eeeb136a6dd190854850432a`

```dockerfile
```

-	Layers:
	-	`sha256:3a71ae216dd90978526a45e2ad6d33d2a4809c5c291c8ea1ccc557d958b415fa`  
		Last Modified: Fri, 20 Nov 2026 03:09:11 GMT  
		Size: 4.5 MB (4476460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53807fc4403c83c0bd0f559aa41f8777b94141c5bc7a0403337cd329fae0ef8a`  
		Last Modified: Fri, 20 Nov 2026 03:09:11 GMT  
		Size: 7.2 KB (7243 bytes)  
		MIME: application/vnd.in-toto+json
