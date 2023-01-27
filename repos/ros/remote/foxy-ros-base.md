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
