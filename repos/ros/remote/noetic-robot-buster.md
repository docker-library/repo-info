## `ros:noetic-robot-buster`

```console
$ docker pull ros@sha256:c5c224b4af877028a8ad9fe48c3b3de0e6363f4bb5c594937cca3ea980089ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:noetic-robot-buster` - linux; amd64

```console
$ docker pull ros@sha256:7c6ad938ed1a8d945c916fa17e2401d669343f06203728a33bbde63267191e78
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.7 MB (484671613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa5fcc2c83f80147e1bf07614863fe9981db5761b40948ed57aff829aff0150`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:21:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:21:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu buster main" > /etc/apt/sources.list.d/ros1-latest.list
# Wed, 11 Jan 2023 17:21:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Wed, 11 Jan 2023 17:21:40 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 17:21:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Jan 2023 17:21:41 GMT
ENV ROS_DISTRO=noetic
# Wed, 11 Jan 2023 17:22:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-core=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:22:58 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Wed, 11 Jan 2023 17:22:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Jan 2023 17:22:59 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:23:30 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:23:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Wed, 11 Jan 2023 17:24:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-base=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:24:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-robot=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ed05e22e781556eb3057b10b25e54b8161dad941a5286d7328b50bba2f679b`  
		Last Modified: Wed, 11 Jan 2023 17:29:02 GMT  
		Size: 10.9 MB (10897026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6546cbd4873db6f5862f15a5a02564919836e584e6d1ea33023aa1dd4cdf72f6`  
		Last Modified: Wed, 11 Jan 2023 17:29:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7289081c9d2531b3beccb982cbaefbe997da2cc44528869692cca6bf31ea17`  
		Last Modified: Wed, 11 Jan 2023 17:29:00 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03333b8952a2f078f37ed6511a22271194ed1d51350d49a57fea72622f4ebac9`  
		Last Modified: Wed, 11 Jan 2023 17:29:33 GMT  
		Size: 239.3 MB (239251419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6af920c4677ebb81ba3c51dfea10714e63a1b5819f57dc6c67908a8ad8eccfc`  
		Last Modified: Wed, 11 Jan 2023 17:29:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e754f5425abb4e7c144f985ae140d29c7317db661da308682c81f1a76f3247`  
		Last Modified: Wed, 11 Jan 2023 17:29:51 GMT  
		Size: 86.6 MB (86602948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d11cda2ebbd36d930349879770ec5693b9d903dd36eac0bc8b860aceef9a52`  
		Last Modified: Wed, 11 Jan 2023 17:29:39 GMT  
		Size: 335.5 KB (335525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e3a8dedc38d35e970ad02976d8fd342416f69d45aad155d607eb0f983bd86f`  
		Last Modified: Wed, 11 Jan 2023 17:29:49 GMT  
		Size: 76.0 MB (75978213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2046db598f78b0b5481114a30bbae0d1ec816bca4f7a615175d56a35d0c9a922`  
		Last Modified: Wed, 11 Jan 2023 17:30:00 GMT  
		Size: 21.2 MB (21155158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-robot-buster` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed477a6be40e207acabea7d63edf972e40423376f47ad8ab2f7c2155af2ef8b3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424216536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8ba788c7fd4f8a2b2e64980a0826988a1226da2e9341ebfe57e36fc94c03c37`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:52:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:52:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu buster main" > /etc/apt/sources.list.d/ros1-latest.list
# Wed, 11 Jan 2023 13:52:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Wed, 11 Jan 2023 13:52:26 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 13:52:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Jan 2023 13:52:26 GMT
ENV ROS_DISTRO=noetic
# Wed, 11 Jan 2023 13:53:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-core=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:53:46 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Wed, 11 Jan 2023 13:53:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Jan 2023 13:53:46 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:54:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:54:21 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Wed, 11 Jan 2023 13:55:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-base=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-robot=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7426afb0be41a462ca64e39ae6a74ed19ce54db5cd4d8fc00b5094120e8fa8f2`  
		Last Modified: Wed, 11 Jan 2023 14:00:58 GMT  
		Size: 10.9 MB (10902625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71036bab13158db91bd98501b67328211754dad8cac28846bf4aa4ecbde4d658`  
		Last Modified: Wed, 11 Jan 2023 14:00:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e7410b12ea7be4c80024e40f3adcd15efb8dd2b0b24abe4227c4f21cfa894b`  
		Last Modified: Wed, 11 Jan 2023 14:00:57 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f2c8b362ea16751add95c3717f39e7f30cf2649c3affcc6ae88a08aeab9a5b`  
		Last Modified: Wed, 11 Jan 2023 14:01:21 GMT  
		Size: 184.4 MB (184440458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f46ce4b267a4a43fa1378cdd5ec96948d2840335e4ca90ab3100c67516d4c6`  
		Last Modified: Wed, 11 Jan 2023 14:00:57 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc73cadcad0750f2ced4b8a64f684d077dbc86dfcb490e0705f01e359820dc26`  
		Last Modified: Wed, 11 Jan 2023 14:01:36 GMT  
		Size: 84.4 MB (84392048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2f8d1d96d181162c436accd0a6a33bc249984e8e5ad2fc5476f0e4dd056bcc`  
		Last Modified: Wed, 11 Jan 2023 14:01:28 GMT  
		Size: 335.5 KB (335525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7756844afb4448a1b4c4ef76967534312274fc784844e8f40aa841618908afb6`  
		Last Modified: Wed, 11 Jan 2023 14:01:35 GMT  
		Size: 74.1 MB (74090649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dc647d253f2ca3df07893ab76884b46421df6548be3b133e786b1ca0a309aa`  
		Last Modified: Wed, 11 Jan 2023 14:01:45 GMT  
		Size: 20.8 MB (20819018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
