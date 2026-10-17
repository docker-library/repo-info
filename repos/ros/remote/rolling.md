## `ros:rolling`

```console
$ docker pull ros@sha256:b29c4b3b642ebc9a08f7afdb968f808430d78ed865ffb1f152a65fefe973340b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:113794af5cc887b6b6f26a26aa692b7b44f3069310fab15a1f6d017376953cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341226298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c33f4b0373eafdd68fae9b07dcc4e340f185fe51682d5495c201d17d837f1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:37:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:49 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:45 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:45 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0448779aec6a01069928357b8aaea6d84e0d48369c9cc4dfc479ec3031327d73`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 741.4 KB (741399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd444d570ca512a541ffd9b775929ce834bcf6f3acfa5d57369f20e9f420e066`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 9.8 MB (9783953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48547d372287ab730fd914256c3e6ae1cd75863e778b452da0033cce243e996a`  
		Last Modified: Sat, 17 Oct 2026 00:39:27 GMT  
		Size: 91.7 KB (91672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f594d9e4f9e2f6d9028a2edf38b7dc19e14cdbbb02c00334ceb9322fcf18a5d`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 137.1 MB (137149180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1a1c6ee0ab1584f5e4568f44a21ae63ce1466a6c3b2edc854f4cf03bed0122`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45c2c8daf4203f3c1c5085cf505011b8fd14066eb42d5fdc6c759fc61f9427b`  
		Last Modified: Sat, 17 Oct 2026 01:33:41 GMT  
		Size: 124.9 MB (124920336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18858865acfa8275c82d675b3a0ac46137df4c9dcd775dd52b9c0f61a2f7bf62`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 387.8 KB (387841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2285e037d6d7ef32d4d6477bdd7c30a0142c47084def0a980521263d4e30a6`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 130.9 KB (130898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d559d08c362c1a6ab5984831f2dc8cbcbabed953c8ca9be73a3474733e96c6f`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 25.9 MB (25871313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:61100f0443b1ee4201a09456caf8d390d552ce4c82c46e81cfb8a5c959905bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29248950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41b71c2caefbcb849b80ea888e57fdf9971a2ffac3d07040e35ad9a361f640d`

```dockerfile
```

-	Layers:
	-	`sha256:0e347800a0ec66361d7562bd88e5c1a98b28b968e93cd1b23cbe1baedf41f673`  
		Last Modified: Sat, 17 Oct 2026 01:33:39 GMT  
		Size: 29.2 MB (29231792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acaa64e979fc84c028fc67dee22fedc6c73ab4f634026e0bb702fda6226a2f3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:37 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d372c8f8bfa7701c214b0bf9a206322234ff9b077d4ca203d9c28f3130c37d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325736386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c2dc28542b8e4c5a6dec0709bb4ca7626c2a61bed7ed38a9a2d0ae4a986349`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:37:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:43 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:38:38 GMT
ENV ROS_DISTRO=rolling
# Sat, 17 Oct 2026 00:38:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:38:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:38:38 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b800a37dc221068ecc472c135b69cb447d87b8e5f9d1caf95889de3761f1b4bd`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 741.6 KB (741568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fc32b04c2716953e3c0b480a24dc10738f3b0003d640fe15fa31bd7d949d4e`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 9.6 MB (9611542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c31c0ab46af2af9f4353dae1b6dae8ca0d041915f7dce71d7856f17824722`  
		Last Modified: Sat, 17 Oct 2026 00:39:18 GMT  
		Size: 91.9 KB (91943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360d489d5ff8dc6963393708988e14a9b6b259bc6a8b6a2eb6edd3fdaaa418d`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 130.5 MB (130532744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548cf30bfcb1d447a37fd151eacad12dd355c2a49bf09fc0d6362d98812677b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb9e5636c39f04f1ce519146249ff1718f933c6b1662ffef3b7ce18916b4ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:37 GMT  
		Size: 118.3 MB (118334831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7b216ecddabef35d2be3ebf4a101c1d1ddc6938d5ce9aa9314d2ea681475c7`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 387.8 KB (387836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf1a07c4717937e3cf285abb924a623dd23c58ea7427a793e5eebcf157cc4c8`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 130.9 KB (130940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bbcbc484a7570cea247a35f375fa45e51c9687e575a7c86ce8f51b6ea0cb0a`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 24.8 MB (24796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:404f1eb04f756a51621b92c5ab02a39ecd3d6fb26bd5eca86086d372595f4c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a5410bbddfcf4711628015321ad486254c82e9adf79352fa4c2fe1e6214e9c`

```dockerfile
```

-	Layers:
	-	`sha256:0bfee56c2a3e749024aea119b06f1aa47f2f3df6b23a3c7881757c3ffdda8ace`  
		Last Modified: Sat, 17 Oct 2026 01:34:35 GMT  
		Size: 29.3 MB (29296412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6891b74e7cf76a454d21016d2f4d1fe7ebd1d0adbf44bdf84c9e78c58312b982`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json
