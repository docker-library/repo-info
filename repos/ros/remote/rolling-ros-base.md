## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:7d5ef6b88d37bfa99bdef6355cfb4596f8e0d236771477d42e3ec775f4fa2141
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:4a258503925b89534e71ec3f3ec41248b8339e73477749eaf6b529ff202c6494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343862106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2066f04ddd5b49d5113c56cbdf75c5cbb041135f224791c95574b9358f7482a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

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
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1c04dbfce0a0b8f4070eff4cf03184cd743f908d97ebd2b22fe4836fa2d7adaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29246335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aece3a96fb425c98b97ad9b37c9f9a0c12afe97f7d8692d5868d97d44b32487`

```dockerfile
```

-	Layers:
	-	`sha256:7d43640bd021c77712b514c5c7105be96a9ee0477161c4d3950150df229fb4ea`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 29.2 MB (29229172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefd53ff5d2d1d2194f6d1259a145e7f0e81dbbc8c029987b55bf5036f68c569`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

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

### `ros:rolling-ros-base` - unknown; unknown

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
