## `ros:latest`

```console
$ docker pull ros@sha256:360e0f0cd35d2f0230854878c6a329ceab99c9f559552196be93655cdb3004db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:16d9b64d0bee68954a46be5c0d039802fe58da834758d8a9de6e4e03216d9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec94f16b7711f3e2d9f3b0bc641a3515190c0377ce50ef249fd81f19be415d1`
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
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:795a5d138a63d1658461ee9114f65e139042a52dcd4b38a53b7b08fec2807441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29194556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f15a996bf91fc33ef4f85f34fa56e92dfcba9e0321a5ffa6ef918d04d11156e`

```dockerfile
```

-	Layers:
	-	`sha256:963eb5c5b35d21b5a6646064d2cc34d72e7a98ce214d0ae14e681e9430bfeb44`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 29.2 MB (29177101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c972f030b4664d8540ca707c7fd3459a4b11dddf9c4b98de5e9bc14de30a1e`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43ed2675c5af8b8aaf7e4363971dfbcd43dc9bc0300715c4b968a91c3732adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325590700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfb8a9212430def1e09d4ef15ab626593ee128eaa8ecba20d634a84d9846819`
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
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73a450139f76bb892949db194e314a610187582a3dfd39502dfbefce5dda4c`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 118.3 MB (118334753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d1c23db5ce88910697d4282e1bc7f954265a6a7bdb1ac77a44ce4bf373b78a`  
		Last Modified: Sat, 17 Oct 2026 01:34:30 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32a777c66ad1b2745f21837f8217c348bd65a024545f3a6cd799a99d2c9fbb4`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 130.9 KB (130881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ee615e598de57fbe8abdb38ffbe2461efcb5416b979dd72d2fd22fa18b265`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 24.7 MB (24743511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:0b4cf8009203603c922a2482ed757ce1504a204c6f9e733a5f072aeb22e19a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f7275c1706861b8bca592eae3cacb11efa4bd74c1866e29d333a68aa75930`

```dockerfile
```

-	Layers:
	-	`sha256:253f5d2681954315449f4041c9e7f84369cf8d768e29498d9c3d9aa78a9fb482`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 29.2 MB (29240259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a5321ad4e82a209ceda2c35b5d0ef7cf5abf26e5943c4b1af1180b5a7648a55`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json
