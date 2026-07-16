## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:62254158de5679185590e37df85b4a4792c0044dabc13e553c982f6040ee039c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:027d3e47642e7607141ec7ebd04a8040a8ae8d22a45e3dfcd6213257e1c46677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528317973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208c589739d80b77a06c47b6b81d63332119a4f6463f73ee0d43ad4fd6ab3e72`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:19:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:19:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:19:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:19:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:15:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cf76b7ff8aaef0513feabd52dd289201e123cc53d4339a447b81f786488c2f`  
		Last Modified: Thu, 16 Jul 2026 01:20:46 GMT  
		Size: 124.9 MB (124863741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e81414aecf88ca4856dd2b7dd480b9e1360130b91dcfa8b15936a192b3c4b`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 376.0 KB (376000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24452bcceffb7d357947847cb9735fc1f1ce01a9fd169fdee379df6d324d10f7`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 130.9 KB (130854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c41d1b9b04734ec716f1d9e2f826bd2c97494e32694eb74cf236ad0939ba2`  
		Last Modified: Thu, 16 Jul 2026 01:20:44 GMT  
		Size: 25.7 MB (25712406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d6e7e7bd7076ca9b61a8549c8df087cd411e3343dfab22e4e4075d80863e9f`  
		Last Modified: Thu, 16 Jul 2026 02:20:33 GMT  
		Size: 1.2 GB (1188506094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:a3534e9088ec33d7b50f901e535002ef8a40e52896f10e772c5d0b550ccc7740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ddacd06c2274de5bd9d5c379338bcebdbc3a9ff275b588d7813b4e8b3a06dd`

```dockerfile
```

-	Layers:
	-	`sha256:57b6026c65faf4778cdd9f3627be827d95313e32a3a7bcaa370d868ac46c6ac3`  
		Last Modified: Thu, 16 Jul 2026 02:20:09 GMT  
		Size: 64.3 MB (64335158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41e6a1b44f9f09c8cc09f9d9df6d29807e4106378f3e6d19a3c399a5707e3ebd`  
		Last Modified: Thu, 16 Jul 2026 02:20:07 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:542eb29adfd9ef6fd5a29da64383616f67c54d15d6c3889b62814eb93e615da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471600289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb3aa31e72f8373c94ca4f4b745e3d46c5b1cd426355dece57bede6d6803f48`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

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
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:15:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee060338a776bb1b42a935af177e6d2d3d59c58157ba9ddae0a069d9f8a200`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 118.3 MB (118275883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea495bfad46cf667a56f31891f1f2eab7c81710f5be7ac6c5b11d22be7f8ec1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 376.0 KB (376018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc8f18ff36afd6a96884df1811d7b657ec9f2f1e9c2c9ef8af6f79123bb8bf1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 130.8 KB (130835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99dcf7458e3d92c59079fdaaea6e075597547c389de804e17c1ce9801cb69f4d`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 24.7 MB (24661204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75065d8da939ac966441d89a1a213296d89442d90b6ed11d8fa6b41e5f2da0c5`  
		Last Modified: Thu, 16 Jul 2026 02:20:04 GMT  
		Size: 1.1 GB (1147064065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:fc4fa0d6487aaa812b932e15724e1f4b2e3e0a38d97af9672717c5a717a435c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64259149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8924d1457921280fa4ae87e20228e6f7c3c914851fd9fae665498b5a2b6951`

```dockerfile
```

-	Layers:
	-	`sha256:4a9731aa761206156012293731d01f922ea81634a2436f67652a7a91efe2fbcb`  
		Last Modified: Thu, 16 Jul 2026 02:19:46 GMT  
		Size: 64.2 MB (64249376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87656e3859b56744368cdfe02bf2c52b625cd26ff3e0c85cb159ae48044f9c2b`  
		Last Modified: Thu, 16 Jul 2026 02:19:43 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json
