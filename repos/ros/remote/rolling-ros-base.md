## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:598b008cacac6743996ece646095ea7bc541df9e59f596bf6e31d61721a17e71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:e8efe5ec7a288831e8eb1b5a9e2c173a9c312900bbbe59dc80844eee1abb18ad
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263319258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff57ad8fbd909490e0156720c4e9e97f452285302ae04bec39e0b796c0e72912`
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
# Fri, 09 Dec 2022 05:27:11 GMT
ENV ROS_DISTRO=rolling
# Fri, 09 Dec 2022 05:28:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:28:03 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:28:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:28:03 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 05:28:30 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:28:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 05:28:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 05:29:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:213055ab1d8b2c0a651cebe6546d993f2dc65a5926293b42c8359f4215af9a9a`  
		Last Modified: Fri, 09 Dec 2022 05:42:18 GMT  
		Size: 119.5 MB (119464440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79d994318b8f2df45429b9a7ba487600e2dfd1cef4d8d6efce7847bcd4ca2aa`  
		Last Modified: Fri, 09 Dec 2022 05:41:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c05234a2ca3f99799e2c57496314b4624263eafbee96a0f893777beb97ea7ce`  
		Last Modified: Fri, 09 Dec 2022 05:42:38 GMT  
		Size: 84.9 MB (84913212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2e6e140ca329314aaaf8dbf893f4da2b2a7fb9b39e07413401af0647ede7cd`  
		Last Modified: Fri, 09 Dec 2022 05:42:27 GMT  
		Size: 296.1 KB (296142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7518fc920f32812d31cd983d2b5acb69b60bda967f73fb5636ba865f169879d2`  
		Last Modified: Fri, 09 Dec 2022 05:42:26 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0b0c0c22fc3780265c211bc70946a44bc02dfbd4fb75bb893049fe42b2bcf3`  
		Last Modified: Fri, 09 Dec 2022 05:42:30 GMT  
		Size: 23.2 MB (23214968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b9dc322cda9221089ecb2d5d0ce982bc57db8aca8161ba14bc203029909c45c2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (255975788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27eece908402af996a06e21c4f7f063f1d2b73bb13c3a840327621edcb77ca0c`
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
# Fri, 09 Dec 2022 03:16:50 GMT
ENV ROS_DISTRO=rolling
# Fri, 09 Dec 2022 03:17:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:17:28 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 03:17:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 03:17:28 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:17:42 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:17:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 03:17:52 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 03:18:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c96411d012665da3319068ba881d140456336fbcc47a6a1aa53f48c3c12c29e0`  
		Last Modified: Fri, 09 Dec 2022 03:30:16 GMT  
		Size: 117.1 MB (117056322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4f105c7753b16afb5f4e2d028098cfe6bc71161732ffc08401de22735af986`  
		Last Modified: Fri, 09 Dec 2022 03:29:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca68d70c0c72d40b92fedcb34f5e67324f0587e422fb999228549b4570cf210c`  
		Last Modified: Fri, 09 Dec 2022 03:30:34 GMT  
		Size: 82.6 MB (82623980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71ea1b0029da51b11970243be13a8c989afa48826f3f2ed8e8a3d3c15c995b8`  
		Last Modified: Fri, 09 Dec 2022 03:30:25 GMT  
		Size: 296.1 KB (296149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4442e741c91b6ef65b80ac57fea831e491d848e222c0317f805bc1c44680e54f`  
		Last Modified: Fri, 09 Dec 2022 03:30:25 GMT  
		Size: 2.4 KB (2422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716c0c6c13f04dde21e2e28c2611e35c7fb2b0144f58f9560647aac6b87ebb12`  
		Last Modified: Fri, 09 Dec 2022 03:30:28 GMT  
		Size: 22.6 MB (22637964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
