## `ros:noetic-ros-core-focal`

```console
$ docker pull ros@sha256:599a2ddce1c0eb6318a075538c3d4a61b53ba3be8c15a5ff87ddf2602b675439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic-ros-core-focal` - linux; amd64

```console
$ docker pull ros@sha256:41f06b60c2f4832e3b793bcf77e60ece183e367c71be52a71908c5323b562c20
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212303321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1729f0a46a3db62d35eb6f165e9db2c1206e9e0d19f6310b964a5c21de401b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:05:57 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:56:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:56:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list
# Fri, 09 Dec 2022 04:56:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 04:56:31 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 04:56:31 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 04:56:31 GMT
ENV ROS_DISTRO=noetic
# Fri, 09 Dec 2022 04:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-core=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:59:06 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Fri, 09 Dec 2022 04:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 04:59:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caabce4ffd25edf36993bf0280efcd423502afe7b8c7b2da5782388b72f81a89`  
		Last Modified: Fri, 09 Dec 2022 02:17:31 GMT  
		Size: 1.2 MB (1154736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5c569c2442d05771daee8e23d1b056915b3dc9dd15887bfc5723720f10c7a6`  
		Last Modified: Fri, 09 Dec 2022 05:34:20 GMT  
		Size: 5.6 MB (5551517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f529aee2e3a92be4f06b63d37bb43dc340b2268b625ca98a14645f4d8798dd5d`  
		Last Modified: Fri, 09 Dec 2022 05:34:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deccb893f642f161489ee8aa949f4f21b8ed3f1db954bad66ed7633d564944ea`  
		Last Modified: Fri, 09 Dec 2022 05:34:19 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b53ddb82e9008abd52793465c9728a2624be314ea6a034a06de5d1d8f3ae0c`  
		Last Modified: Fri, 09 Dec 2022 05:34:48 GMT  
		Size: 177.0 MB (177017773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4aaad258b4a7ff918fe6fdb5378d5120d210256b218f6db6dd15037a06f7afb`  
		Last Modified: Fri, 09 Dec 2022 05:34:19 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-ros-core-focal` - linux; arm variant v7

```console
$ docker pull ros@sha256:65b80df67588378ca238d3d62142164812673fdf322d992a8f07918492e4b2f5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187955922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ead31bf401dacb7152bb70492e97278c4a741dec405c01bb464090a2e0ff0bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:16 GMT
ADD file:b21aa237ba47147762a1b92947251163795189df45212a32e07ea3438a186e03 in / 
# Fri, 09 Dec 2022 01:36:17 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:10:19 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:10:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:10:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list
# Fri, 09 Dec 2022 02:10:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:10:47 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:10:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:10:47 GMT
ENV ROS_DISTRO=noetic
# Fri, 09 Dec 2022 02:13:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-core=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:13:56 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Fri, 09 Dec 2022 02:13:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:13:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cfbc8b467b3eb89e7c394402566b2965c83f3103dafb141203e0020a8acd3774`  
		Last Modified: Fri, 09 Dec 2022 01:38:40 GMT  
		Size: 24.6 MB (24589003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0980f17f3871c61150f8cf58e565a617c7bd6c32e7f5b9c6b3b5db82ed585db3`  
		Last Modified: Fri, 09 Dec 2022 02:28:51 GMT  
		Size: 1.2 MB (1157105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deba0da6f563b0477658b92d647844421ed559d9a8e27a5c22af6fc3331f2480`  
		Last Modified: Fri, 09 Dec 2022 02:28:49 GMT  
		Size: 4.7 MB (4680459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7279077448b46faa5746400fe5a6873f0f9c06e2c5ea412146151b28be9188ed`  
		Last Modified: Fri, 09 Dec 2022 02:28:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad4197cb67bbb0e1bf14fd36da020e21265c002699e944c802762b6f162cdf`  
		Last Modified: Fri, 09 Dec 2022 02:28:48 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6659920eeae5f2c8fcc9a50cea505670f64bb69c4e3bbfacfc3a93526be5c5`  
		Last Modified: Fri, 09 Dec 2022 02:29:22 GMT  
		Size: 157.5 MB (157526943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cd88c1401d8f41679e81b08e3672e4bb5690194555ac55510eb7888d3922ac`  
		Last Modified: Fri, 09 Dec 2022 02:28:48 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-ros-core-focal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c7cef327b88703f6ddf334ed0b91fbd57b4750c497e750e14d915d7968965d5a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205333677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301f23e9604ae8f7bf722e91e092939973333c74ef5321fc2ddf415c7c55f429`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:43:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:43:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:43:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list
# Fri, 09 Dec 2022 02:43:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:43:52 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:43:52 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:43:52 GMT
ENV ROS_DISTRO=noetic
# Fri, 09 Dec 2022 02:46:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-core=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:46:20 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Fri, 09 Dec 2022 02:46:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:46:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757fb2fe2f280d64cc7c0734dadd7f72dfcd73d70d14dce449f6ec2e6834b66f`  
		Last Modified: Fri, 09 Dec 2022 03:22:59 GMT  
		Size: 1.2 MB (1154754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34108aa9b6e179025d554465ed41e434532d83865bdc22a0b4ea074748d69d1e`  
		Last Modified: Fri, 09 Dec 2022 03:22:58 GMT  
		Size: 5.5 MB (5531057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3639e209077f7e6226768f83798bd6aee04df07629d10667e99661522b3e9e1`  
		Last Modified: Fri, 09 Dec 2022 03:22:57 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ee4c248f6cdad5e22c044f28a2d9159c24e1dcb39f9154871184edacf3cabd`  
		Last Modified: Fri, 09 Dec 2022 03:22:57 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2091bad4bf606b56e02a562e792d9baa2cad48286f053f702a84dec6af76aa12`  
		Last Modified: Fri, 09 Dec 2022 03:23:26 GMT  
		Size: 171.5 MB (171452281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd34c3366b1680e763aa38bb22c6f742175c393c6accf12389013451361ffc5a`  
		Last Modified: Fri, 09 Dec 2022 03:22:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
