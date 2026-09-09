## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:16f4131c5b9b0d483e9fcdfad86a6cf1666039285f04fe7af91e1b0f81362d73
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:5b35172969d68d31850bb01a8d7e823c1685a089e2a74582e84a60b5d5643af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1537801596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c494d0dda5c5c86f06dcd62288304efa36a53c0f7b565c32c190fac937985291`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:38:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:21 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:38:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:39:20 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:39:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:39:20 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:31:00 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:22:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce8ee0b8a82476b3bd26c504678b9995756f1739bcb449ddc444484c15d4082`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 741.5 KB (741486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b6ffc2cd101411c685959009ad8ef11efd7ea616f25bd74de6f22a331330f3`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 9.8 MB (9783835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6484ff65301b9b0c380751ec140b24523ecf210380eccbeb1d51ae67ab0fa`  
		Last Modified: Wed, 09 Sep 2026 02:39:59 GMT  
		Size: 91.7 KB (91705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8f4f667de9c5bbae560cd7b5b218c817f7c9225ad628dc2684e6770d93631`  
		Last Modified: Wed, 09 Sep 2026 02:40:03 GMT  
		Size: 143.4 MB (143405349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ead40e1fddf2d24fd498727f6ddc714628beb600d79be749da72dab0b6ce7`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b572dbefb81bb5446b6f029252199f2fea36a08077acac526a1ec873256f204e`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 127.3 MB (127335634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39661be686a916677ecc0ee87fd7e641e1fc8caddbf4469b7d92893281701fbf`  
		Last Modified: Wed, 09 Sep 2026 03:32:10 GMT  
		Size: 401.2 KB (401164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835e900bb5c73859cdf26c71e8e0e89816f49505a7b8578fc7d24804c05b07fd`  
		Last Modified: Wed, 09 Sep 2026 03:32:11 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90adab432563faaa786940a68c9ddcbf963aef904b6ced77356a93ecbceab76f`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 25.7 MB (25716330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46d109b838e194bd3a8ef68943889eee5c19ee0c0beb304514ad067fc85641c`  
		Last Modified: Wed, 09 Sep 2026 04:27:20 GMT  
		Size: 1.2 GB (1188591983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:1af71b0c1338250a46b0a7bfb20e9824d53e0fad685bf22f0293b83f5dc5efcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64352683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81280704f76f2a35647809822ece611e6e39b73fbbb3f31e914b8ad7b5db50f2`

```dockerfile
```

-	Layers:
	-	`sha256:efac6844829199133fd6dbe7f5a91bc47f4f488d9ae3bc3478db45b87ef1ce66`  
		Last Modified: Wed, 09 Sep 2026 04:27:02 GMT  
		Size: 64.3 MB (64342990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f171f74115650a4b0d1e16eefe3f4479ccbabf2ad51c74732aa0a4b57d0eeed`  
		Last Modified: Wed, 09 Sep 2026 04:26:58 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a024655d21ffdd0e0c3118a6423abe7e7c27dd59d0bf348bff906e12429cf9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1480890790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e12c095b94e45f4c76b705793492939a213318d987012c56e4d5867d95610f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:32:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:00 GMT
ENV ROS_DISTRO=lyrical
# Wed, 09 Sep 2026 02:34:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:34:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:00 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8546ff29b635872e2d6955c28f372cfdca29b876d1e225f74f1e2a10228c0b53`  
		Last Modified: Wed, 09 Sep 2026 02:34:39 GMT  
		Size: 741.7 KB (741681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af7c5aee8fc6cd7ec51f810635cfa1c64006472f505cdd6bcff22d1880b6959`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 9.6 MB (9607126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4003888ceb9694bf06638cdb28232b53b05cf924cc2d7b897e837ec18ab68721`  
		Last Modified: Wed, 09 Sep 2026 02:34:40 GMT  
		Size: 91.9 KB (91939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfb752acfed6849404275e7e2406f6d5db3cbcc5615f2166937de94a1e852e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:43 GMT  
		Size: 136.6 MB (136618607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aba2ee933ffa5e234fd67499c5da0f3409579dc81c9e3a8f11378d63458a44`  
		Last Modified: Wed, 09 Sep 2026 02:34:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ca5378dea79b103d12b392f8d0d00b09f3f3747722674909a8cfabf592a0ce`  
		Last Modified: Wed, 09 Sep 2026 03:43:26 GMT  
		Size: 120.7 MB (120688910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40428a66d0a5bdaff393834c384de5024dbb0ee793525de51b948990d677bb3b`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 401.2 KB (401160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695df8541c11b0d1ef38da66f41c9194fb207d907a25c048468efcd089afd441`  
		Last Modified: Wed, 09 Sep 2026 03:43:23 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e45ee833d858d2cce444a0964d193a862df2a746ea66713fde50c06094c31d7`  
		Last Modified: Wed, 09 Sep 2026 03:43:24 GMT  
		Size: 24.7 MB (24666632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8cdb0c2d41d2c52783e9fdbea590e10f07477fba238a6b1ce477cd0ada2ca9`  
		Last Modified: Wed, 09 Sep 2026 04:25:33 GMT  
		Size: 1.1 GB (1147208457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:9d1420aee5cccff8ae47326696ec81b4bff8bf073eece8c53c873959b746f537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64266980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c36618634bbe260d29abf424b8f574018a611ab741d2591a5ebcd5be227d11`

```dockerfile
```

-	Layers:
	-	`sha256:8ffeb2915181a90c9ada7856c47568f57e64494653c0b4a749ae1d176cf312bb`  
		Last Modified: Wed, 09 Sep 2026 04:25:14 GMT  
		Size: 64.3 MB (64257208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e9089ad9dd16b6405b09203744ff2493f076c20280d47309ade40bcc29f11c3`  
		Last Modified: Wed, 09 Sep 2026 04:25:11 GMT  
		Size: 9.8 KB (9772 bytes)  
		MIME: application/vnd.in-toto+json
