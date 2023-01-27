## `ros:humble`

```console
$ docker pull ros@sha256:187938e57357e2e1180ada88ddeb89bd54c156e444d09a1d92442c804c1cdf96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:31bef51bf3eebed981fb18f97475d3539a3c33192816f7d402b5490881e8bae9
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (263008434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff722dedce2c8b357f4a427a96c22a1317429723cda89e895aed0c58a3077074`
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
# Fri, 09 Dec 2022 05:17:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:17:49 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 05:17:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 05:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f3ed26a8f7f4e4d3e8966acc0757bb9d7bbb705717c8d7196babebd7b5ff08f9`  
		Last Modified: Fri, 09 Dec 2022 05:39:59 GMT  
		Size: 97.9 MB (97882348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20036a4f3522ebf50ed296548e96acfd1c2ee142815c4f42a1f5920a1093ac03`  
		Last Modified: Fri, 09 Dec 2022 05:39:45 GMT  
		Size: 306.0 KB (306038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f57b081e57005e855e03df50d834ac8a63a802e0687f87a62ad2222fe67e11`  
		Last Modified: Fri, 09 Dec 2022 05:39:45 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de92fd9605557bfd0fe41102718c970ab0870f1c631991452d05dd06041d8b`  
		Last Modified: Fri, 09 Dec 2022 05:39:49 GMT  
		Size: 23.1 MB (23067539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:481ee52580335e2a6522cf3fc6240bfedecd0c0dfbe159604a7763f3858d8ac8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255685497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50155037927c12e45055330c93f9e104b2532ff6bae8dd7240415d4febfa3867`
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
# Fri, 09 Dec 2022 03:05:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:05:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 03:05:28 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 03:06:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d15d81ba9fa2ac44c9c12606bf311c5df2b8c1df0c6854c296d82c8cb9f3b202`  
		Last Modified: Fri, 09 Dec 2022 03:28:13 GMT  
		Size: 95.5 MB (95470615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac12414207ace7c477729fa77299c91bb8978e96da5cc581eb73e5c300b2b584`  
		Last Modified: Fri, 09 Dec 2022 03:28:01 GMT  
		Size: 306.0 KB (306034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36392dab08181ad6041a8251345eabcd747f900681d10510fc8f9140e61f56bf`  
		Last Modified: Fri, 09 Dec 2022 03:28:01 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5694dd25432411562e9e76144887e9e2160d41351325848671e4464c16c57960`  
		Last Modified: Fri, 09 Dec 2022 03:28:05 GMT  
		Size: 22.5 MB (22492246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
