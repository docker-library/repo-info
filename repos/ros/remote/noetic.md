## `ros:noetic`

```console
$ docker pull ros@sha256:05aab2a99ce2a82114702ab96fad303931550f526d653ac46fc77160e779f287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic` - linux; amd64

```console
$ docker pull ros@sha256:a6d60e329c918cf340858effdd28e13d66a6bf0541b96e647242de597a386732
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343186980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4431c3220c78f40fafe49622a3d2e51646341b4ac86ea5ad573e7c67e4c3e031`
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
# Fri, 09 Dec 2022 04:59:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:59:56 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 05:01:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-base=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7d04f6777c88ff80e0f77fdb7ff65116add73c3634a159f809353f1744c84a8d`  
		Last Modified: Fri, 09 Dec 2022 05:35:05 GMT  
		Size: 50.9 MB (50940037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd7503ecddb0b97320554e87b25487d0bdfa37b7fe5c37bc47c4456fe68f03c`  
		Last Modified: Fri, 09 Dec 2022 05:34:57 GMT  
		Size: 340.3 KB (340328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805842103fd592ffb0abe0db2ae0b9e755b178666a0704448f5edfb2e374a42b`  
		Last Modified: Fri, 09 Dec 2022 05:35:09 GMT  
		Size: 79.6 MB (79603294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:d17750dfa2dbd08fed5f26066b582ccf50451669e8978766e1cb48dd30391e6f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289283606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9be7b8f21dff9b49ad4024be643163437356117bb2dcebf68bea286629f273`
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
# Fri, 09 Dec 2022 02:14:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:14:50 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 02:16:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-base=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1efeea9bf9b7ab77f23e367c89da5c0e5531f5addb65cf25bc0a5b5e83cf7f7b`  
		Last Modified: Fri, 09 Dec 2022 02:29:41 GMT  
		Size: 40.5 MB (40504997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120e605d17caddb405dccfcc06092ec788bb817cd359400f2df0b99147c2b496`  
		Last Modified: Fri, 09 Dec 2022 02:29:35 GMT  
		Size: 340.3 KB (340279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19a17ff4caad94ebd5e6c31ff3d11a54ce63c9be19e1df0eb10e8f25280c743`  
		Last Modified: Fri, 09 Dec 2022 02:29:46 GMT  
		Size: 60.5 MB (60482408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9f91972d4c1b3993884e1b4bb6202bc010a485b216aafdf67f0b02061198b2cb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322850055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efff5e9eebc1d010289b96f74b9b3c5b0e5331af7d6cfe3031d5ca016959d42`
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
# Fri, 09 Dec 2022 02:46:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:46:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 02:48:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-base=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ead157feea54418605c4179dd4abcec6c7d316435a84ff1165d0a9c5fb62c9f8`  
		Last Modified: Fri, 09 Dec 2022 03:23:41 GMT  
		Size: 45.2 MB (45203018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd364bf4779f23d7a2f96713796b5e10ebd7bddddf9dbd2af3537841a4e4c100`  
		Last Modified: Fri, 09 Dec 2022 03:23:36 GMT  
		Size: 340.3 KB (340337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c33ed43c56e3ea93d220e9ca8612a7f0bc0d26325ae93e7572f42a8175da45`  
		Last Modified: Fri, 09 Dec 2022 03:23:45 GMT  
		Size: 72.0 MB (71973023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
