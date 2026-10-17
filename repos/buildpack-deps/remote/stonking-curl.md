## `buildpack-deps:stonking-curl`

```console
$ docker pull buildpack-deps@sha256:480508865be4e2affee0c0babd7ae699595c52c246382f0eb874bdd5b4f2c887
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
$ docker pull buildpack-deps@sha256:5d737995532a4aaa7b2cfab12baa856bcc547a0e3d2cb93bfade0a7af8098e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63221426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb837de623b3a6d3bf507ccc030123fee5f379fa2c2194e4c9ea3ef436be161`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9547.tar --tag 26.10
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:53:10.907747+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:53:10.907747+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9547.tar
# Sat, 17 Oct 2026 00:12:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c3f1e810a4fd5c79d0c67566f36945944b56e8d2ffc3c181c945ef3a297d07bd`  
		Last Modified: Tue, 13 Oct 2026 19:00:44 GMT  
		Size: 43.0 MB (43022437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea008b1b37badc5f9b48c508f749b20d6df3bda457af5b9eb0084f8928716c2`  
		Last Modified: Tue, 13 Oct 2026 19:00:47 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbef64975d2f348d265a3b2fccf32b92bf83ce596249098ea80ce5e6e14a944`  
		Last Modified: Sat, 17 Oct 2026 00:12:26 GMT  
		Size: 20.2 MB (20198597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4f6e1ac364f62e0ce36f81fb3dae1c32edfc0ffc122229434717f271dfa2ca88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d2d63a9be5aac7633d9edd08e9a11d69598f03cfc259f9f75e8307799e5df6`

```dockerfile
```

-	Layers:
	-	`sha256:74887cd4c690180b31a47ed7d31494508925e4901a5ba838124a9b6f73d165a7`  
		Last Modified: Sat, 17 Oct 2026 00:12:26 GMT  
		Size: 4.5 MB (4480664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d86f6a78492b755c445e44ee6b76d4b1c3428df1116f197dfa0edd0f4000476`  
		Last Modified: Sat, 17 Oct 2026 00:12:26 GMT  
		Size: 7.2 KB (7242 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:fff3fb86aba90ad792beae403439d5d8640440f2e443c358641c44be60003810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58497876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61ef364dc3ecb19ac46d9afce5984b85493750c7dc5f0a727471116267b89de6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:56:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9617.tar --tag 26.10
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:56:34.622170+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:56:34.622170+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9617.tar
# Sat, 17 Oct 2026 00:12:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5a183b82375b8969a4b65f11436e7bdf2b2ce33fe2f83a50838c7c3273d53262`  
		Last Modified: Tue, 13 Oct 2026 19:00:32 GMT  
		Size: 40.2 MB (40208851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a000e6158b817cf7eaa87f609aae442a0d7a3de65142827bc974a49940a4a54a`  
		Last Modified: Tue, 13 Oct 2026 19:00:35 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ee472d7a8f247d426b9ad5d2b7ef574cbee231beea93e2fa71e04ac7dd8967`  
		Last Modified: Sat, 17 Oct 2026 00:12:43 GMT  
		Size: 18.3 MB (18288636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bb83222ae3201b361f4eb0a0ce4e4be45d3ce76d08a8e671ed3f580232292988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4490425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45819335938bd966245af7747eececc6c40b2f7ab51e1fbd5a66c017d385d644`

```dockerfile
```

-	Layers:
	-	`sha256:a77398651988bc583d4636be55ba2e0bf35ef7ab6d6aee4aaca262762498459d`  
		Last Modified: Sat, 17 Oct 2026 00:12:43 GMT  
		Size: 4.5 MB (4483118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75e9145ab427460d5c17052e2d53fd5c302f7e8636028b5715c7cf17d54ab440`  
		Last Modified: Sat, 17 Oct 2026 00:12:43 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:66bdcf4e32eaf96ec36c8c7261f44cad36e35f5d13be5a25af3d40365b435b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61723271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b74525a101e684effb94f384f002246d2dcbabb286c641f34d15b126e66af6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9686.tar --tag 26.10
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:56:12.653364+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:56:12.653364+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9686.tar
# Sat, 17 Oct 2026 00:12:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b3bfacf2b021b3166ab04e973786a30532c1eaf2b87d0171130204ee8612b556`  
		Last Modified: Tue, 13 Oct 2026 19:00:56 GMT  
		Size: 42.2 MB (42162921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c5c50a7e316144d434f14b5ad7204725c855864569933801a32ee58d930719`  
		Last Modified: Tue, 13 Oct 2026 19:00:59 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ecc8d371fc2cc29f6459b00d61d5b1a9cf8caa3160f644328e2ac1f93b0255`  
		Last Modified: Sat, 17 Oct 2026 00:12:29 GMT  
		Size: 19.6 MB (19559945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a98235d69e4e589b230cd8757e70ee80ce9dccdd214c4681074abe5216238db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4489094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb7c4d5eab946982fef16a62f2867536b4c96d14158fa4ec5f509de70a27ef`

```dockerfile
```

-	Layers:
	-	`sha256:155e82338d01c8e007ce3f1109d2b0752c904a0c0a1d40ab553e30629da5b817`  
		Last Modified: Sat, 17 Oct 2026 00:12:29 GMT  
		Size: 4.5 MB (4481772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0897d1ce0316b1cb9e464da53062173ae2033d42543abee8185572b3b8d3f377`  
		Last Modified: Sat, 17 Oct 2026 00:12:28 GMT  
		Size: 7.3 KB (7322 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4d7613b1b24e016eeb92308cfc836ec32a493713257093d31488871aa1c3e415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70671492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedcbe05539cd0856cf6cfd414cb79b3524f73731f57bd336d8e0f73f128f641`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:57:08 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9485.tar --tag 26.10
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:57:09.466446+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:57:09.466446+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9485.tar
# Sat, 17 Oct 2026 00:15:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:106d57fb074d50a081260bb2be5dfffe4570c19d7368a8129f06ca08de7f8977`  
		Last Modified: Tue, 13 Oct 2026 19:01:18 GMT  
		Size: 47.8 MB (47752830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb28996f64d5b2fb49786fc06da708aae722a5fa773da81c25344d3d092960f`  
		Last Modified: Tue, 13 Oct 2026 19:01:21 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd405d44d4f04c8489052c8cf5d6557d467b6d19fd43e8384ac8556b8049ec5`  
		Last Modified: Sat, 17 Oct 2026 00:16:22 GMT  
		Size: 22.9 MB (22918252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b75dba3cf6b74f35b667f2e6de867e236601cb4e8196cebfc673d64a30f226f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4492812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33773f48e82014c5c0e17d0a7ca4428061ff8595df5d206f938b5ca289cd37b4`

```dockerfile
```

-	Layers:
	-	`sha256:17925a0665fe8cde1ef6ea6c9b4068e1ce1b64db5478ad2765b7f0d719b18dc3`  
		Last Modified: Sat, 17 Oct 2026 00:16:21 GMT  
		Size: 4.5 MB (4485537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:064c8281d50b87e53ebd09b301515f12a72e65d81e7c3046473991edb96c343b`  
		Last Modified: Sat, 17 Oct 2026 00:16:21 GMT  
		Size: 7.3 KB (7275 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4a9a24bbf399f247dbc2563709048a00655102edfee3c334ea541eb9eb24edac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64867300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928d7ad7804e577983497a87fd281094f45c7a6e661ba39279cf361f469ebdcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 13 Sep 2026 14:16:37 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.9500.tar --tag 26.10
# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-13T14:16:38.292175+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-13T14:16:38.292175+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.control_data.9500.tar
# Thu, 17 Sep 2026 23:29:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7dd3e0c72817f5ab532d976fc7df1ab5ece650bc98a0c0778590b82b83711a6b`  
		Last Modified: Sun, 13 Sep 2026 16:04:58 GMT  
		Size: 44.6 MB (44609354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02c2b941df5221986f59ef2c4e71bf7933f2f5858e92f91c6204abe48ad9948`  
		Last Modified: Sun, 13 Sep 2026 16:05:01 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775155a43e1182a33301a07af180d32b097ddba0aacac9d75de42ba5c4cc05eb`  
		Last Modified: Thu, 17 Sep 2026 23:29:43 GMT  
		Size: 20.3 MB (20257557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b854b10cd2844711e20e419db7a10f06e9ecd549980fd06ff399dfe734cd7455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4464434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c379ac4a85f116242d6d98addbca5b97aea7937b00ac3159418c4787b4cdc28`

```dockerfile
```

-	Layers:
	-	`sha256:91b3f623990c2ebfa0c56a515905485715b9b51fd2127384d8223a834bce2b4f`  
		Last Modified: Thu, 17 Sep 2026 23:29:43 GMT  
		Size: 4.5 MB (4457191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6255d50745cfdddda85a35d0bfc7bac1a82b2ef105326c3cfb6e627ff7a786`  
		Last Modified: Thu, 17 Sep 2026 23:29:43 GMT  
		Size: 7.2 KB (7243 bytes)  
		MIME: application/vnd.in-toto+json
