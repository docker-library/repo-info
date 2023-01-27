<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:foxy`](#rosfoxy)
-	[`ros:foxy-ros-base`](#rosfoxy-ros-base)
-	[`ros:foxy-ros-base-focal`](#rosfoxy-ros-base-focal)
-	[`ros:foxy-ros-core`](#rosfoxy-ros-core)
-	[`ros:foxy-ros-core-focal`](#rosfoxy-ros-core-focal)
-	[`ros:foxy-ros1-bridge`](#rosfoxy-ros1-bridge)
-	[`ros:foxy-ros1-bridge-focal`](#rosfoxy-ros1-bridge-focal)
-	[`ros:humble`](#roshumble)
-	[`ros:humble-perception`](#roshumble-perception)
-	[`ros:humble-perception-jammy`](#roshumble-perception-jammy)
-	[`ros:humble-ros-base`](#roshumble-ros-base)
-	[`ros:humble-ros-base-jammy`](#roshumble-ros-base-jammy)
-	[`ros:humble-ros-core`](#roshumble-ros-core)
-	[`ros:humble-ros-core-jammy`](#roshumble-ros-core-jammy)
-	[`ros:latest`](#roslatest)
-	[`ros:melodic`](#rosmelodic)
-	[`ros:melodic-perception`](#rosmelodic-perception)
-	[`ros:melodic-perception-bionic`](#rosmelodic-perception-bionic)
-	[`ros:melodic-robot`](#rosmelodic-robot)
-	[`ros:melodic-robot-bionic`](#rosmelodic-robot-bionic)
-	[`ros:melodic-ros-base`](#rosmelodic-ros-base)
-	[`ros:melodic-ros-base-bionic`](#rosmelodic-ros-base-bionic)
-	[`ros:melodic-ros-core`](#rosmelodic-ros-core)
-	[`ros:melodic-ros-core-bionic`](#rosmelodic-ros-core-bionic)
-	[`ros:noetic`](#rosnoetic)
-	[`ros:noetic-perception`](#rosnoetic-perception)
-	[`ros:noetic-perception-buster`](#rosnoetic-perception-buster)
-	[`ros:noetic-perception-focal`](#rosnoetic-perception-focal)
-	[`ros:noetic-robot`](#rosnoetic-robot)
-	[`ros:noetic-robot-buster`](#rosnoetic-robot-buster)
-	[`ros:noetic-robot-focal`](#rosnoetic-robot-focal)
-	[`ros:noetic-ros-base`](#rosnoetic-ros-base)
-	[`ros:noetic-ros-base-buster`](#rosnoetic-ros-base-buster)
-	[`ros:noetic-ros-base-focal`](#rosnoetic-ros-base-focal)
-	[`ros:noetic-ros-core`](#rosnoetic-ros-core)
-	[`ros:noetic-ros-core-buster`](#rosnoetic-ros-core-buster)
-	[`ros:noetic-ros-core-focal`](#rosnoetic-ros-core-focal)
-	[`ros:rolling`](#rosrolling)
-	[`ros:rolling-perception`](#rosrolling-perception)
-	[`ros:rolling-perception-jammy`](#rosrolling-perception-jammy)
-	[`ros:rolling-ros-base`](#rosrolling-ros-base)
-	[`ros:rolling-ros-base-jammy`](#rosrolling-ros-base-jammy)
-	[`ros:rolling-ros-core`](#rosrolling-ros-core)
-	[`ros:rolling-ros-core-jammy`](#rosrolling-ros-core-jammy)

## `ros:foxy`

```console
$ docker pull ros@sha256:4ba8f08ed1acf4b3384435a777ad4b5d5b8c37a027001460b697d5318b0c3076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:foxy` - linux; amd64

```console
$ docker pull ros@sha256:2d7bdfc0fabdb42c3b0ccae337b6448f5ea263e5d863ad6ff4138d54ef80f418
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250912800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8337d52bce89c16354cd2d09f84d78612ebe9f63d68e64827f0a9f4fc9e9fe54`
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
# Fri, 09 Dec 2022 05:09:19 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 05:09:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 05:10:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:20 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:10:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:10:20 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 05:10:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:54 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 05:10:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 05:11:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:3fbd4df45a001dd08380ae069a426a705c7c8d6b3256c3d95bb0a8d281ea42c5`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb7876e8dbcfdfed9f4a879aa88de1c4785e20cbecb204dcccec3bfd76fa19a`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfa0fd25479e87bf4b59c713667040fe65a73ecb8fe6c15a500608bd704c85e`  
		Last Modified: Fri, 09 Dec 2022 05:37:15 GMT  
		Size: 120.4 MB (120357554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22220a302ca51863184e466e3f144a75bd9e92b97eeeec34ee8cb4557a0255e0`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed015d15add357da85905f59d7481744b4f675188a10028320ae711bf62333`  
		Last Modified: Fri, 09 Dec 2022 05:37:34 GMT  
		Size: 73.3 MB (73329408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cee15e997c7e8f91044ddbe298b6ae390c6962b7f91c7285e0a1977ecaa878`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aa7c53a8838d51439e8aeeefc7232ae9a6f4fff49431a10043cf435d7e372`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b379ba7f826eed63a7ec51c723d73f5dcc9fadb1dcd3d16a2454ea55eba5563c`  
		Last Modified: Fri, 09 Dec 2022 05:37:27 GMT  
		Size: 21.7 MB (21661894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:foxy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3bd2807282747665977c9307e11b8ec7711e1c2e8c27d198e95bfeca082c50c2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226768906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7587310c6b44ff3da224dbd8e03b7d33afb0543ab73625ea09bbceb64ee86380`
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
# Fri, 09 Dec 2022 02:57:14 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 02:57:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 02:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:08 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 02:58:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:58:08 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:58:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:35 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 02:58:40 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 02:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:79a3301718be783bb7d10549e4c4d30d28c3440d4dd0dfc0e601d5c9ae213ab1`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63004661e39c1b539112611581f6e362b812038b6961c98254dd8ab0bb221832`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b03de35f99ecdd5e2c6b9edc57c370fc1235d49e5e8f0924ed85b7135606a4`  
		Last Modified: Fri, 09 Dec 2022 03:25:33 GMT  
		Size: 104.6 MB (104558778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2e2e21c49243bd9f7d395063bbef5d9e86be8f2fb787901b8ca504bae3123a`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f1a3dce8a3f2f12beb55a97c38fd532de4ada449ba5b750db310a4aa1bed8`  
		Last Modified: Fri, 09 Dec 2022 03:25:50 GMT  
		Size: 67.7 MB (67675837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1723621fb31f36278e19e21bda4d6500be7e52051ac4770104af43a73b63378e`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839a08922d0c890f3b65207c8b706707fb2fa295f2e885d0ce6ac9a8eed4af7`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 2.4 KB (2420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997775b4aaae4594dd1bc521b063cd4bbdb0403cc5a2946344515519f7dff081`  
		Last Modified: Fri, 09 Dec 2022 03:25:44 GMT  
		Size: 20.4 MB (20374509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:foxy-ros-base`

```console
$ docker pull ros@sha256:4ba8f08ed1acf4b3384435a777ad4b5d5b8c37a027001460b697d5318b0c3076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:foxy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:2d7bdfc0fabdb42c3b0ccae337b6448f5ea263e5d863ad6ff4138d54ef80f418
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250912800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8337d52bce89c16354cd2d09f84d78612ebe9f63d68e64827f0a9f4fc9e9fe54`
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
# Fri, 09 Dec 2022 05:09:19 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 05:09:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 05:10:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:20 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:10:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:10:20 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 05:10:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:54 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 05:10:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 05:11:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:3fbd4df45a001dd08380ae069a426a705c7c8d6b3256c3d95bb0a8d281ea42c5`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb7876e8dbcfdfed9f4a879aa88de1c4785e20cbecb204dcccec3bfd76fa19a`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfa0fd25479e87bf4b59c713667040fe65a73ecb8fe6c15a500608bd704c85e`  
		Last Modified: Fri, 09 Dec 2022 05:37:15 GMT  
		Size: 120.4 MB (120357554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22220a302ca51863184e466e3f144a75bd9e92b97eeeec34ee8cb4557a0255e0`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed015d15add357da85905f59d7481744b4f675188a10028320ae711bf62333`  
		Last Modified: Fri, 09 Dec 2022 05:37:34 GMT  
		Size: 73.3 MB (73329408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cee15e997c7e8f91044ddbe298b6ae390c6962b7f91c7285e0a1977ecaa878`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aa7c53a8838d51439e8aeeefc7232ae9a6f4fff49431a10043cf435d7e372`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b379ba7f826eed63a7ec51c723d73f5dcc9fadb1dcd3d16a2454ea55eba5563c`  
		Last Modified: Fri, 09 Dec 2022 05:37:27 GMT  
		Size: 21.7 MB (21661894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:foxy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3bd2807282747665977c9307e11b8ec7711e1c2e8c27d198e95bfeca082c50c2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226768906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7587310c6b44ff3da224dbd8e03b7d33afb0543ab73625ea09bbceb64ee86380`
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
# Fri, 09 Dec 2022 02:57:14 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 02:57:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 02:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:08 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 02:58:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:58:08 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:58:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:35 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 02:58:40 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 02:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:79a3301718be783bb7d10549e4c4d30d28c3440d4dd0dfc0e601d5c9ae213ab1`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63004661e39c1b539112611581f6e362b812038b6961c98254dd8ab0bb221832`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b03de35f99ecdd5e2c6b9edc57c370fc1235d49e5e8f0924ed85b7135606a4`  
		Last Modified: Fri, 09 Dec 2022 03:25:33 GMT  
		Size: 104.6 MB (104558778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2e2e21c49243bd9f7d395063bbef5d9e86be8f2fb787901b8ca504bae3123a`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f1a3dce8a3f2f12beb55a97c38fd532de4ada449ba5b750db310a4aa1bed8`  
		Last Modified: Fri, 09 Dec 2022 03:25:50 GMT  
		Size: 67.7 MB (67675837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1723621fb31f36278e19e21bda4d6500be7e52051ac4770104af43a73b63378e`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839a08922d0c890f3b65207c8b706707fb2fa295f2e885d0ce6ac9a8eed4af7`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 2.4 KB (2420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997775b4aaae4594dd1bc521b063cd4bbdb0403cc5a2946344515519f7dff081`  
		Last Modified: Fri, 09 Dec 2022 03:25:44 GMT  
		Size: 20.4 MB (20374509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:foxy-ros-base-focal`

```console
$ docker pull ros@sha256:4ba8f08ed1acf4b3384435a777ad4b5d5b8c37a027001460b697d5318b0c3076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:foxy-ros-base-focal` - linux; amd64

```console
$ docker pull ros@sha256:2d7bdfc0fabdb42c3b0ccae337b6448f5ea263e5d863ad6ff4138d54ef80f418
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250912800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8337d52bce89c16354cd2d09f84d78612ebe9f63d68e64827f0a9f4fc9e9fe54`
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
# Fri, 09 Dec 2022 05:09:19 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 05:09:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 05:10:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:20 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:10:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:10:20 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 05:10:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:54 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 05:10:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 05:11:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:3fbd4df45a001dd08380ae069a426a705c7c8d6b3256c3d95bb0a8d281ea42c5`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb7876e8dbcfdfed9f4a879aa88de1c4785e20cbecb204dcccec3bfd76fa19a`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfa0fd25479e87bf4b59c713667040fe65a73ecb8fe6c15a500608bd704c85e`  
		Last Modified: Fri, 09 Dec 2022 05:37:15 GMT  
		Size: 120.4 MB (120357554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22220a302ca51863184e466e3f144a75bd9e92b97eeeec34ee8cb4557a0255e0`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed015d15add357da85905f59d7481744b4f675188a10028320ae711bf62333`  
		Last Modified: Fri, 09 Dec 2022 05:37:34 GMT  
		Size: 73.3 MB (73329408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cee15e997c7e8f91044ddbe298b6ae390c6962b7f91c7285e0a1977ecaa878`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aa7c53a8838d51439e8aeeefc7232ae9a6f4fff49431a10043cf435d7e372`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b379ba7f826eed63a7ec51c723d73f5dcc9fadb1dcd3d16a2454ea55eba5563c`  
		Last Modified: Fri, 09 Dec 2022 05:37:27 GMT  
		Size: 21.7 MB (21661894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:foxy-ros-base-focal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3bd2807282747665977c9307e11b8ec7711e1c2e8c27d198e95bfeca082c50c2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226768906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7587310c6b44ff3da224dbd8e03b7d33afb0543ab73625ea09bbceb64ee86380`
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
# Fri, 09 Dec 2022 02:57:14 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 02:57:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 02:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:08 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 02:58:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:58:08 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:58:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:35 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 02:58:40 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 02:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:79a3301718be783bb7d10549e4c4d30d28c3440d4dd0dfc0e601d5c9ae213ab1`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63004661e39c1b539112611581f6e362b812038b6961c98254dd8ab0bb221832`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b03de35f99ecdd5e2c6b9edc57c370fc1235d49e5e8f0924ed85b7135606a4`  
		Last Modified: Fri, 09 Dec 2022 03:25:33 GMT  
		Size: 104.6 MB (104558778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2e2e21c49243bd9f7d395063bbef5d9e86be8f2fb787901b8ca504bae3123a`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f1a3dce8a3f2f12beb55a97c38fd532de4ada449ba5b750db310a4aa1bed8`  
		Last Modified: Fri, 09 Dec 2022 03:25:50 GMT  
		Size: 67.7 MB (67675837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1723621fb31f36278e19e21bda4d6500be7e52051ac4770104af43a73b63378e`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839a08922d0c890f3b65207c8b706707fb2fa295f2e885d0ce6ac9a8eed4af7`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 2.4 KB (2420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997775b4aaae4594dd1bc521b063cd4bbdb0403cc5a2946344515519f7dff081`  
		Last Modified: Fri, 09 Dec 2022 03:25:44 GMT  
		Size: 20.4 MB (20374509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:foxy-ros-core`

```console
$ docker pull ros@sha256:f3f6c436ed7a1d454f1e85e9e37c099abee2917e739cd01e5a850675bd1fff4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:foxy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:059bdcd9c674d82d5a5a037a55d565c6e6252e3e00bef30005b753d9538c4df7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155643105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c42f239d3e226d0baa55cd450366509efbfcef2e7368bbc9b12799dfb855654`
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
# Fri, 09 Dec 2022 05:09:19 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 05:09:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 05:10:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:20 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:10:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:10:20 GMT
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
	-	`sha256:3fbd4df45a001dd08380ae069a426a705c7c8d6b3256c3d95bb0a8d281ea42c5`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb7876e8dbcfdfed9f4a879aa88de1c4785e20cbecb204dcccec3bfd76fa19a`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfa0fd25479e87bf4b59c713667040fe65a73ecb8fe6c15a500608bd704c85e`  
		Last Modified: Fri, 09 Dec 2022 05:37:15 GMT  
		Size: 120.4 MB (120357554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22220a302ca51863184e466e3f144a75bd9e92b97eeeec34ee8cb4557a0255e0`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:foxy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:29b97362e854a99899eec52f0de8396791017055b7abe8337ccb71f41b56978f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138440171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d9cdb197b2bedf84ca2c9b357ce0f9c3866e65896f79887746579223e5eecd`
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
# Fri, 09 Dec 2022 02:57:14 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 02:57:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 02:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:08 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 02:58:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:58:08 GMT
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
	-	`sha256:79a3301718be783bb7d10549e4c4d30d28c3440d4dd0dfc0e601d5c9ae213ab1`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63004661e39c1b539112611581f6e362b812038b6961c98254dd8ab0bb221832`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b03de35f99ecdd5e2c6b9edc57c370fc1235d49e5e8f0924ed85b7135606a4`  
		Last Modified: Fri, 09 Dec 2022 03:25:33 GMT  
		Size: 104.6 MB (104558778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2e2e21c49243bd9f7d395063bbef5d9e86be8f2fb787901b8ca504bae3123a`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:foxy-ros-core-focal`

```console
$ docker pull ros@sha256:f3f6c436ed7a1d454f1e85e9e37c099abee2917e739cd01e5a850675bd1fff4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:foxy-ros-core-focal` - linux; amd64

```console
$ docker pull ros@sha256:059bdcd9c674d82d5a5a037a55d565c6e6252e3e00bef30005b753d9538c4df7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155643105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c42f239d3e226d0baa55cd450366509efbfcef2e7368bbc9b12799dfb855654`
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
# Fri, 09 Dec 2022 05:09:19 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 05:09:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 05:10:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:20 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:10:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:10:20 GMT
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
	-	`sha256:3fbd4df45a001dd08380ae069a426a705c7c8d6b3256c3d95bb0a8d281ea42c5`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb7876e8dbcfdfed9f4a879aa88de1c4785e20cbecb204dcccec3bfd76fa19a`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfa0fd25479e87bf4b59c713667040fe65a73ecb8fe6c15a500608bd704c85e`  
		Last Modified: Fri, 09 Dec 2022 05:37:15 GMT  
		Size: 120.4 MB (120357554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22220a302ca51863184e466e3f144a75bd9e92b97eeeec34ee8cb4557a0255e0`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:foxy-ros-core-focal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:29b97362e854a99899eec52f0de8396791017055b7abe8337ccb71f41b56978f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138440171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d9cdb197b2bedf84ca2c9b357ce0f9c3866e65896f79887746579223e5eecd`
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
# Fri, 09 Dec 2022 02:57:14 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 02:57:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 02:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:08 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 02:58:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:58:08 GMT
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
	-	`sha256:79a3301718be783bb7d10549e4c4d30d28c3440d4dd0dfc0e601d5c9ae213ab1`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63004661e39c1b539112611581f6e362b812038b6961c98254dd8ab0bb221832`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b03de35f99ecdd5e2c6b9edc57c370fc1235d49e5e8f0924ed85b7135606a4`  
		Last Modified: Fri, 09 Dec 2022 03:25:33 GMT  
		Size: 104.6 MB (104558778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2e2e21c49243bd9f7d395063bbef5d9e86be8f2fb787901b8ca504bae3123a`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:foxy-ros1-bridge`

```console
$ docker pull ros@sha256:cbd3e5f82e4579b530ed3520606c5948cb59424563db8cbad2f84403ef2f9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:foxy-ros1-bridge` - linux; amd64

```console
$ docker pull ros@sha256:13dacc3393e00d5d4c450f5fc6a2f2a66e7b306fb7c72227cbc37a22ad142ec4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.0 MB (349023089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fc011ac8df8d790efa40b61f2b8ca756f822bd6ffd7044d9c91b2bb284d531`
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
# Fri, 09 Dec 2022 05:09:19 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 05:09:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 05:10:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:20 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:10:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:10:20 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 05:10:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:54 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 05:10:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 05:11:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:11:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list
# Fri, 09 Dec 2022 05:11:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:11:28 GMT
ENV ROS1_DISTRO=noetic
# Fri, 09 Dec 2022 05:11:28 GMT
ENV ROS2_DISTRO=foxy
# Fri, 09 Dec 2022 05:11:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-comm=1.15.15-1*     ros-noetic-roscpp-tutorials=0.10.2-1*     ros-noetic-rospy-tutorials=0.10.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros1-bridge=0.9.6-1*     ros-foxy-demo-nodes-cpp=0.9.4-1*     ros-foxy-demo-nodes-py=0.9.4-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:12:05 GMT
COPY file:196e0ab4e3b32a1af101eff4dfa0110eb39feb70f4f9f2df3de2e22162513085 in / 
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
	-	`sha256:3fbd4df45a001dd08380ae069a426a705c7c8d6b3256c3d95bb0a8d281ea42c5`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb7876e8dbcfdfed9f4a879aa88de1c4785e20cbecb204dcccec3bfd76fa19a`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfa0fd25479e87bf4b59c713667040fe65a73ecb8fe6c15a500608bd704c85e`  
		Last Modified: Fri, 09 Dec 2022 05:37:15 GMT  
		Size: 120.4 MB (120357554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22220a302ca51863184e466e3f144a75bd9e92b97eeeec34ee8cb4557a0255e0`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed015d15add357da85905f59d7481744b4f675188a10028320ae711bf62333`  
		Last Modified: Fri, 09 Dec 2022 05:37:34 GMT  
		Size: 73.3 MB (73329408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cee15e997c7e8f91044ddbe298b6ae390c6962b7f91c7285e0a1977ecaa878`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aa7c53a8838d51439e8aeeefc7232ae9a6f4fff49431a10043cf435d7e372`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b379ba7f826eed63a7ec51c723d73f5dcc9fadb1dcd3d16a2454ea55eba5563c`  
		Last Modified: Fri, 09 Dec 2022 05:37:27 GMT  
		Size: 21.7 MB (21661894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daea7a721eeb379e4e148b82ac9e7b7e3f66a087710e6bc04c4c213267404671`  
		Last Modified: Fri, 09 Dec 2022 05:37:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ee9c3b3f8f01fec0572530d8f497623409042c0eb8c8c0b0bb3879cafb84e5`  
		Last Modified: Fri, 09 Dec 2022 05:37:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c2b5c413a8e4e24d9972cc239f10d5d43ee296d220d117d961a1f05ce5dc4`  
		Last Modified: Fri, 09 Dec 2022 05:38:00 GMT  
		Size: 76.4 MB (76435948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06dbfb1da6fa97bd4c5263d1c48dc8b96615a0a8cbc69faac5c1f045e14b17d`  
		Last Modified: Fri, 09 Dec 2022 05:37:50 GMT  
		Size: 21.7 MB (21673714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53e830f96a7f61c062254545c50d276c369eb21f6683b3bd3873d70b1247466`  
		Last Modified: Fri, 09 Dec 2022 05:37:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:foxy-ros1-bridge` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:010226ef11433c6a73fc40fd0970babc2f6586adac27f5e7786a5e1df311d068
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.6 MB (317593291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067a40eb07c458c9510406345e281cb33097f60e7c08061b71d51e5c57f20344`
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
# Fri, 09 Dec 2022 02:57:14 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 02:57:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 02:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:08 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 02:58:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:58:08 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:58:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:35 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 02:58:40 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 02:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:59:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list
# Fri, 09 Dec 2022 02:59:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:59:01 GMT
ENV ROS1_DISTRO=noetic
# Fri, 09 Dec 2022 02:59:01 GMT
ENV ROS2_DISTRO=foxy
# Fri, 09 Dec 2022 02:59:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-comm=1.15.15-1*     ros-noetic-roscpp-tutorials=0.10.2-1*     ros-noetic-rospy-tutorials=0.10.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:59:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros1-bridge=0.9.6-1*     ros-foxy-demo-nodes-cpp=0.9.4-1*     ros-foxy-demo-nodes-py=0.9.4-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:59:31 GMT
COPY file:196e0ab4e3b32a1af101eff4dfa0110eb39feb70f4f9f2df3de2e22162513085 in / 
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
	-	`sha256:79a3301718be783bb7d10549e4c4d30d28c3440d4dd0dfc0e601d5c9ae213ab1`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63004661e39c1b539112611581f6e362b812038b6961c98254dd8ab0bb221832`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b03de35f99ecdd5e2c6b9edc57c370fc1235d49e5e8f0924ed85b7135606a4`  
		Last Modified: Fri, 09 Dec 2022 03:25:33 GMT  
		Size: 104.6 MB (104558778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2e2e21c49243bd9f7d395063bbef5d9e86be8f2fb787901b8ca504bae3123a`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f1a3dce8a3f2f12beb55a97c38fd532de4ada449ba5b750db310a4aa1bed8`  
		Last Modified: Fri, 09 Dec 2022 03:25:50 GMT  
		Size: 67.7 MB (67675837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1723621fb31f36278e19e21bda4d6500be7e52051ac4770104af43a73b63378e`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839a08922d0c890f3b65207c8b706707fb2fa295f2e885d0ce6ac9a8eed4af7`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 2.4 KB (2420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997775b4aaae4594dd1bc521b063cd4bbdb0403cc5a2946344515519f7dff081`  
		Last Modified: Fri, 09 Dec 2022 03:25:44 GMT  
		Size: 20.4 MB (20374509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7aa536f1a3b87a1484b34e013e3607aaaefded6a8b4630f27d36a87f473149`  
		Last Modified: Fri, 09 Dec 2022 03:26:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43235d137847611a76f6b6f03f1d99a5b19fd153b482ac53fc009fde95bdd6c2`  
		Last Modified: Fri, 09 Dec 2022 03:26:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b949780ead758ed08f810c4fc2dd16232be0ee168a0f63172105a739dc6bd28f`  
		Last Modified: Fri, 09 Dec 2022 03:26:15 GMT  
		Size: 76.5 MB (76498961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5bb53fdc720e28ffa9ff5fdfe37b66f6802eab8d7bb04b3070fe51b33b0764`  
		Last Modified: Fri, 09 Dec 2022 03:26:04 GMT  
		Size: 14.3 MB (14324793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c8d0e73fcbef93589d60ce11fb61b011595f8709c145e30b1957d94c6a099b`  
		Last Modified: Fri, 09 Dec 2022 03:26:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:foxy-ros1-bridge-focal`

```console
$ docker pull ros@sha256:cbd3e5f82e4579b530ed3520606c5948cb59424563db8cbad2f84403ef2f9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:foxy-ros1-bridge-focal` - linux; amd64

```console
$ docker pull ros@sha256:13dacc3393e00d5d4c450f5fc6a2f2a66e7b306fb7c72227cbc37a22ad142ec4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.0 MB (349023089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fc011ac8df8d790efa40b61f2b8ca756f822bd6ffd7044d9c91b2bb284d531`
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
# Fri, 09 Dec 2022 05:09:19 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 05:09:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 05:09:21 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 05:10:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:20 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 05:10:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 05:10:20 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 05:10:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:10:54 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 05:10:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 05:11:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:11:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list
# Fri, 09 Dec 2022 05:11:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 05:11:28 GMT
ENV ROS1_DISTRO=noetic
# Fri, 09 Dec 2022 05:11:28 GMT
ENV ROS2_DISTRO=foxy
# Fri, 09 Dec 2022 05:11:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-comm=1.15.15-1*     ros-noetic-roscpp-tutorials=0.10.2-1*     ros-noetic-rospy-tutorials=0.10.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros1-bridge=0.9.6-1*     ros-foxy-demo-nodes-cpp=0.9.4-1*     ros-foxy-demo-nodes-py=0.9.4-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 05:12:05 GMT
COPY file:196e0ab4e3b32a1af101eff4dfa0110eb39feb70f4f9f2df3de2e22162513085 in / 
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
	-	`sha256:3fbd4df45a001dd08380ae069a426a705c7c8d6b3256c3d95bb0a8d281ea42c5`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb7876e8dbcfdfed9f4a879aa88de1c4785e20cbecb204dcccec3bfd76fa19a`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfa0fd25479e87bf4b59c713667040fe65a73ecb8fe6c15a500608bd704c85e`  
		Last Modified: Fri, 09 Dec 2022 05:37:15 GMT  
		Size: 120.4 MB (120357554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22220a302ca51863184e466e3f144a75bd9e92b97eeeec34ee8cb4557a0255e0`  
		Last Modified: Fri, 09 Dec 2022 05:36:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed015d15add357da85905f59d7481744b4f675188a10028320ae711bf62333`  
		Last Modified: Fri, 09 Dec 2022 05:37:34 GMT  
		Size: 73.3 MB (73329408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cee15e997c7e8f91044ddbe298b6ae390c6962b7f91c7285e0a1977ecaa878`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aa7c53a8838d51439e8aeeefc7232ae9a6f4fff49431a10043cf435d7e372`  
		Last Modified: Fri, 09 Dec 2022 05:37:24 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b379ba7f826eed63a7ec51c723d73f5dcc9fadb1dcd3d16a2454ea55eba5563c`  
		Last Modified: Fri, 09 Dec 2022 05:37:27 GMT  
		Size: 21.7 MB (21661894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daea7a721eeb379e4e148b82ac9e7b7e3f66a087710e6bc04c4c213267404671`  
		Last Modified: Fri, 09 Dec 2022 05:37:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ee9c3b3f8f01fec0572530d8f497623409042c0eb8c8c0b0bb3879cafb84e5`  
		Last Modified: Fri, 09 Dec 2022 05:37:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13c2b5c413a8e4e24d9972cc239f10d5d43ee296d220d117d961a1f05ce5dc4`  
		Last Modified: Fri, 09 Dec 2022 05:38:00 GMT  
		Size: 76.4 MB (76435948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06dbfb1da6fa97bd4c5263d1c48dc8b96615a0a8cbc69faac5c1f045e14b17d`  
		Last Modified: Fri, 09 Dec 2022 05:37:50 GMT  
		Size: 21.7 MB (21673714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53e830f96a7f61c062254545c50d276c369eb21f6683b3bd3873d70b1247466`  
		Last Modified: Fri, 09 Dec 2022 05:37:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:foxy-ros1-bridge-focal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:010226ef11433c6a73fc40fd0970babc2f6586adac27f5e7786a5e1df311d068
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.6 MB (317593291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067a40eb07c458c9510406345e281cb33097f60e7c08061b71d51e5c57f20344`
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
# Fri, 09 Dec 2022 02:57:14 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list
# Fri, 09 Dec 2022 02:57:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LANG=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 09 Dec 2022 02:57:16 GMT
ENV ROS_DISTRO=foxy
# Fri, 09 Dec 2022 02:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-core=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:08 GMT
COPY file:ec5b16a0e777d7d7d041a72ffc817bf5f7b375662afa0c404f3ca36fad1afb90 in / 
# Fri, 09 Dec 2022 02:58:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 09 Dec 2022 02:58:08 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:58:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:58:35 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Fri, 09 Dec 2022 02:58:40 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update
# Fri, 09 Dec 2022 02:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:59:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list
# Fri, 09 Dec 2022 02:59:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 09 Dec 2022 02:59:01 GMT
ENV ROS1_DISTRO=noetic
# Fri, 09 Dec 2022 02:59:01 GMT
ENV ROS2_DISTRO=foxy
# Fri, 09 Dec 2022 02:59:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-ros-comm=1.15.15-1*     ros-noetic-roscpp-tutorials=0.10.2-1*     ros-noetic-rospy-tutorials=0.10.2-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:59:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros1-bridge=0.9.6-1*     ros-foxy-demo-nodes-cpp=0.9.4-1*     ros-foxy-demo-nodes-py=0.9.4-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:59:31 GMT
COPY file:196e0ab4e3b32a1af101eff4dfa0110eb39feb70f4f9f2df3de2e22162513085 in / 
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
	-	`sha256:79a3301718be783bb7d10549e4c4d30d28c3440d4dd0dfc0e601d5c9ae213ab1`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63004661e39c1b539112611581f6e362b812038b6961c98254dd8ab0bb221832`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b03de35f99ecdd5e2c6b9edc57c370fc1235d49e5e8f0924ed85b7135606a4`  
		Last Modified: Fri, 09 Dec 2022 03:25:33 GMT  
		Size: 104.6 MB (104558778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2e2e21c49243bd9f7d395063bbef5d9e86be8f2fb787901b8ca504bae3123a`  
		Last Modified: Fri, 09 Dec 2022 03:25:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f1a3dce8a3f2f12beb55a97c38fd532de4ada449ba5b750db310a4aa1bed8`  
		Last Modified: Fri, 09 Dec 2022 03:25:50 GMT  
		Size: 67.7 MB (67675837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1723621fb31f36278e19e21bda4d6500be7e52051ac4770104af43a73b63378e`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 276.0 KB (275969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839a08922d0c890f3b65207c8b706707fb2fa295f2e885d0ce6ac9a8eed4af7`  
		Last Modified: Fri, 09 Dec 2022 03:25:41 GMT  
		Size: 2.4 KB (2420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997775b4aaae4594dd1bc521b063cd4bbdb0403cc5a2946344515519f7dff081`  
		Last Modified: Fri, 09 Dec 2022 03:25:44 GMT  
		Size: 20.4 MB (20374509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7aa536f1a3b87a1484b34e013e3607aaaefded6a8b4630f27d36a87f473149`  
		Last Modified: Fri, 09 Dec 2022 03:26:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43235d137847611a76f6b6f03f1d99a5b19fd153b482ac53fc009fde95bdd6c2`  
		Last Modified: Fri, 09 Dec 2022 03:26:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b949780ead758ed08f810c4fc2dd16232be0ee168a0f63172105a739dc6bd28f`  
		Last Modified: Fri, 09 Dec 2022 03:26:15 GMT  
		Size: 76.5 MB (76498961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5bb53fdc720e28ffa9ff5fdfe37b66f6802eab8d7bb04b3070fe51b33b0764`  
		Last Modified: Fri, 09 Dec 2022 03:26:04 GMT  
		Size: 14.3 MB (14324793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c8d0e73fcbef93589d60ce11fb61b011595f8709c145e30b1957d94c6a099b`  
		Last Modified: Fri, 09 Dec 2022 03:26:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `ros:humble-perception`

```console
$ docker pull ros@sha256:1ebf97c15fd45294f121ae4b7137ebc449d7308e4f656fab4afdb908df0d7c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:dee7f8de7713abb581224d04e37538b0df1fc802f012d853f5b53f4f8952f609
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1087296653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8730819807f2ca4cb7a9bef9a8494287a8866f8943f3fd2711978544066e684c`
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
# Fri, 09 Dec 2022 05:26:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:77396d594b91eee162d53cfe75987e4a5a192f340d8868ea15f137239061aceb`  
		Last Modified: Fri, 09 Dec 2022 05:41:49 GMT  
		Size: 824.3 MB (824288219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5adfc6f63ae7422664dcc77d1c46e8e3336cb142a50cee574f1aaaada8de277f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1037577664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebd5c570c2698230491c38e705d033238d6259a88b4c107721835dbebfbadf7`
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
# Fri, 09 Dec 2022 03:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e7e237e5e98050952834a63108508af18dc56f80e79f151d6e23365c99a55e22`  
		Last Modified: Fri, 09 Dec 2022 03:29:47 GMT  
		Size: 781.9 MB (781892167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:1ebf97c15fd45294f121ae4b7137ebc449d7308e4f656fab4afdb908df0d7c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:dee7f8de7713abb581224d04e37538b0df1fc802f012d853f5b53f4f8952f609
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1087296653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8730819807f2ca4cb7a9bef9a8494287a8866f8943f3fd2711978544066e684c`
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
# Fri, 09 Dec 2022 05:26:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:77396d594b91eee162d53cfe75987e4a5a192f340d8868ea15f137239061aceb`  
		Last Modified: Fri, 09 Dec 2022 05:41:49 GMT  
		Size: 824.3 MB (824288219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5adfc6f63ae7422664dcc77d1c46e8e3336cb142a50cee574f1aaaada8de277f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1037577664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebd5c570c2698230491c38e705d033238d6259a88b4c107721835dbebfbadf7`
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
# Fri, 09 Dec 2022 03:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e7e237e5e98050952834a63108508af18dc56f80e79f151d6e23365c99a55e22`  
		Last Modified: Fri, 09 Dec 2022 03:29:47 GMT  
		Size: 781.9 MB (781892167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:187938e57357e2e1180ada88ddeb89bd54c156e444d09a1d92442c804c1cdf96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:humble-ros-base` - linux; amd64

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

### `ros:humble-ros-base` - linux; arm64 variant v8

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

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:187938e57357e2e1180ada88ddeb89bd54c156e444d09a1d92442c804c1cdf96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:humble-ros-base-jammy` - linux; amd64

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

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

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

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:23aa104a31990bb6952f2836cbf431535ae53490d587a70b32e0ed94a9a4fd83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:humble-ros-core-jammy` - linux; amd64

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

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

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

## `ros:latest`

```console
$ docker pull ros@sha256:187938e57357e2e1180ada88ddeb89bd54c156e444d09a1d92442c804c1cdf96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

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

### `ros:latest` - linux; arm64 variant v8

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

## `ros:melodic`

```console
$ docker pull ros@sha256:31e92d2d4d50ed2d199bfee6b69f293d5513a418415b12a8933d6adad200bd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:ad6ab86691fb641d7f7a92eab1b053b61285b6830e0222126bc50c8705b8009b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 MB (437536836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252a3ee357104125111fc53e1b8c00f32d0d80d51902aecd72a1e8b0f600a3fa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:43:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:43:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:44:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac29b7d96e06aea858c4839b747ce24cdead5090ac4cbc159a1665024a8075`  
		Last Modified: Mon, 02 Jan 2023 19:50:40 GMT  
		Size: 70.3 MB (70259882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a3002239b5657171ecfa8535f7fbb9e70a1bfef647b3dbe7e11379f17a522e`  
		Last Modified: Mon, 02 Jan 2023 19:50:30 GMT  
		Size: 295.4 KB (295401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863674965fd6c9b834d4dd7181cbf8f7ec5920dcf7b41e013de90f899a17e66`  
		Last Modified: Mon, 02 Jan 2023 19:50:42 GMT  
		Size: 75.0 MB (75000596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:191e7f07e41528508765aafecc5d0d2bd9d72110e460b61d6e5adf1acd6941bf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (386015256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77429292133c94d0f985c5f0a0d78aeabddb6929c904f83ed2e984b8472396dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:45:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64769291d3532e8736fcd4c16b236a09b2140cbea18216ba06c9ce0ba0639e3c`  
		Last Modified: Mon, 02 Jan 2023 19:55:44 GMT  
		Size: 54.7 MB (54721716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed1496119e603c4fcafe93d2a3b4fc895a364a2dc534f169af72c1ed8434b2`  
		Last Modified: Mon, 02 Jan 2023 19:55:36 GMT  
		Size: 295.4 KB (295368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63061e8028bcc1e98d9dcbf1cc34fe1de2dd9613323b1c64b33eb332665ec54b`  
		Last Modified: Mon, 02 Jan 2023 19:55:48 GMT  
		Size: 64.7 MB (64749124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:730378725b44f6f77aa564ee5f0660a68d536b0d969a507553013ca5d0c911ea
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.2 MB (412182717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c266636cef1590d97fe88f26562c0c5d2c8fb3a42d0543067f8250ed3450aca2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:15:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696b36666c02cb2a3243a9e9becb3c3ae8db5f51223584aa6b167943cef93130`  
		Last Modified: Mon, 02 Jan 2023 19:25:03 GMT  
		Size: 63.1 MB (63090847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea68509f51ed5e73efb5341770ae1b0ab56c7f1e91229f1cb4efaabd49626`  
		Last Modified: Mon, 02 Jan 2023 19:24:56 GMT  
		Size: 295.4 KB (295400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95217e55e9f03b5d8b2e28314c837a4e535f2f861e6d06fc6c8dab8c806ed8d5`  
		Last Modified: Mon, 02 Jan 2023 19:25:04 GMT  
		Size: 67.2 MB (67235493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:83cf128355ed820483f7ff0d2a75c1dc88f7dde5e699140eff46dbd233436031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:bfd25dea5a39f11d0c5a278139f046a3e4fba5900bba7b6b01672caa397f0970
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **742.9 MB (742902192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f3cd5fd0c22cc6aea6ba9bae3a3495d15b473168849b94e81c5439d516f9a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:43:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:43:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:44:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:48:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac29b7d96e06aea858c4839b747ce24cdead5090ac4cbc159a1665024a8075`  
		Last Modified: Mon, 02 Jan 2023 19:50:40 GMT  
		Size: 70.3 MB (70259882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a3002239b5657171ecfa8535f7fbb9e70a1bfef647b3dbe7e11379f17a522e`  
		Last Modified: Mon, 02 Jan 2023 19:50:30 GMT  
		Size: 295.4 KB (295401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863674965fd6c9b834d4dd7181cbf8f7ec5920dcf7b41e013de90f899a17e66`  
		Last Modified: Mon, 02 Jan 2023 19:50:42 GMT  
		Size: 75.0 MB (75000596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65acf3741febe623c238ab0142a214279870b6a36de8f5cca614acece70ae927`  
		Last Modified: Mon, 02 Jan 2023 19:51:52 GMT  
		Size: 305.4 MB (305365356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:fccf14845055848227052a62ab4b3e10049a2768fd8bf96b6ee7adbb67d6ad18
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.1 MB (646050082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1d8d2539b163e827510cb359fae98865973e318b64b312fbb43fc3084abcfd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:45:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:53:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64769291d3532e8736fcd4c16b236a09b2140cbea18216ba06c9ce0ba0639e3c`  
		Last Modified: Mon, 02 Jan 2023 19:55:44 GMT  
		Size: 54.7 MB (54721716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed1496119e603c4fcafe93d2a3b4fc895a364a2dc534f169af72c1ed8434b2`  
		Last Modified: Mon, 02 Jan 2023 19:55:36 GMT  
		Size: 295.4 KB (295368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63061e8028bcc1e98d9dcbf1cc34fe1de2dd9613323b1c64b33eb332665ec54b`  
		Last Modified: Mon, 02 Jan 2023 19:55:48 GMT  
		Size: 64.7 MB (64749124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf0d11b3c4cf49d9eb857545232723b1f1b5f9c24edc1223f5331d2ceb3c028`  
		Last Modified: Mon, 02 Jan 2023 19:56:59 GMT  
		Size: 260.0 MB (260034826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b1893bceb17e53ee002fe37ff35f005db349ec45fdc0d90d7fbf14d02ecf8f7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **703.9 MB (703866447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30e561aed4cae4235a5636916576b990821bf8fb535c8a84a23e1aacead7228`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:15:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:22:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696b36666c02cb2a3243a9e9becb3c3ae8db5f51223584aa6b167943cef93130`  
		Last Modified: Mon, 02 Jan 2023 19:25:03 GMT  
		Size: 63.1 MB (63090847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea68509f51ed5e73efb5341770ae1b0ab56c7f1e91229f1cb4efaabd49626`  
		Last Modified: Mon, 02 Jan 2023 19:24:56 GMT  
		Size: 295.4 KB (295400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95217e55e9f03b5d8b2e28314c837a4e535f2f861e6d06fc6c8dab8c806ed8d5`  
		Last Modified: Mon, 02 Jan 2023 19:25:04 GMT  
		Size: 67.2 MB (67235493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf399f6a32f13dd1d4406d0c096add8564dc80e55ab47770f5f086ae2da552b`  
		Last Modified: Mon, 02 Jan 2023 19:25:59 GMT  
		Size: 291.7 MB (291683730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:83cf128355ed820483f7ff0d2a75c1dc88f7dde5e699140eff46dbd233436031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:bfd25dea5a39f11d0c5a278139f046a3e4fba5900bba7b6b01672caa397f0970
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **742.9 MB (742902192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f3cd5fd0c22cc6aea6ba9bae3a3495d15b473168849b94e81c5439d516f9a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:43:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:43:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:44:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:48:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac29b7d96e06aea858c4839b747ce24cdead5090ac4cbc159a1665024a8075`  
		Last Modified: Mon, 02 Jan 2023 19:50:40 GMT  
		Size: 70.3 MB (70259882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a3002239b5657171ecfa8535f7fbb9e70a1bfef647b3dbe7e11379f17a522e`  
		Last Modified: Mon, 02 Jan 2023 19:50:30 GMT  
		Size: 295.4 KB (295401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863674965fd6c9b834d4dd7181cbf8f7ec5920dcf7b41e013de90f899a17e66`  
		Last Modified: Mon, 02 Jan 2023 19:50:42 GMT  
		Size: 75.0 MB (75000596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65acf3741febe623c238ab0142a214279870b6a36de8f5cca614acece70ae927`  
		Last Modified: Mon, 02 Jan 2023 19:51:52 GMT  
		Size: 305.4 MB (305365356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:fccf14845055848227052a62ab4b3e10049a2768fd8bf96b6ee7adbb67d6ad18
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.1 MB (646050082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1d8d2539b163e827510cb359fae98865973e318b64b312fbb43fc3084abcfd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:45:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:53:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64769291d3532e8736fcd4c16b236a09b2140cbea18216ba06c9ce0ba0639e3c`  
		Last Modified: Mon, 02 Jan 2023 19:55:44 GMT  
		Size: 54.7 MB (54721716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed1496119e603c4fcafe93d2a3b4fc895a364a2dc534f169af72c1ed8434b2`  
		Last Modified: Mon, 02 Jan 2023 19:55:36 GMT  
		Size: 295.4 KB (295368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63061e8028bcc1e98d9dcbf1cc34fe1de2dd9613323b1c64b33eb332665ec54b`  
		Last Modified: Mon, 02 Jan 2023 19:55:48 GMT  
		Size: 64.7 MB (64749124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf0d11b3c4cf49d9eb857545232723b1f1b5f9c24edc1223f5331d2ceb3c028`  
		Last Modified: Mon, 02 Jan 2023 19:56:59 GMT  
		Size: 260.0 MB (260034826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b1893bceb17e53ee002fe37ff35f005db349ec45fdc0d90d7fbf14d02ecf8f7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **703.9 MB (703866447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30e561aed4cae4235a5636916576b990821bf8fb535c8a84a23e1aacead7228`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:15:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:22:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696b36666c02cb2a3243a9e9becb3c3ae8db5f51223584aa6b167943cef93130`  
		Last Modified: Mon, 02 Jan 2023 19:25:03 GMT  
		Size: 63.1 MB (63090847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea68509f51ed5e73efb5341770ae1b0ab56c7f1e91229f1cb4efaabd49626`  
		Last Modified: Mon, 02 Jan 2023 19:24:56 GMT  
		Size: 295.4 KB (295400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95217e55e9f03b5d8b2e28314c837a4e535f2f861e6d06fc6c8dab8c806ed8d5`  
		Last Modified: Mon, 02 Jan 2023 19:25:04 GMT  
		Size: 67.2 MB (67235493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf399f6a32f13dd1d4406d0c096add8564dc80e55ab47770f5f086ae2da552b`  
		Last Modified: Mon, 02 Jan 2023 19:25:59 GMT  
		Size: 291.7 MB (291683730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:2c3d55a84e39e146f2417a7468b6db75b9fcb47bea2904e9ef47a1994d539c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:fe9438257507a7f7d9746da7aab63ab8a4366a8f45efc818972c39c3652d211a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.6 MB (448622407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33921a2f8b2aebe15dd96c0996eac0e2705a964205ee4103151d9e59d3d5256`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:43:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:43:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:44:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac29b7d96e06aea858c4839b747ce24cdead5090ac4cbc159a1665024a8075`  
		Last Modified: Mon, 02 Jan 2023 19:50:40 GMT  
		Size: 70.3 MB (70259882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a3002239b5657171ecfa8535f7fbb9e70a1bfef647b3dbe7e11379f17a522e`  
		Last Modified: Mon, 02 Jan 2023 19:50:30 GMT  
		Size: 295.4 KB (295401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863674965fd6c9b834d4dd7181cbf8f7ec5920dcf7b41e013de90f899a17e66`  
		Last Modified: Mon, 02 Jan 2023 19:50:42 GMT  
		Size: 75.0 MB (75000596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca78b83d6b5d88594c8183b3a44f922a5f93164588b03d2903cb31cb600c0b8`  
		Last Modified: Mon, 02 Jan 2023 19:50:55 GMT  
		Size: 11.1 MB (11085571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:33ba7af8dd231049d33cd754d60838cd545d9920848ce17e7019a2813422eab9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.1 MB (396137516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4891ea5f069c725f67da1363a66d4b391a04d58128ae8ca5b68811a15dc1bf37`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:45:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:47:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64769291d3532e8736fcd4c16b236a09b2140cbea18216ba06c9ce0ba0639e3c`  
		Last Modified: Mon, 02 Jan 2023 19:55:44 GMT  
		Size: 54.7 MB (54721716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed1496119e603c4fcafe93d2a3b4fc895a364a2dc534f169af72c1ed8434b2`  
		Last Modified: Mon, 02 Jan 2023 19:55:36 GMT  
		Size: 295.4 KB (295368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63061e8028bcc1e98d9dcbf1cc34fe1de2dd9613323b1c64b33eb332665ec54b`  
		Last Modified: Mon, 02 Jan 2023 19:55:48 GMT  
		Size: 64.7 MB (64749124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc257a375d505f7276d1bafcf128b7d26213123f7cafdb58dae819395808a731`  
		Last Modified: Mon, 02 Jan 2023 19:56:04 GMT  
		Size: 10.1 MB (10122260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79ec66fb7dfa0cb5bb47643834e58967c595f41031e238a0a5a5094ed03903a5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.9 MB (422922545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690bd6d96d17714f14f468a648ae4497c995e659bd1bbc5d2d26130eef73f7ae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:15:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696b36666c02cb2a3243a9e9becb3c3ae8db5f51223584aa6b167943cef93130`  
		Last Modified: Mon, 02 Jan 2023 19:25:03 GMT  
		Size: 63.1 MB (63090847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea68509f51ed5e73efb5341770ae1b0ab56c7f1e91229f1cb4efaabd49626`  
		Last Modified: Mon, 02 Jan 2023 19:24:56 GMT  
		Size: 295.4 KB (295400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95217e55e9f03b5d8b2e28314c837a4e535f2f861e6d06fc6c8dab8c806ed8d5`  
		Last Modified: Mon, 02 Jan 2023 19:25:04 GMT  
		Size: 67.2 MB (67235493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced6b9ed9a88c4d708d7f519bee480e8d8a00f92833e08a39e02fc2795cb966`  
		Last Modified: Mon, 02 Jan 2023 19:25:17 GMT  
		Size: 10.7 MB (10739828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:2c3d55a84e39e146f2417a7468b6db75b9fcb47bea2904e9ef47a1994d539c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:fe9438257507a7f7d9746da7aab63ab8a4366a8f45efc818972c39c3652d211a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.6 MB (448622407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33921a2f8b2aebe15dd96c0996eac0e2705a964205ee4103151d9e59d3d5256`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:43:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:43:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:44:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac29b7d96e06aea858c4839b747ce24cdead5090ac4cbc159a1665024a8075`  
		Last Modified: Mon, 02 Jan 2023 19:50:40 GMT  
		Size: 70.3 MB (70259882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a3002239b5657171ecfa8535f7fbb9e70a1bfef647b3dbe7e11379f17a522e`  
		Last Modified: Mon, 02 Jan 2023 19:50:30 GMT  
		Size: 295.4 KB (295401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863674965fd6c9b834d4dd7181cbf8f7ec5920dcf7b41e013de90f899a17e66`  
		Last Modified: Mon, 02 Jan 2023 19:50:42 GMT  
		Size: 75.0 MB (75000596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca78b83d6b5d88594c8183b3a44f922a5f93164588b03d2903cb31cb600c0b8`  
		Last Modified: Mon, 02 Jan 2023 19:50:55 GMT  
		Size: 11.1 MB (11085571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:33ba7af8dd231049d33cd754d60838cd545d9920848ce17e7019a2813422eab9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.1 MB (396137516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4891ea5f069c725f67da1363a66d4b391a04d58128ae8ca5b68811a15dc1bf37`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:45:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:47:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64769291d3532e8736fcd4c16b236a09b2140cbea18216ba06c9ce0ba0639e3c`  
		Last Modified: Mon, 02 Jan 2023 19:55:44 GMT  
		Size: 54.7 MB (54721716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed1496119e603c4fcafe93d2a3b4fc895a364a2dc534f169af72c1ed8434b2`  
		Last Modified: Mon, 02 Jan 2023 19:55:36 GMT  
		Size: 295.4 KB (295368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63061e8028bcc1e98d9dcbf1cc34fe1de2dd9613323b1c64b33eb332665ec54b`  
		Last Modified: Mon, 02 Jan 2023 19:55:48 GMT  
		Size: 64.7 MB (64749124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc257a375d505f7276d1bafcf128b7d26213123f7cafdb58dae819395808a731`  
		Last Modified: Mon, 02 Jan 2023 19:56:04 GMT  
		Size: 10.1 MB (10122260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79ec66fb7dfa0cb5bb47643834e58967c595f41031e238a0a5a5094ed03903a5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.9 MB (422922545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690bd6d96d17714f14f468a648ae4497c995e659bd1bbc5d2d26130eef73f7ae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:15:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696b36666c02cb2a3243a9e9becb3c3ae8db5f51223584aa6b167943cef93130`  
		Last Modified: Mon, 02 Jan 2023 19:25:03 GMT  
		Size: 63.1 MB (63090847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea68509f51ed5e73efb5341770ae1b0ab56c7f1e91229f1cb4efaabd49626`  
		Last Modified: Mon, 02 Jan 2023 19:24:56 GMT  
		Size: 295.4 KB (295400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95217e55e9f03b5d8b2e28314c837a4e535f2f861e6d06fc6c8dab8c806ed8d5`  
		Last Modified: Mon, 02 Jan 2023 19:25:04 GMT  
		Size: 67.2 MB (67235493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced6b9ed9a88c4d708d7f519bee480e8d8a00f92833e08a39e02fc2795cb966`  
		Last Modified: Mon, 02 Jan 2023 19:25:17 GMT  
		Size: 10.7 MB (10739828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:31e92d2d4d50ed2d199bfee6b69f293d5513a418415b12a8933d6adad200bd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ad6ab86691fb641d7f7a92eab1b053b61285b6830e0222126bc50c8705b8009b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 MB (437536836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252a3ee357104125111fc53e1b8c00f32d0d80d51902aecd72a1e8b0f600a3fa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:43:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:43:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:44:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac29b7d96e06aea858c4839b747ce24cdead5090ac4cbc159a1665024a8075`  
		Last Modified: Mon, 02 Jan 2023 19:50:40 GMT  
		Size: 70.3 MB (70259882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a3002239b5657171ecfa8535f7fbb9e70a1bfef647b3dbe7e11379f17a522e`  
		Last Modified: Mon, 02 Jan 2023 19:50:30 GMT  
		Size: 295.4 KB (295401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863674965fd6c9b834d4dd7181cbf8f7ec5920dcf7b41e013de90f899a17e66`  
		Last Modified: Mon, 02 Jan 2023 19:50:42 GMT  
		Size: 75.0 MB (75000596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:191e7f07e41528508765aafecc5d0d2bd9d72110e460b61d6e5adf1acd6941bf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (386015256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77429292133c94d0f985c5f0a0d78aeabddb6929c904f83ed2e984b8472396dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:45:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64769291d3532e8736fcd4c16b236a09b2140cbea18216ba06c9ce0ba0639e3c`  
		Last Modified: Mon, 02 Jan 2023 19:55:44 GMT  
		Size: 54.7 MB (54721716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed1496119e603c4fcafe93d2a3b4fc895a364a2dc534f169af72c1ed8434b2`  
		Last Modified: Mon, 02 Jan 2023 19:55:36 GMT  
		Size: 295.4 KB (295368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63061e8028bcc1e98d9dcbf1cc34fe1de2dd9613323b1c64b33eb332665ec54b`  
		Last Modified: Mon, 02 Jan 2023 19:55:48 GMT  
		Size: 64.7 MB (64749124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:730378725b44f6f77aa564ee5f0660a68d536b0d969a507553013ca5d0c911ea
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.2 MB (412182717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c266636cef1590d97fe88f26562c0c5d2c8fb3a42d0543067f8250ed3450aca2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:15:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696b36666c02cb2a3243a9e9becb3c3ae8db5f51223584aa6b167943cef93130`  
		Last Modified: Mon, 02 Jan 2023 19:25:03 GMT  
		Size: 63.1 MB (63090847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea68509f51ed5e73efb5341770ae1b0ab56c7f1e91229f1cb4efaabd49626`  
		Last Modified: Mon, 02 Jan 2023 19:24:56 GMT  
		Size: 295.4 KB (295400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95217e55e9f03b5d8b2e28314c837a4e535f2f861e6d06fc6c8dab8c806ed8d5`  
		Last Modified: Mon, 02 Jan 2023 19:25:04 GMT  
		Size: 67.2 MB (67235493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:31e92d2d4d50ed2d199bfee6b69f293d5513a418415b12a8933d6adad200bd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:ad6ab86691fb641d7f7a92eab1b053b61285b6830e0222126bc50c8705b8009b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 MB (437536836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252a3ee357104125111fc53e1b8c00f32d0d80d51902aecd72a1e8b0f600a3fa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:43:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:43:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:44:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac29b7d96e06aea858c4839b747ce24cdead5090ac4cbc159a1665024a8075`  
		Last Modified: Mon, 02 Jan 2023 19:50:40 GMT  
		Size: 70.3 MB (70259882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a3002239b5657171ecfa8535f7fbb9e70a1bfef647b3dbe7e11379f17a522e`  
		Last Modified: Mon, 02 Jan 2023 19:50:30 GMT  
		Size: 295.4 KB (295401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863674965fd6c9b834d4dd7181cbf8f7ec5920dcf7b41e013de90f899a17e66`  
		Last Modified: Mon, 02 Jan 2023 19:50:42 GMT  
		Size: 75.0 MB (75000596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:191e7f07e41528508765aafecc5d0d2bd9d72110e460b61d6e5adf1acd6941bf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.0 MB (386015256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77429292133c94d0f985c5f0a0d78aeabddb6929c904f83ed2e984b8472396dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:45:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64769291d3532e8736fcd4c16b236a09b2140cbea18216ba06c9ce0ba0639e3c`  
		Last Modified: Mon, 02 Jan 2023 19:55:44 GMT  
		Size: 54.7 MB (54721716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed1496119e603c4fcafe93d2a3b4fc895a364a2dc534f169af72c1ed8434b2`  
		Last Modified: Mon, 02 Jan 2023 19:55:36 GMT  
		Size: 295.4 KB (295368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63061e8028bcc1e98d9dcbf1cc34fe1de2dd9613323b1c64b33eb332665ec54b`  
		Last Modified: Mon, 02 Jan 2023 19:55:48 GMT  
		Size: 64.7 MB (64749124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:730378725b44f6f77aa564ee5f0660a68d536b0d969a507553013ca5d0c911ea
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.2 MB (412182717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c266636cef1590d97fe88f26562c0c5d2c8fb3a42d0543067f8250ed3450aca2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:15:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696b36666c02cb2a3243a9e9becb3c3ae8db5f51223584aa6b167943cef93130`  
		Last Modified: Mon, 02 Jan 2023 19:25:03 GMT  
		Size: 63.1 MB (63090847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea68509f51ed5e73efb5341770ae1b0ab56c7f1e91229f1cb4efaabd49626`  
		Last Modified: Mon, 02 Jan 2023 19:24:56 GMT  
		Size: 295.4 KB (295400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95217e55e9f03b5d8b2e28314c837a4e535f2f861e6d06fc6c8dab8c806ed8d5`  
		Last Modified: Mon, 02 Jan 2023 19:25:04 GMT  
		Size: 67.2 MB (67235493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:6c1ba7c02f9cf3449bda2a9ac14d05d7557d0be4c15cd4d0432d991165a194a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:b4d1e706615b2034dc1e485709301c8188e3393861a037942964b9c911e4eb4c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291980957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f84f679baf852790c8573601493573517bfe80e16afd11af1e3d71008033855`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:563f37c1a9ead3fac2f6f5b8918dc8d74886262a8bc025f10083f851b8862f81
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266249048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1fb2db90276f479d547a6d7db0abbf6dfe3cc1469b42ef0a8aa4ed01403d9d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1334d2886a2e7005e0daedf695bc17ecaae25031da322b7a6d466e5ca06e2b34
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.6 MB (281560977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea8deecad7dff30892dc1a355b1550f22bb8b94192512f4cfad4c41254b95b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:6c1ba7c02f9cf3449bda2a9ac14d05d7557d0be4c15cd4d0432d991165a194a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:b4d1e706615b2034dc1e485709301c8188e3393861a037942964b9c911e4eb4c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291980957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f84f679baf852790c8573601493573517bfe80e16afd11af1e3d71008033855`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:563f37c1a9ead3fac2f6f5b8918dc8d74886262a8bc025f10083f851b8862f81
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266249048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1fb2db90276f479d547a6d7db0abbf6dfe3cc1469b42ef0a8aa4ed01403d9d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1334d2886a2e7005e0daedf695bc17ecaae25031da322b7a6d466e5ca06e2b34
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.6 MB (281560977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea8deecad7dff30892dc1a355b1550f22bb8b94192512f4cfad4c41254b95b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `ros:noetic-perception`

```console
$ docker pull ros@sha256:58a5e4ad3653a0172cddef33291208880846e308f6a57f888a7d69314963b3b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:13a262fe4ad9b7eecbf07f72d23bf6e3533f80f740db8119c60012489fd6578e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **835.2 MB (835158418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5eb91c9d23e4e2d7a025882ee7d889a3f99c2f1250de3d837d04b3b0adb79c3`
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
# Fri, 09 Dec 2022 05:08:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-perception=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f91b6364b9e818d3f74dc15ed73bb714a5bea9ab335cf0f3b4e2e85a1cb3c2cd`  
		Last Modified: Fri, 09 Dec 2022 05:36:43 GMT  
		Size: 492.0 MB (491971438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:520ff71d2a8a35cc0c565ff82fc564b58d13e7f5f099c0302b5243e95f447823
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **726.2 MB (726209263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d457b04355d08d9fa7ef46650e64d513dd3a5763ccfdd54823f95f7297fd189f`
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
# Fri, 09 Dec 2022 02:25:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-perception=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:37339769e11ac31ece1d77df7f19d17aeb6624d5bd44589ca9a6374746db2f2f`  
		Last Modified: Fri, 09 Dec 2022 02:31:28 GMT  
		Size: 436.9 MB (436925657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed52e1bb062b123ab7c64f6ad962a25ab6e4c138337b707eab85cdc1525ef160
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **785.4 MB (785417179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1871809c1e31ff48cf9511a71cc2ef20040807731e7a205293035d00fcdeea5`
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
# Fri, 09 Dec 2022 02:56:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-perception=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:15d74ac54536fb2ed71dadda185aa38ce4d1a74891ed97ddffc772b9dd24eeba`  
		Last Modified: Fri, 09 Dec 2022 03:25:05 GMT  
		Size: 462.6 MB (462567124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:noetic-perception-buster`

```console
$ docker pull ros@sha256:cfb2234b12bb76cbadb74687c0718438804735a60435ceacc499a6cb0be4b5b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:noetic-perception-buster` - linux; amd64

```console
$ docker pull ros@sha256:2bbf63fcb0a536fe0321fd0d52e31ae875519aa7c26cf0c4b24fe3b51016dacc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **951.3 MB (951257321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc241f6d9ea5863f7dc4fd6368d9216be675f4bc3738ac1ceeab7d5949504172`
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
# Wed, 11 Jan 2023 17:27:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-perception=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d024f555c23852eec4a9199341ab63f70668805556a7224b888ef03b3696eba1`  
		Last Modified: Wed, 11 Jan 2023 17:31:20 GMT  
		Size: 487.7 MB (487740866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-perception-buster` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bcac92ef066c85908f8a9fece35dab503c63f5b3df4bd5f70caefe2a9c868287
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.1 MB (868065908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861356b5105a3440f60a6cca1d4e1f230d2351ffdc079879d5f6cf1792a3b1ee`
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
# Wed, 11 Jan 2023 13:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-perception=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:949de7bcc3313de93f2e1915d5d566944cd640f29c93c1112baa9f8e6cab0cb4`  
		Last Modified: Wed, 11 Jan 2023 14:02:42 GMT  
		Size: 464.7 MB (464668390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:noetic-perception-focal`

```console
$ docker pull ros@sha256:58a5e4ad3653a0172cddef33291208880846e308f6a57f888a7d69314963b3b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic-perception-focal` - linux; amd64

```console
$ docker pull ros@sha256:13a262fe4ad9b7eecbf07f72d23bf6e3533f80f740db8119c60012489fd6578e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **835.2 MB (835158418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5eb91c9d23e4e2d7a025882ee7d889a3f99c2f1250de3d837d04b3b0adb79c3`
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
# Fri, 09 Dec 2022 05:08:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-perception=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f91b6364b9e818d3f74dc15ed73bb714a5bea9ab335cf0f3b4e2e85a1cb3c2cd`  
		Last Modified: Fri, 09 Dec 2022 05:36:43 GMT  
		Size: 492.0 MB (491971438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-perception-focal` - linux; arm variant v7

```console
$ docker pull ros@sha256:520ff71d2a8a35cc0c565ff82fc564b58d13e7f5f099c0302b5243e95f447823
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **726.2 MB (726209263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d457b04355d08d9fa7ef46650e64d513dd3a5763ccfdd54823f95f7297fd189f`
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
# Fri, 09 Dec 2022 02:25:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-perception=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:37339769e11ac31ece1d77df7f19d17aeb6624d5bd44589ca9a6374746db2f2f`  
		Last Modified: Fri, 09 Dec 2022 02:31:28 GMT  
		Size: 436.9 MB (436925657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-perception-focal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed52e1bb062b123ab7c64f6ad962a25ab6e4c138337b707eab85cdc1525ef160
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **785.4 MB (785417179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1871809c1e31ff48cf9511a71cc2ef20040807731e7a205293035d00fcdeea5`
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
# Fri, 09 Dec 2022 02:56:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-perception=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:15d74ac54536fb2ed71dadda185aa38ce4d1a74891ed97ddffc772b9dd24eeba`  
		Last Modified: Fri, 09 Dec 2022 03:25:05 GMT  
		Size: 462.6 MB (462567124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:noetic-robot`

```console
$ docker pull ros@sha256:e778953aab40194b3c7a839dc6dca42023b338da8558ed2223e3c44d5b7d3d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:4a867faa225107832dcbaf4f210beaa5229a4bcc336abe610f6726bbda4c2fba
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (359048413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63508127062f573c37425c58e540f921efc290d9976a6a02cce0ffcfb9cfcd0`
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
# Fri, 09 Dec 2022 05:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-robot=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:75203dd5727607450789d9c86ce7b90133f512b8f2a7a39c19120bae4931f4c0`  
		Last Modified: Fri, 09 Dec 2022 05:35:22 GMT  
		Size: 15.9 MB (15861433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:f956e93ab3e441651029de6488a2f211fca560ca4461980e7ab44d9719faad01
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303352775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bfdcfd1abdf0a65219142665077fef9720639a94b71cef480aef71ff7338d7`
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
# Fri, 09 Dec 2022 02:17:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-robot=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6f876436b511f8e7f61400d5abfb73b73dee9560a922a80dca1f666b7a8dca5b`  
		Last Modified: Fri, 09 Dec 2022 02:30:04 GMT  
		Size: 14.1 MB (14069169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:733437852e3d9b267e4cb0a721d6b8923d9ecf800aabd0310885adf118a7d205
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338303759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97943316580e70b670f1108be9026204396071e451d89e1aabb54e1e8c3652d6`
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
# Fri, 09 Dec 2022 02:49:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-robot=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e79075bc5b2a2e2ec7f838ff2c41866bc858d90f35ba8cb4dd3a83b3b1a73cb3`  
		Last Modified: Fri, 09 Dec 2022 03:23:59 GMT  
		Size: 15.5 MB (15453704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `ros:noetic-robot-focal`

```console
$ docker pull ros@sha256:e778953aab40194b3c7a839dc6dca42023b338da8558ed2223e3c44d5b7d3d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic-robot-focal` - linux; amd64

```console
$ docker pull ros@sha256:4a867faa225107832dcbaf4f210beaa5229a4bcc336abe610f6726bbda4c2fba
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (359048413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63508127062f573c37425c58e540f921efc290d9976a6a02cce0ffcfb9cfcd0`
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
# Fri, 09 Dec 2022 05:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-robot=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:75203dd5727607450789d9c86ce7b90133f512b8f2a7a39c19120bae4931f4c0`  
		Last Modified: Fri, 09 Dec 2022 05:35:22 GMT  
		Size: 15.9 MB (15861433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-robot-focal` - linux; arm variant v7

```console
$ docker pull ros@sha256:f956e93ab3e441651029de6488a2f211fca560ca4461980e7ab44d9719faad01
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303352775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bfdcfd1abdf0a65219142665077fef9720639a94b71cef480aef71ff7338d7`
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
# Fri, 09 Dec 2022 02:17:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-robot=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6f876436b511f8e7f61400d5abfb73b73dee9560a922a80dca1f666b7a8dca5b`  
		Last Modified: Fri, 09 Dec 2022 02:30:04 GMT  
		Size: 14.1 MB (14069169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:noetic-robot-focal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:733437852e3d9b267e4cb0a721d6b8923d9ecf800aabd0310885adf118a7d205
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338303759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97943316580e70b670f1108be9026204396071e451d89e1aabb54e1e8c3652d6`
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
# Fri, 09 Dec 2022 02:49:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-noetic-robot=1.5.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e79075bc5b2a2e2ec7f838ff2c41866bc858d90f35ba8cb4dd3a83b3b1a73cb3`  
		Last Modified: Fri, 09 Dec 2022 03:23:59 GMT  
		Size: 15.5 MB (15453704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:noetic-ros-base`

```console
$ docker pull ros@sha256:05aab2a99ce2a82114702ab96fad303931550f526d653ac46fc77160e779f287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic-ros-base` - linux; amd64

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

### `ros:noetic-ros-base` - linux; arm variant v7

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

### `ros:noetic-ros-base` - linux; arm64 variant v8

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

## `ros:noetic-ros-base-buster`

```console
$ docker pull ros@sha256:c32c5e5a412b959c80c3d4a2b6bf0cb8356bacd40b0ee7f9ae450a7aad164e2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:noetic-ros-base-buster` - linux; amd64

```console
$ docker pull ros@sha256:564cdfda639887e31fec57bae2734ed4ca6edd85f0054def62cbd6f1964bc6ea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.5 MB (463516455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693bd5ab9e449d41ae5e16846dd16c7226738f20b7635fd51209f2882164f972`
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

### `ros:noetic-ros-base-buster` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0e66a5cf77aca824b7f0db0cd9163dc5c9a7cb258e9a66cfdb16e54c4f82a860
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.4 MB (403397518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec15651108ade29b3d7ce5d9cb4be9a422a29bc16be37bb01990a27cb312d2e3`
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

## `ros:noetic-ros-base-focal`

```console
$ docker pull ros@sha256:05aab2a99ce2a82114702ab96fad303931550f526d653ac46fc77160e779f287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic-ros-base-focal` - linux; amd64

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

### `ros:noetic-ros-base-focal` - linux; arm variant v7

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

### `ros:noetic-ros-base-focal` - linux; arm64 variant v8

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

## `ros:noetic-ros-core`

```console
$ docker pull ros@sha256:599a2ddce1c0eb6318a075538c3d4a61b53ba3be8c15a5ff87ddf2602b675439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:noetic-ros-core` - linux; amd64

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

### `ros:noetic-ros-core` - linux; arm variant v7

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

### `ros:noetic-ros-core` - linux; arm64 variant v8

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

## `ros:noetic-ros-core-buster`

```console
$ docker pull ros@sha256:ef9670b73adcd49aa2a0e443d0643c777a536be8b167e2f45358709bf6ba72a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:noetic-ros-core-buster` - linux; amd64

```console
$ docker pull ros@sha256:0627afffdd96ccd98e27b538a11d28be390a0d4d8f2eb6365fd7bd23c0cab9d1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300599769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391ea350e41a79a7b58f2a337e94f0841edfd97ffcc436accc4a1a383cc9e2c6`
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

### `ros:noetic-ros-core-buster` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e56bbe844db24cf408a7c6ee90571bc74584a7baa016bbc9ff6a2109d7cf730e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244579296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8907588539207f0ceba27caae7e6008512e905da435233d779efb50f3e483ec5`
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

## `ros:rolling`

```console
$ docker pull ros@sha256:598b008cacac6743996ece646095ea7bc541df9e59f596bf6e31d61721a17e71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:rolling` - linux; amd64

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

### `ros:rolling` - linux; arm64 variant v8

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

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:4dc057de9e1075632ddba4424246ef4921cea5052b385c15c66da7641122c032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:a24fd21c5027a73b0ca1d27c163ad7d5f6e37faea2a0a65c3f3917851b7eedb3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1088316164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0caa66eb605e44275849733a1a3e986bd1b0737e8629088a506bee1c439b8bd1`
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
# Fri, 09 Dec 2022 05:31:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7d4b9e5f0e6c2004cb5135d05f94dc4f4648ccccf27eb77a88f2706296983b05`  
		Last Modified: Fri, 09 Dec 2022 05:44:27 GMT  
		Size: 825.0 MB (824996906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fef5927e379964199e83e917a85176bc94b3cb9adb5277a64a81ca9f2656c926
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1038518525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320e65ea95fd2bd91317d473ccc97ec9a6c63210c7678a1209fea2e27468c6e5`
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
# Fri, 09 Dec 2022 03:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f51b998f8d6119899a34eade97d8511b9d337281b6d8f454813c6a4d5240f278`  
		Last Modified: Fri, 09 Dec 2022 03:32:06 GMT  
		Size: 782.5 MB (782542737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:rolling-perception-jammy`

```console
$ docker pull ros@sha256:4dc057de9e1075632ddba4424246ef4921cea5052b385c15c66da7641122c032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:rolling-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:a24fd21c5027a73b0ca1d27c163ad7d5f6e37faea2a0a65c3f3917851b7eedb3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1088316164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0caa66eb605e44275849733a1a3e986bd1b0737e8629088a506bee1c439b8bd1`
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
# Fri, 09 Dec 2022 05:31:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7d4b9e5f0e6c2004cb5135d05f94dc4f4648ccccf27eb77a88f2706296983b05`  
		Last Modified: Fri, 09 Dec 2022 05:44:27 GMT  
		Size: 825.0 MB (824996906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:rolling-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fef5927e379964199e83e917a85176bc94b3cb9adb5277a64a81ca9f2656c926
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1038518525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320e65ea95fd2bd91317d473ccc97ec9a6c63210c7678a1209fea2e27468c6e5`
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
# Fri, 09 Dec 2022 03:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f51b998f8d6119899a34eade97d8511b9d337281b6d8f454813c6a4d5240f278`  
		Last Modified: Fri, 09 Dec 2022 03:32:06 GMT  
		Size: 782.5 MB (782542737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `ros:rolling-ros-base-jammy`

```console
$ docker pull ros@sha256:598b008cacac6743996ece646095ea7bc541df9e59f596bf6e31d61721a17e71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:rolling-ros-base-jammy` - linux; amd64

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

### `ros:rolling-ros-base-jammy` - linux; arm64 variant v8

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

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:dac2e84421d0fd0d48d107cadec0db3d8504a762e5a2a455b0b798eec9c0562a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:065c6be832bf0f49c7b8b475722ca3b6c0f9cbd8f2142a0f5089b56c98aedc08
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154892497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02bb72a5aef4c2d62f39624f29108632e9837e9332fdeece0ad4aa4bb880e56`
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

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:652e31d47b489d44081f76e2409317b82cf33ad3d68e715f631364a42cbd652c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150415273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d2eec9d0c6bc0257b7929016428ad9fb51fc2b8069dcbc790e784604ec876c`
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

## `ros:rolling-ros-core-jammy`

```console
$ docker pull ros@sha256:dac2e84421d0fd0d48d107cadec0db3d8504a762e5a2a455b0b798eec9c0562a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:rolling-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:065c6be832bf0f49c7b8b475722ca3b6c0f9cbd8f2142a0f5089b56c98aedc08
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154892497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02bb72a5aef4c2d62f39624f29108632e9837e9332fdeece0ad4aa4bb880e56`
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

### `ros:rolling-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:652e31d47b489d44081f76e2409317b82cf33ad3d68e715f631364a42cbd652c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150415273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d2eec9d0c6bc0257b7929016428ad9fb51fc2b8069dcbc790e784604ec876c`
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
