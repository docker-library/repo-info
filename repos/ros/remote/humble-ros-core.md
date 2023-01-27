## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:23aa104a31990bb6952f2836cbf431535ae53490d587a70b32e0ed94a9a4fd83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:de5d3049dbd0475512df89d3aca2e88ef62f642e5634575845ef21b85698d2bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.8 MB (141750062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:408ca0d60059d223feb3bdf8d9529a63f291b8978cd8437b1ac1acfaf33b5aac`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 05:14:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:15:00 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:15:01 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu jammy main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 05:15:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:15:02 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 05:15:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 05:15:03 GMT
ENV ROS_DISTRO=humble
# Fri, 09 Dec 2022 05:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:16:43 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:16:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:16:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a075a4212270474a7d05b2a3df4d10124cfe8bea3a09061f3743bdfdeea620`  
		Last Modified: Fri, 09 Dec 2022 05:39:22 GMT  
		Size: 1.2 MB (1168785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca9afe1ea65f3443c92169383384dedafa95933b2e054106c0de21b6c34d48`  
		Last Modified: Fri, 09 Dec 2022 05:39:20 GMT  
		Size: 3.8 MB (3828147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fd221bf00513721700dbf17f757c3d2c694e4f5866cc10d522aca08d918542`  
		Last Modified: Fri, 09 Dec 2022 05:39:20 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d6bb9c524a1795566113eec993f29c6509ea63f84d84b6172832d962dad457`  
		Last Modified: Fri, 09 Dec 2022 05:39:20 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61f1ebc7554e42ae1b84803d3582ff0d979e2cae57350f8fa7c7f19d10af22d`  
		Last Modified: Fri, 09 Dec 2022 05:39:36 GMT  
		Size: 106.3 MB (106322004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db8e7fea243b895feae68411ade9458a3b0c035e1043382c93036a12b1fab7a`  
		Last Modified: Fri, 09 Dec 2022 05:39:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:521bf25c64de69390b94dda61015087f28cb9eb59bcc383583e5d2a6bf04d98d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137414187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b3e46567e32beaf8a4d507f7dfb0508872a826a4bf97b3fc929d497bbb8029`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:01:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:02:05 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:02:05 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu jammy main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 03:02:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 03:02:06 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 03:02:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 03:02:06 GMT
ENV ROS_DISTRO=humble
# Fri, 09 Dec 2022 03:04:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:04:02 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 03:04:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 03:04:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd8dc3e3065c6ea4d11a008128adae56cbb9f13628e58b8aaf334329f716e92`  
		Last Modified: Fri, 09 Dec 2022 03:27:38 GMT  
		Size: 1.2 MB (1170314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714b8bd153ff56b0dca3f778fd85306914b8e9f50c343a01fbbdc20f9e53b1ea`  
		Last Modified: Fri, 09 Dec 2022 03:27:36 GMT  
		Size: 3.8 MB (3801750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b23c139b344480421c4eacff1b9cfae6f881dbab5c213d1a062e9aa523eeb1`  
		Last Modified: Fri, 09 Dec 2022 03:27:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39b13b1db0fb60b86f2083c60b57ddb444d12dd03f8ed55a5a91f2bbe109a5c`  
		Last Modified: Fri, 09 Dec 2022 03:27:36 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c663a312d54a8bf361593f850418988d836fd90bae2c046888143349e739d90`  
		Last Modified: Fri, 09 Dec 2022 03:27:53 GMT  
		Size: 104.1 MB (104055235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c207355d120614d12bc04f3a3395974c224633425e14ee694502a70b394ff9f5`  
		Last Modified: Fri, 09 Dec 2022 03:27:35 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
