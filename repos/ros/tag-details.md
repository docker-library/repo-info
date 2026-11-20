<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:humble`](#roshumble)
-	[`ros:humble-perception`](#roshumble-perception)
-	[`ros:humble-perception-jammy`](#roshumble-perception-jammy)
-	[`ros:humble-ros-base`](#roshumble-ros-base)
-	[`ros:humble-ros-base-jammy`](#roshumble-ros-base-jammy)
-	[`ros:humble-ros-core`](#roshumble-ros-core)
-	[`ros:humble-ros-core-jammy`](#roshumble-ros-core-jammy)
-	[`ros:jazzy`](#rosjazzy)
-	[`ros:jazzy-perception`](#rosjazzy-perception)
-	[`ros:jazzy-perception-noble`](#rosjazzy-perception-noble)
-	[`ros:jazzy-ros-base`](#rosjazzy-ros-base)
-	[`ros:jazzy-ros-base-noble`](#rosjazzy-ros-base-noble)
-	[`ros:jazzy-ros-core`](#rosjazzy-ros-core)
-	[`ros:jazzy-ros-core-noble`](#rosjazzy-ros-core-noble)
-	[`ros:kilted`](#roskilted)
-	[`ros:kilted-perception`](#roskilted-perception)
-	[`ros:kilted-perception-noble`](#roskilted-perception-noble)
-	[`ros:kilted-ros-base`](#roskilted-ros-base)
-	[`ros:kilted-ros-base-noble`](#roskilted-ros-base-noble)
-	[`ros:kilted-ros-core`](#roskilted-ros-core)
-	[`ros:kilted-ros-core-noble`](#roskilted-ros-core-noble)
-	[`ros:latest`](#roslatest)
-	[`ros:lyrical`](#roslyrical)
-	[`ros:lyrical-perception`](#roslyrical-perception)
-	[`ros:lyrical-perception-resolute`](#roslyrical-perception-resolute)
-	[`ros:lyrical-ros-base`](#roslyrical-ros-base)
-	[`ros:lyrical-ros-base-resolute`](#roslyrical-ros-base-resolute)
-	[`ros:lyrical-ros-core`](#roslyrical-ros-core)
-	[`ros:lyrical-ros-core-resolute`](#roslyrical-ros-core-resolute)
-	[`ros:rolling`](#rosrolling)
-	[`ros:rolling-perception`](#rosrolling-perception)
-	[`ros:rolling-perception-resolute`](#rosrolling-perception-resolute)
-	[`ros:rolling-ros-base`](#rosrolling-ros-base)
-	[`ros:rolling-ros-base-resolute`](#rosrolling-ros-base-resolute)
-	[`ros:rolling-ros-core`](#rosrolling-ros-core)
-	[`ros:rolling-ros-core-resolute`](#rosrolling-ros-core-resolute)

## `ros:humble`

```console
$ docker pull ros@sha256:a18afd4a42ad603579d03b9012385dfeaf2e848423f0a6c41699766e7849c86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:82a392264742a757c697c11b2ec9967dc856f60c87bd14fe2e889b0b767bf1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264530282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d9cac9ed967fbd5501f93c2e52b595be2cd85e4a54a0d1f0058bf7648d6da19`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:25:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:49 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:25:52 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3257cabf06cf30d395b4a38e05128ad640a008a99fdfed4e68fa6f0923a3afb`  
		Last Modified: Fri, 20 Nov 2026 04:26:44 GMT  
		Size: 98.2 MB (98203761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac52be0be6cf37cc0544d25164d9870d7d13636b0d4d70933c2432a88db141`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d99732c3880ef3ea76acf0a6dce879efbe26c711f0ded6136cfa948b970341`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952b68e3c377a9c17e47d38599fbc87e34b2eb45eefb8a610853f2cac29dfbd9`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 23.4 MB (23351795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:5da75b28d3696604347a713be9bfa7f747643840011c97481209e6b13dba2f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a14889b53f8098ffd0faf34952a15cc10f04a44821ebcf57f5625b43b6047b`

```dockerfile
```

-	Layers:
	-	`sha256:dc5422c6d624b8d37be6790a406dd245a5f31b3b300d3d0f9a45bd527714bf76`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 24.0 MB (23958532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd7c49e2bd6255472c5852a3a6afe977a92b025e9571b256499b9142906998a9`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fe235b3680bd63d264d3ddb3db1b23f7022b42a9039859d95c56ec52ed79c822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad7f405e3f4c000eb5de1d453e03d6e3e2f05b60c03d2a0afa5f25a7ba9b9c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:11 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:14 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c987541f301a4fccd4118557c226fb3e7a0afac3e38cfa3293a2fdd0e3546b5`  
		Last Modified: Fri, 20 Nov 2026 04:28:40 GMT  
		Size: 95.8 MB (95836274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56854e61de360c6311d10f4cff9766872461e320e8d3826f0d0c7509ea97226c`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68402d72855c9c5e5b830a2e4a3c355cdec5e4eced5d9c0302868b0b269efb88`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 2.7 KB (2703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6eed580638228b36f38eefe2ae8b7eb637743e16553e3e0266ff22d801ef7d2`  
		Last Modified: Fri, 20 Nov 2026 04:28:39 GMT  
		Size: 22.8 MB (22754820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:6ea61d2ba0fe1b77218e97de3fd634660dcc695fcb66dbf2f0597a5c4c2dd977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23988034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad4c051e1767720bb0bce2738ddc01258bf63ee29adc4d044badc2c71a6e94d`

```dockerfile
```

-	Layers:
	-	`sha256:91dec6c74be795e375612a92b5ac04547cfbfa4d57ca049a8a56f68259c8423f`  
		Last Modified: Fri, 20 Nov 2026 04:28:38 GMT  
		Size: 24.0 MB (23971549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecdd7e316c99b9a406e9d17fcc0a0102ffb99699f45984745c159d2008218547`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:cbeab056679233ed17b26f3d3cdd61bef289cd161dce02c5ed43d82eef27da85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:987d7fb655e40173748583ccc043cf49df184dc44d61539cd849cd211ccbda55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.8 MB (956756636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7440fe3bfbd04c833e4623d9aaf05cdbfe69743a991817b0293287d4ea787f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:25:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:49 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:25:52 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3257cabf06cf30d395b4a38e05128ad640a008a99fdfed4e68fa6f0923a3afb`  
		Last Modified: Fri, 20 Nov 2026 04:26:44 GMT  
		Size: 98.2 MB (98203761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac52be0be6cf37cc0544d25164d9870d7d13636b0d4d70933c2432a88db141`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d99732c3880ef3ea76acf0a6dce879efbe26c711f0ded6136cfa948b970341`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952b68e3c377a9c17e47d38599fbc87e34b2eb45eefb8a610853f2cac29dfbd9`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 23.4 MB (23351795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0483c9691549ff96592aabbf8a0e9874b34eeacac18472ff4cc0246b016e0c`  
		Last Modified: Fri, 20 Nov 2026 05:18:56 GMT  
		Size: 692.2 MB (692226354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:2f3cf1421f44e35d64d5177a59c28d9112dbf78190146f28fa0d984ad4edb2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94db52644573cacb5993e9fd097b77aef6633219798537960b6ba4282e0e4800`

```dockerfile
```

-	Layers:
	-	`sha256:f51c4a77c717122ac0b459cd9369d1af486e44d29a99ebab0d0b9ac7afd3619e`  
		Last Modified: Fri, 20 Nov 2026 05:18:44 GMT  
		Size: 59.1 MB (59063445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e687fb851e4e4f783a3b1b601ce2d63d36480f3ae2b5f7a9d93894c264edc2e4`  
		Last Modified: Fri, 20 Nov 2026 05:18:42 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f46990e5efcbc868526525142a6a5dad7efb1ce3633404d54ac0967cb0e90bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.5 MB (917482787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adce7b07d5abd15e665225b1e185d4a11f961693781a5cd3f63130b7dc455ecc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:11 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:14 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c987541f301a4fccd4118557c226fb3e7a0afac3e38cfa3293a2fdd0e3546b5`  
		Last Modified: Fri, 20 Nov 2026 04:28:40 GMT  
		Size: 95.8 MB (95836274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56854e61de360c6311d10f4cff9766872461e320e8d3826f0d0c7509ea97226c`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68402d72855c9c5e5b830a2e4a3c355cdec5e4eced5d9c0302868b0b269efb88`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 2.7 KB (2703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6eed580638228b36f38eefe2ae8b7eb637743e16553e3e0266ff22d801ef7d2`  
		Last Modified: Fri, 20 Nov 2026 04:28:39 GMT  
		Size: 22.8 MB (22754820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20c3a6ee3f28e018dc62deffc03b374524baf6e859cb1ec32aebcb01c2ae018`  
		Last Modified: Fri, 20 Nov 2026 05:25:00 GMT  
		Size: 660.2 MB (660216510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:d37a26d620d344132197e3b24c41406836218395e7ece608d932cc26c3a7df0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59057201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6c9f748c25543a7209ead9447c6d5b01942bb8788c280f0c762d35220ffefd`

```dockerfile
```

-	Layers:
	-	`sha256:4e4a625e7ba8e2e3c7fe680a4a0c636a74dce1709f713b498d90dd70a6c4560c`  
		Last Modified: Fri, 20 Nov 2026 05:24:51 GMT  
		Size: 59.0 MB (59047770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2fadfc4bb5f2674b946490338aca5542f4124b6aa6a6078f7a56a2531b87061`  
		Last Modified: Fri, 20 Nov 2026 05:24:48 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:cbeab056679233ed17b26f3d3cdd61bef289cd161dce02c5ed43d82eef27da85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:987d7fb655e40173748583ccc043cf49df184dc44d61539cd849cd211ccbda55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.8 MB (956756636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7440fe3bfbd04c833e4623d9aaf05cdbfe69743a991817b0293287d4ea787f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:25:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:49 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:25:52 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3257cabf06cf30d395b4a38e05128ad640a008a99fdfed4e68fa6f0923a3afb`  
		Last Modified: Fri, 20 Nov 2026 04:26:44 GMT  
		Size: 98.2 MB (98203761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac52be0be6cf37cc0544d25164d9870d7d13636b0d4d70933c2432a88db141`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d99732c3880ef3ea76acf0a6dce879efbe26c711f0ded6136cfa948b970341`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952b68e3c377a9c17e47d38599fbc87e34b2eb45eefb8a610853f2cac29dfbd9`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 23.4 MB (23351795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0483c9691549ff96592aabbf8a0e9874b34eeacac18472ff4cc0246b016e0c`  
		Last Modified: Fri, 20 Nov 2026 05:18:56 GMT  
		Size: 692.2 MB (692226354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:2f3cf1421f44e35d64d5177a59c28d9112dbf78190146f28fa0d984ad4edb2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94db52644573cacb5993e9fd097b77aef6633219798537960b6ba4282e0e4800`

```dockerfile
```

-	Layers:
	-	`sha256:f51c4a77c717122ac0b459cd9369d1af486e44d29a99ebab0d0b9ac7afd3619e`  
		Last Modified: Fri, 20 Nov 2026 05:18:44 GMT  
		Size: 59.1 MB (59063445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e687fb851e4e4f783a3b1b601ce2d63d36480f3ae2b5f7a9d93894c264edc2e4`  
		Last Modified: Fri, 20 Nov 2026 05:18:42 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f46990e5efcbc868526525142a6a5dad7efb1ce3633404d54ac0967cb0e90bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.5 MB (917482787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adce7b07d5abd15e665225b1e185d4a11f961693781a5cd3f63130b7dc455ecc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:11 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:14 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c987541f301a4fccd4118557c226fb3e7a0afac3e38cfa3293a2fdd0e3546b5`  
		Last Modified: Fri, 20 Nov 2026 04:28:40 GMT  
		Size: 95.8 MB (95836274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56854e61de360c6311d10f4cff9766872461e320e8d3826f0d0c7509ea97226c`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68402d72855c9c5e5b830a2e4a3c355cdec5e4eced5d9c0302868b0b269efb88`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 2.7 KB (2703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6eed580638228b36f38eefe2ae8b7eb637743e16553e3e0266ff22d801ef7d2`  
		Last Modified: Fri, 20 Nov 2026 04:28:39 GMT  
		Size: 22.8 MB (22754820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20c3a6ee3f28e018dc62deffc03b374524baf6e859cb1ec32aebcb01c2ae018`  
		Last Modified: Fri, 20 Nov 2026 05:25:00 GMT  
		Size: 660.2 MB (660216510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:d37a26d620d344132197e3b24c41406836218395e7ece608d932cc26c3a7df0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59057201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6c9f748c25543a7209ead9447c6d5b01942bb8788c280f0c762d35220ffefd`

```dockerfile
```

-	Layers:
	-	`sha256:4e4a625e7ba8e2e3c7fe680a4a0c636a74dce1709f713b498d90dd70a6c4560c`  
		Last Modified: Fri, 20 Nov 2026 05:24:51 GMT  
		Size: 59.0 MB (59047770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2fadfc4bb5f2674b946490338aca5542f4124b6aa6a6078f7a56a2531b87061`  
		Last Modified: Fri, 20 Nov 2026 05:24:48 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:a18afd4a42ad603579d03b9012385dfeaf2e848423f0a6c41699766e7849c86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:82a392264742a757c697c11b2ec9967dc856f60c87bd14fe2e889b0b767bf1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264530282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d9cac9ed967fbd5501f93c2e52b595be2cd85e4a54a0d1f0058bf7648d6da19`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:25:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:49 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:25:52 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3257cabf06cf30d395b4a38e05128ad640a008a99fdfed4e68fa6f0923a3afb`  
		Last Modified: Fri, 20 Nov 2026 04:26:44 GMT  
		Size: 98.2 MB (98203761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac52be0be6cf37cc0544d25164d9870d7d13636b0d4d70933c2432a88db141`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d99732c3880ef3ea76acf0a6dce879efbe26c711f0ded6136cfa948b970341`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952b68e3c377a9c17e47d38599fbc87e34b2eb45eefb8a610853f2cac29dfbd9`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 23.4 MB (23351795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:5da75b28d3696604347a713be9bfa7f747643840011c97481209e6b13dba2f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a14889b53f8098ffd0faf34952a15cc10f04a44821ebcf57f5625b43b6047b`

```dockerfile
```

-	Layers:
	-	`sha256:dc5422c6d624b8d37be6790a406dd245a5f31b3b300d3d0f9a45bd527714bf76`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 24.0 MB (23958532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd7c49e2bd6255472c5852a3a6afe977a92b025e9571b256499b9142906998a9`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fe235b3680bd63d264d3ddb3db1b23f7022b42a9039859d95c56ec52ed79c822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad7f405e3f4c000eb5de1d453e03d6e3e2f05b60c03d2a0afa5f25a7ba9b9c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:11 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:14 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c987541f301a4fccd4118557c226fb3e7a0afac3e38cfa3293a2fdd0e3546b5`  
		Last Modified: Fri, 20 Nov 2026 04:28:40 GMT  
		Size: 95.8 MB (95836274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56854e61de360c6311d10f4cff9766872461e320e8d3826f0d0c7509ea97226c`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68402d72855c9c5e5b830a2e4a3c355cdec5e4eced5d9c0302868b0b269efb88`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 2.7 KB (2703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6eed580638228b36f38eefe2ae8b7eb637743e16553e3e0266ff22d801ef7d2`  
		Last Modified: Fri, 20 Nov 2026 04:28:39 GMT  
		Size: 22.8 MB (22754820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:6ea61d2ba0fe1b77218e97de3fd634660dcc695fcb66dbf2f0597a5c4c2dd977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23988034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad4c051e1767720bb0bce2738ddc01258bf63ee29adc4d044badc2c71a6e94d`

```dockerfile
```

-	Layers:
	-	`sha256:91dec6c74be795e375612a92b5ac04547cfbfa4d57ca049a8a56f68259c8423f`  
		Last Modified: Fri, 20 Nov 2026 04:28:38 GMT  
		Size: 24.0 MB (23971549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecdd7e316c99b9a406e9d17fcc0a0102ffb99699f45984745c159d2008218547`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:a18afd4a42ad603579d03b9012385dfeaf2e848423f0a6c41699766e7849c86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:82a392264742a757c697c11b2ec9967dc856f60c87bd14fe2e889b0b767bf1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264530282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d9cac9ed967fbd5501f93c2e52b595be2cd85e4a54a0d1f0058bf7648d6da19`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:25:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:49 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:25:52 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3257cabf06cf30d395b4a38e05128ad640a008a99fdfed4e68fa6f0923a3afb`  
		Last Modified: Fri, 20 Nov 2026 04:26:44 GMT  
		Size: 98.2 MB (98203761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac52be0be6cf37cc0544d25164d9870d7d13636b0d4d70933c2432a88db141`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d99732c3880ef3ea76acf0a6dce879efbe26c711f0ded6136cfa948b970341`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952b68e3c377a9c17e47d38599fbc87e34b2eb45eefb8a610853f2cac29dfbd9`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 23.4 MB (23351795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:5da75b28d3696604347a713be9bfa7f747643840011c97481209e6b13dba2f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a14889b53f8098ffd0faf34952a15cc10f04a44821ebcf57f5625b43b6047b`

```dockerfile
```

-	Layers:
	-	`sha256:dc5422c6d624b8d37be6790a406dd245a5f31b3b300d3d0f9a45bd527714bf76`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 24.0 MB (23958532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd7c49e2bd6255472c5852a3a6afe977a92b025e9571b256499b9142906998a9`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fe235b3680bd63d264d3ddb3db1b23f7022b42a9039859d95c56ec52ed79c822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad7f405e3f4c000eb5de1d453e03d6e3e2f05b60c03d2a0afa5f25a7ba9b9c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:11 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:14 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c987541f301a4fccd4118557c226fb3e7a0afac3e38cfa3293a2fdd0e3546b5`  
		Last Modified: Fri, 20 Nov 2026 04:28:40 GMT  
		Size: 95.8 MB (95836274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56854e61de360c6311d10f4cff9766872461e320e8d3826f0d0c7509ea97226c`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68402d72855c9c5e5b830a2e4a3c355cdec5e4eced5d9c0302868b0b269efb88`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 2.7 KB (2703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6eed580638228b36f38eefe2ae8b7eb637743e16553e3e0266ff22d801ef7d2`  
		Last Modified: Fri, 20 Nov 2026 04:28:39 GMT  
		Size: 22.8 MB (22754820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:6ea61d2ba0fe1b77218e97de3fd634660dcc695fcb66dbf2f0597a5c4c2dd977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23988034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad4c051e1767720bb0bce2738ddc01258bf63ee29adc4d044badc2c71a6e94d`

```dockerfile
```

-	Layers:
	-	`sha256:91dec6c74be795e375612a92b5ac04547cfbfa4d57ca049a8a56f68259c8423f`  
		Last Modified: Fri, 20 Nov 2026 04:28:38 GMT  
		Size: 24.0 MB (23971549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecdd7e316c99b9a406e9d17fcc0a0102ffb99699f45984745c159d2008218547`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:1f9ff77348bbd0a2c06c1ee222b71e2e6dbf54b73cff63387a7bd4467a23a354
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:2c97330437da2e891473c1035e82d3ff706c2d9771c375902cb913265113d2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142595858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397b1e507a26abf3de49461efa657ed5342c92bf9eea6a95f73c13539ec7fe15`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:49195f861e4dd17cebfd22e697d639c71809847c55537f6505dd2eb45714f37f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a9698b56307144e21390179cfcbfa4b2bb8612134d38f0a598519a2aaed5f3d`

```dockerfile
```

-	Layers:
	-	`sha256:af38c6aa78cf3d4d80076637d7a1c82fb590f08744b92f92b8b4ec0940adb518`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 17.9 MB (17917351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2c4af24e09176ad9c1d116f4cf85144d3251cbf9f71d4380992552d4b6a6a2`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:073132917fed1c3fda298eb0fe2d2b6c4114a455884a01af623cabbd45ef4733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138296302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1408a6e0dc050e9fbf4e298c915a7e0df40726db018005f9b36577466aaa7bc2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:f3ca1a9723208c4881f6c313419a5c2addabedda09d667450005d2b5400aeec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17918447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1febceeaf9628ab37ec1c0e446460812d64c4a2379ccb89a3bb47577b9bcb18`

```dockerfile
```

-	Layers:
	-	`sha256:1918ce35bf690fe94f07d4956ecd3f6f67f2fbfbf71dfe74c8fba944ef8b0d61`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 17.9 MB (17903696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4833499f26e40cf117a1bf7b40828a5a3ab68bdc58a964cf0222e78c775282f`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:1f9ff77348bbd0a2c06c1ee222b71e2e6dbf54b73cff63387a7bd4467a23a354
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:2c97330437da2e891473c1035e82d3ff706c2d9771c375902cb913265113d2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142595858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397b1e507a26abf3de49461efa657ed5342c92bf9eea6a95f73c13539ec7fe15`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:49195f861e4dd17cebfd22e697d639c71809847c55537f6505dd2eb45714f37f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a9698b56307144e21390179cfcbfa4b2bb8612134d38f0a598519a2aaed5f3d`

```dockerfile
```

-	Layers:
	-	`sha256:af38c6aa78cf3d4d80076637d7a1c82fb590f08744b92f92b8b4ec0940adb518`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 17.9 MB (17917351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2c4af24e09176ad9c1d116f4cf85144d3251cbf9f71d4380992552d4b6a6a2`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:073132917fed1c3fda298eb0fe2d2b6c4114a455884a01af623cabbd45ef4733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138296302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1408a6e0dc050e9fbf4e298c915a7e0df40726db018005f9b36577466aaa7bc2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:f3ca1a9723208c4881f6c313419a5c2addabedda09d667450005d2b5400aeec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17918447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1febceeaf9628ab37ec1c0e446460812d64c4a2379ccb89a3bb47577b9bcb18`

```dockerfile
```

-	Layers:
	-	`sha256:1918ce35bf690fe94f07d4956ecd3f6f67f2fbfbf71dfe74c8fba944ef8b0d61`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 17.9 MB (17903696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4833499f26e40cf117a1bf7b40828a5a3ab68bdc58a964cf0222e78c775282f`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:5147d3ae250ce754afd399f6bfec15b33dd4e473ca357e30432a3182031bfad6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:3f3a309d342b0f8a9212d195a416d5c50deb1716edc8bdfe5e134bcaa38d708c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303299725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0f756e46e309508e42938f6eaa7ccc7b38cd658c1bc7a87c451923d2fa889e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:05 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:30:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:48 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c825bc61bb7a569375d723d1d88dde790793b05be7f6ad998dafc7b015c29d`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 683.2 KB (683233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db21acf9befd9cf5cc4cd01c77044d5b4580f72f7878fe2951a6ad68b82e09`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 6.7 MB (6714049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100b8c7152d5685a8e4ecfde6681d28d928124aad9859acab83d3a88dffbb3ff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 94.6 KB (94632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a22a3874f0958f885b71b394fc121eb676a9cec9b39f579083931e287a90f1`  
		Last Modified: Fri, 20 Nov 2026 03:31:19 GMT  
		Size: 127.3 MB (127256938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739a7e58dc0beb7f6a92c87655d74f38fc48c413986ca6c5c8f4b9922b2da0a0`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146a3246cf3ffa9dcedc744bc1bee788a964f08bf9132e598f71e4a4872216c5`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110245763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f676d118bb2f167da7d6cca304c3a5eefee838ebeb925c937bb7d5adc993f18`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 412.5 KB (412523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3544becc02e5723b695da171848d8f7dbd2327a3053a10949f762e4753da5d3`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849b7235b1a2b72638b414f23a11f1f75d4fabcd5069d4fd99b75ed6a3d1b48`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 28.1 MB (28096444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:270dcf1a2be53d0bf70238e7417bf2d5ea2aa85e31ea2a2df505f81d737adf82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c00288fb9d01e9ddc4b0189d72b4f29fd9a627db26f78f288a38d8af0058b8`

```dockerfile
```

-	Layers:
	-	`sha256:61ce53ae98ed1dc6c2f9f43d71ab3448b0d46c3e8f3f52b84a4c1c46ecb69945`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 24.9 MB (24922425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82a0e709f8559ed2532805f5c38f277bd80c033b8fa7a5ae4d05122a2af06d`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ff9683e990606b51cf829e9f42b82bd59b33352158f4d4435b9bb7785a22b7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291608535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0941d2d8facfbf8d466c5dbf87f5ca6ab9945d7ab1f5bbd095b7b5611f1768`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:31 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:32 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bbc3cc6c907600a4c87fdccf212a716f7140c0c2334de856b460527866bdc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4c246bc906fde52bf6d9763aa74a336ed48b0efc1ef9e79353b5d72db88037`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 6.7 MB (6729420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb2da7dee57117e25cb53d657ce34ff7bd9916e28186f51e7b1866b85529e9`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 94.9 KB (94861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61250e59c47910ba100cd142c4a2cdf1a5a111df37f12664bdb2fa0c8794ee4`  
		Last Modified: Fri, 20 Nov 2026 03:32:50 GMT  
		Size: 121.9 MB (121855159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543abdf5cbec27e15e21d299b2049a172153c2c75c72ad21801658abcc94675`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae9996ec381163ddad358678943cd0f5dfeac6f183b9055a4b1d321b6908ea2`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105661857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026b03e33849e0b9c087e331732eaa51f74fcc3ca8a6055ba30c6e823f3a9999`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 412.5 KB (412522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bc346492d3e6cb024c761c87f83e80b07e5f643be7c4babded39a7935d320a`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.7 KB (2659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb24648b13604dbcde60b8507191ff0c60021f86dccc07fb8f44d1965701c07`  
		Last Modified: Fri, 20 Nov 2026 04:29:00 GMT  
		Size: 27.2 MB (27203081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:42256adfd4eb4a3b2e9f00665b6631fa4cccb293537169f1f1e6f5673def38c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24961146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48c26dad1ccbd9c1151ccf485cd3e14def3f3bfbc45c5941a7b80a4f689d6fd`

```dockerfile
```

-	Layers:
	-	`sha256:600cfa67220444fdce9666e4eb174fcce8dfac96622921bbd6dcf6e798880a65`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 24.9 MB (24944680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dafb0fee2c5d9676648e15473f2c1c7d0531d247d45fa9f4b3d201a7c2c268f`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:233408de3a53d864d7f5e1c8c6ff7948d126162f22221c8f0a8785ab7b03095b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:0cd2f05ef62cb4d8da40919b12afddc3661ee3c8566071aff4c9abfeb6bc74a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1089310861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa13a6f0d4d4ae2e5b0897f134977396fc3ce37e67fd398d7c04d120b4f56be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:05 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:30:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:48 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c825bc61bb7a569375d723d1d88dde790793b05be7f6ad998dafc7b015c29d`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 683.2 KB (683233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db21acf9befd9cf5cc4cd01c77044d5b4580f72f7878fe2951a6ad68b82e09`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 6.7 MB (6714049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100b8c7152d5685a8e4ecfde6681d28d928124aad9859acab83d3a88dffbb3ff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 94.6 KB (94632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a22a3874f0958f885b71b394fc121eb676a9cec9b39f579083931e287a90f1`  
		Last Modified: Fri, 20 Nov 2026 03:31:19 GMT  
		Size: 127.3 MB (127256938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739a7e58dc0beb7f6a92c87655d74f38fc48c413986ca6c5c8f4b9922b2da0a0`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146a3246cf3ffa9dcedc744bc1bee788a964f08bf9132e598f71e4a4872216c5`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110245763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f676d118bb2f167da7d6cca304c3a5eefee838ebeb925c937bb7d5adc993f18`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 412.5 KB (412523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3544becc02e5723b695da171848d8f7dbd2327a3053a10949f762e4753da5d3`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849b7235b1a2b72638b414f23a11f1f75d4fabcd5069d4fd99b75ed6a3d1b48`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 28.1 MB (28096444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bdb54e748fc0c124748eb47b97723d1cb7cd69efef5b156ddf4555db8f0b2d`  
		Last Modified: Fri, 20 Nov 2026 05:19:10 GMT  
		Size: 786.0 MB (786011136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:500f48fb7219fc6acd008b24720817e4cdafb9134309f9f542067d2872a36f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61115072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149d4cbc42a3de39208495be0885eb4150f3e1e2a52d10f431d241394948871d`

```dockerfile
```

-	Layers:
	-	`sha256:b4d82a78ce5c1ee751b288c53cf248cebb79858597726e651fa1b3a2285c7761`  
		Last Modified: Fri, 20 Nov 2026 05:18:57 GMT  
		Size: 61.1 MB (61105733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab362d30b9073c99edd872684bf7c7e3f05bc63f7ee6a0c09ac11feee82dcbc`  
		Last Modified: Fri, 20 Nov 2026 05:18:55 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5619d29521f0fefe9d98e7b9accfb0c567bc5aed3ca08ff863c81163ae10d930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **991.8 MB (991773070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0e4d36c8bf619f73ba682a13d3849dc767b0395957c8ac47ef6fdefa1d7eae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:31 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:32 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bbc3cc6c907600a4c87fdccf212a716f7140c0c2334de856b460527866bdc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4c246bc906fde52bf6d9763aa74a336ed48b0efc1ef9e79353b5d72db88037`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 6.7 MB (6729420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb2da7dee57117e25cb53d657ce34ff7bd9916e28186f51e7b1866b85529e9`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 94.9 KB (94861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61250e59c47910ba100cd142c4a2cdf1a5a111df37f12664bdb2fa0c8794ee4`  
		Last Modified: Fri, 20 Nov 2026 03:32:50 GMT  
		Size: 121.9 MB (121855159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543abdf5cbec27e15e21d299b2049a172153c2c75c72ad21801658abcc94675`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae9996ec381163ddad358678943cd0f5dfeac6f183b9055a4b1d321b6908ea2`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105661857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026b03e33849e0b9c087e331732eaa51f74fcc3ca8a6055ba30c6e823f3a9999`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 412.5 KB (412522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bc346492d3e6cb024c761c87f83e80b07e5f643be7c4babded39a7935d320a`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.7 KB (2659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb24648b13604dbcde60b8507191ff0c60021f86dccc07fb8f44d1965701c07`  
		Last Modified: Fri, 20 Nov 2026 04:29:00 GMT  
		Size: 27.2 MB (27203081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8baaf94266d56ade4f47d3dc22757375348aa7631b6a32b36ebe931d7f9eabed`  
		Last Modified: Fri, 20 Nov 2026 05:25:56 GMT  
		Size: 700.2 MB (700164535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:a6cda0f09bd4079e31cabb0236701d94641665153cdbd411329c4974e5b108b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d47f6bcb632b6e685316460b67151204165e360a502850b722c6f2a44971c09`

```dockerfile
```

-	Layers:
	-	`sha256:3873d2bbc07954b490897b431e6a501efa248da08e62a54d3f4b322069a4b721`  
		Last Modified: Fri, 20 Nov 2026 05:25:45 GMT  
		Size: 61.0 MB (61036252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40d78798e65a57c60dae6a9424c42d6cc2f2a9741d00f18d7a72acb4c9b35f21`  
		Last Modified: Fri, 20 Nov 2026 05:25:43 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:233408de3a53d864d7f5e1c8c6ff7948d126162f22221c8f0a8785ab7b03095b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:0cd2f05ef62cb4d8da40919b12afddc3661ee3c8566071aff4c9abfeb6bc74a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1089310861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa13a6f0d4d4ae2e5b0897f134977396fc3ce37e67fd398d7c04d120b4f56be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:05 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:30:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:48 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c825bc61bb7a569375d723d1d88dde790793b05be7f6ad998dafc7b015c29d`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 683.2 KB (683233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db21acf9befd9cf5cc4cd01c77044d5b4580f72f7878fe2951a6ad68b82e09`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 6.7 MB (6714049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100b8c7152d5685a8e4ecfde6681d28d928124aad9859acab83d3a88dffbb3ff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 94.6 KB (94632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a22a3874f0958f885b71b394fc121eb676a9cec9b39f579083931e287a90f1`  
		Last Modified: Fri, 20 Nov 2026 03:31:19 GMT  
		Size: 127.3 MB (127256938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739a7e58dc0beb7f6a92c87655d74f38fc48c413986ca6c5c8f4b9922b2da0a0`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146a3246cf3ffa9dcedc744bc1bee788a964f08bf9132e598f71e4a4872216c5`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110245763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f676d118bb2f167da7d6cca304c3a5eefee838ebeb925c937bb7d5adc993f18`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 412.5 KB (412523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3544becc02e5723b695da171848d8f7dbd2327a3053a10949f762e4753da5d3`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849b7235b1a2b72638b414f23a11f1f75d4fabcd5069d4fd99b75ed6a3d1b48`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 28.1 MB (28096444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bdb54e748fc0c124748eb47b97723d1cb7cd69efef5b156ddf4555db8f0b2d`  
		Last Modified: Fri, 20 Nov 2026 05:19:10 GMT  
		Size: 786.0 MB (786011136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:500f48fb7219fc6acd008b24720817e4cdafb9134309f9f542067d2872a36f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61115072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149d4cbc42a3de39208495be0885eb4150f3e1e2a52d10f431d241394948871d`

```dockerfile
```

-	Layers:
	-	`sha256:b4d82a78ce5c1ee751b288c53cf248cebb79858597726e651fa1b3a2285c7761`  
		Last Modified: Fri, 20 Nov 2026 05:18:57 GMT  
		Size: 61.1 MB (61105733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab362d30b9073c99edd872684bf7c7e3f05bc63f7ee6a0c09ac11feee82dcbc`  
		Last Modified: Fri, 20 Nov 2026 05:18:55 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5619d29521f0fefe9d98e7b9accfb0c567bc5aed3ca08ff863c81163ae10d930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **991.8 MB (991773070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0e4d36c8bf619f73ba682a13d3849dc767b0395957c8ac47ef6fdefa1d7eae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:31 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:32 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bbc3cc6c907600a4c87fdccf212a716f7140c0c2334de856b460527866bdc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4c246bc906fde52bf6d9763aa74a336ed48b0efc1ef9e79353b5d72db88037`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 6.7 MB (6729420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb2da7dee57117e25cb53d657ce34ff7bd9916e28186f51e7b1866b85529e9`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 94.9 KB (94861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61250e59c47910ba100cd142c4a2cdf1a5a111df37f12664bdb2fa0c8794ee4`  
		Last Modified: Fri, 20 Nov 2026 03:32:50 GMT  
		Size: 121.9 MB (121855159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543abdf5cbec27e15e21d299b2049a172153c2c75c72ad21801658abcc94675`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae9996ec381163ddad358678943cd0f5dfeac6f183b9055a4b1d321b6908ea2`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105661857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026b03e33849e0b9c087e331732eaa51f74fcc3ca8a6055ba30c6e823f3a9999`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 412.5 KB (412522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bc346492d3e6cb024c761c87f83e80b07e5f643be7c4babded39a7935d320a`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.7 KB (2659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb24648b13604dbcde60b8507191ff0c60021f86dccc07fb8f44d1965701c07`  
		Last Modified: Fri, 20 Nov 2026 04:29:00 GMT  
		Size: 27.2 MB (27203081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8baaf94266d56ade4f47d3dc22757375348aa7631b6a32b36ebe931d7f9eabed`  
		Last Modified: Fri, 20 Nov 2026 05:25:56 GMT  
		Size: 700.2 MB (700164535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a6cda0f09bd4079e31cabb0236701d94641665153cdbd411329c4974e5b108b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d47f6bcb632b6e685316460b67151204165e360a502850b722c6f2a44971c09`

```dockerfile
```

-	Layers:
	-	`sha256:3873d2bbc07954b490897b431e6a501efa248da08e62a54d3f4b322069a4b721`  
		Last Modified: Fri, 20 Nov 2026 05:25:45 GMT  
		Size: 61.0 MB (61036252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40d78798e65a57c60dae6a9424c42d6cc2f2a9741d00f18d7a72acb4c9b35f21`  
		Last Modified: Fri, 20 Nov 2026 05:25:43 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:5147d3ae250ce754afd399f6bfec15b33dd4e473ca357e30432a3182031bfad6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:3f3a309d342b0f8a9212d195a416d5c50deb1716edc8bdfe5e134bcaa38d708c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303299725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0f756e46e309508e42938f6eaa7ccc7b38cd658c1bc7a87c451923d2fa889e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:05 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:30:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:48 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c825bc61bb7a569375d723d1d88dde790793b05be7f6ad998dafc7b015c29d`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 683.2 KB (683233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db21acf9befd9cf5cc4cd01c77044d5b4580f72f7878fe2951a6ad68b82e09`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 6.7 MB (6714049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100b8c7152d5685a8e4ecfde6681d28d928124aad9859acab83d3a88dffbb3ff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 94.6 KB (94632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a22a3874f0958f885b71b394fc121eb676a9cec9b39f579083931e287a90f1`  
		Last Modified: Fri, 20 Nov 2026 03:31:19 GMT  
		Size: 127.3 MB (127256938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739a7e58dc0beb7f6a92c87655d74f38fc48c413986ca6c5c8f4b9922b2da0a0`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146a3246cf3ffa9dcedc744bc1bee788a964f08bf9132e598f71e4a4872216c5`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110245763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f676d118bb2f167da7d6cca304c3a5eefee838ebeb925c937bb7d5adc993f18`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 412.5 KB (412523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3544becc02e5723b695da171848d8f7dbd2327a3053a10949f762e4753da5d3`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849b7235b1a2b72638b414f23a11f1f75d4fabcd5069d4fd99b75ed6a3d1b48`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 28.1 MB (28096444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:270dcf1a2be53d0bf70238e7417bf2d5ea2aa85e31ea2a2df505f81d737adf82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c00288fb9d01e9ddc4b0189d72b4f29fd9a627db26f78f288a38d8af0058b8`

```dockerfile
```

-	Layers:
	-	`sha256:61ce53ae98ed1dc6c2f9f43d71ab3448b0d46c3e8f3f52b84a4c1c46ecb69945`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 24.9 MB (24922425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82a0e709f8559ed2532805f5c38f277bd80c033b8fa7a5ae4d05122a2af06d`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ff9683e990606b51cf829e9f42b82bd59b33352158f4d4435b9bb7785a22b7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291608535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0941d2d8facfbf8d466c5dbf87f5ca6ab9945d7ab1f5bbd095b7b5611f1768`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:31 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:32 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bbc3cc6c907600a4c87fdccf212a716f7140c0c2334de856b460527866bdc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4c246bc906fde52bf6d9763aa74a336ed48b0efc1ef9e79353b5d72db88037`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 6.7 MB (6729420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb2da7dee57117e25cb53d657ce34ff7bd9916e28186f51e7b1866b85529e9`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 94.9 KB (94861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61250e59c47910ba100cd142c4a2cdf1a5a111df37f12664bdb2fa0c8794ee4`  
		Last Modified: Fri, 20 Nov 2026 03:32:50 GMT  
		Size: 121.9 MB (121855159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543abdf5cbec27e15e21d299b2049a172153c2c75c72ad21801658abcc94675`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae9996ec381163ddad358678943cd0f5dfeac6f183b9055a4b1d321b6908ea2`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105661857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026b03e33849e0b9c087e331732eaa51f74fcc3ca8a6055ba30c6e823f3a9999`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 412.5 KB (412522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bc346492d3e6cb024c761c87f83e80b07e5f643be7c4babded39a7935d320a`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.7 KB (2659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb24648b13604dbcde60b8507191ff0c60021f86dccc07fb8f44d1965701c07`  
		Last Modified: Fri, 20 Nov 2026 04:29:00 GMT  
		Size: 27.2 MB (27203081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:42256adfd4eb4a3b2e9f00665b6631fa4cccb293537169f1f1e6f5673def38c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24961146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48c26dad1ccbd9c1151ccf485cd3e14def3f3bfbc45c5941a7b80a4f689d6fd`

```dockerfile
```

-	Layers:
	-	`sha256:600cfa67220444fdce9666e4eb174fcce8dfac96622921bbd6dcf6e798880a65`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 24.9 MB (24944680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dafb0fee2c5d9676648e15473f2c1c7d0531d247d45fa9f4b3d201a7c2c268f`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:5147d3ae250ce754afd399f6bfec15b33dd4e473ca357e30432a3182031bfad6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:3f3a309d342b0f8a9212d195a416d5c50deb1716edc8bdfe5e134bcaa38d708c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303299725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0f756e46e309508e42938f6eaa7ccc7b38cd658c1bc7a87c451923d2fa889e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:05 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:30:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:48 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:09 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c825bc61bb7a569375d723d1d88dde790793b05be7f6ad998dafc7b015c29d`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 683.2 KB (683233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db21acf9befd9cf5cc4cd01c77044d5b4580f72f7878fe2951a6ad68b82e09`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 6.7 MB (6714049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100b8c7152d5685a8e4ecfde6681d28d928124aad9859acab83d3a88dffbb3ff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 94.6 KB (94632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a22a3874f0958f885b71b394fc121eb676a9cec9b39f579083931e287a90f1`  
		Last Modified: Fri, 20 Nov 2026 03:31:19 GMT  
		Size: 127.3 MB (127256938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739a7e58dc0beb7f6a92c87655d74f38fc48c413986ca6c5c8f4b9922b2da0a0`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146a3246cf3ffa9dcedc744bc1bee788a964f08bf9132e598f71e4a4872216c5`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110245763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f676d118bb2f167da7d6cca304c3a5eefee838ebeb925c937bb7d5adc993f18`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 412.5 KB (412523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3544becc02e5723b695da171848d8f7dbd2327a3053a10949f762e4753da5d3`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 2.6 KB (2649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849b7235b1a2b72638b414f23a11f1f75d4fabcd5069d4fd99b75ed6a3d1b48`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 28.1 MB (28096444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:270dcf1a2be53d0bf70238e7417bf2d5ea2aa85e31ea2a2df505f81d737adf82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c00288fb9d01e9ddc4b0189d72b4f29fd9a627db26f78f288a38d8af0058b8`

```dockerfile
```

-	Layers:
	-	`sha256:61ce53ae98ed1dc6c2f9f43d71ab3448b0d46c3e8f3f52b84a4c1c46ecb69945`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 24.9 MB (24922425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82a0e709f8559ed2532805f5c38f277bd80c033b8fa7a5ae4d05122a2af06d`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ff9683e990606b51cf829e9f42b82bd59b33352158f4d4435b9bb7785a22b7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291608535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0941d2d8facfbf8d466c5dbf87f5ca6ab9945d7ab1f5bbd095b7b5611f1768`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:31 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:32 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bbc3cc6c907600a4c87fdccf212a716f7140c0c2334de856b460527866bdc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4c246bc906fde52bf6d9763aa74a336ed48b0efc1ef9e79353b5d72db88037`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 6.7 MB (6729420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb2da7dee57117e25cb53d657ce34ff7bd9916e28186f51e7b1866b85529e9`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 94.9 KB (94861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61250e59c47910ba100cd142c4a2cdf1a5a111df37f12664bdb2fa0c8794ee4`  
		Last Modified: Fri, 20 Nov 2026 03:32:50 GMT  
		Size: 121.9 MB (121855159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543abdf5cbec27e15e21d299b2049a172153c2c75c72ad21801658abcc94675`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae9996ec381163ddad358678943cd0f5dfeac6f183b9055a4b1d321b6908ea2`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105661857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026b03e33849e0b9c087e331732eaa51f74fcc3ca8a6055ba30c6e823f3a9999`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 412.5 KB (412522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bc346492d3e6cb024c761c87f83e80b07e5f643be7c4babded39a7935d320a`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.7 KB (2659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb24648b13604dbcde60b8507191ff0c60021f86dccc07fb8f44d1965701c07`  
		Last Modified: Fri, 20 Nov 2026 04:29:00 GMT  
		Size: 27.2 MB (27203081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:42256adfd4eb4a3b2e9f00665b6631fa4cccb293537169f1f1e6f5673def38c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24961146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48c26dad1ccbd9c1151ccf485cd3e14def3f3bfbc45c5941a7b80a4f689d6fd`

```dockerfile
```

-	Layers:
	-	`sha256:600cfa67220444fdce9666e4eb174fcce8dfac96622921bbd6dcf6e798880a65`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 24.9 MB (24944680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dafb0fee2c5d9676648e15473f2c1c7d0531d247d45fa9f4b3d201a7c2c268f`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:d0b8e70ceecc98a1d475c6b9ca96de9c90bf4e91e7163bf4c7543b794ff7d1f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:5b662a920781379e8569ab59d5c92180fa424114020e0e42cfed7f284fb466af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164542346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b9f404bd9d7f5ebce2436c33f5c72de93e80a0bea1ac811717ec30afcacb8d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:05 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:30:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c825bc61bb7a569375d723d1d88dde790793b05be7f6ad998dafc7b015c29d`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 683.2 KB (683233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db21acf9befd9cf5cc4cd01c77044d5b4580f72f7878fe2951a6ad68b82e09`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 6.7 MB (6714049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100b8c7152d5685a8e4ecfde6681d28d928124aad9859acab83d3a88dffbb3ff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 94.6 KB (94632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a22a3874f0958f885b71b394fc121eb676a9cec9b39f579083931e287a90f1`  
		Last Modified: Fri, 20 Nov 2026 03:31:19 GMT  
		Size: 127.3 MB (127256938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739a7e58dc0beb7f6a92c87655d74f38fc48c413986ca6c5c8f4b9922b2da0a0`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:51fc6fd4beb29ab86a8bb275212f04a7e5284e8a38dd0e02e4067a7454d1801a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18623258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f7e014730b36ae473f99aaf74e00f24d3615f663aadc43fdbb1d452a5fc4b8`

```dockerfile
```

-	Layers:
	-	`sha256:444ece04a2cb563595fa2b34db28db5e26a090d0344d6b73c48c5e0d9b237123`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 18.6 MB (18608650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dda53a10a79837c3573b553146884c9aa77833d9f63d09dccb1e3838eeedeff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0b30f02c094354894ea95fd783f363f5c857f6456a24cfef06a3e3dda15b5199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158328416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9145775ae7071ca0a25105a3a95bc08922d7d37291bd49fe1c7037e28e2e2a4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bbc3cc6c907600a4c87fdccf212a716f7140c0c2334de856b460527866bdc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4c246bc906fde52bf6d9763aa74a336ed48b0efc1ef9e79353b5d72db88037`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 6.7 MB (6729420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb2da7dee57117e25cb53d657ce34ff7bd9916e28186f51e7b1866b85529e9`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 94.9 KB (94861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61250e59c47910ba100cd142c4a2cdf1a5a111df37f12664bdb2fa0c8794ee4`  
		Last Modified: Fri, 20 Nov 2026 03:32:50 GMT  
		Size: 121.9 MB (121855159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543abdf5cbec27e15e21d299b2049a172153c2c75c72ad21801658abcc94675`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:4648b3fd23356ed4cbba4948004f135920fe03f44e5f000e8d1ce058f7dd1b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18597389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:261e847e6637793e29ce041abcbd5410eafa4fc677760a119ccbb68dbba55919`

```dockerfile
```

-	Layers:
	-	`sha256:59bebf8f739a276ad6a1f80a5d53f71c2dc96b6f6570659dd0dbba7108a03d56`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 18.6 MB (18582656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31a0ea0328a51c8bffde1f51e289ab830b94d8fb762c9321fed3eb631062edcc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:d0b8e70ceecc98a1d475c6b9ca96de9c90bf4e91e7163bf4c7543b794ff7d1f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:5b662a920781379e8569ab59d5c92180fa424114020e0e42cfed7f284fb466af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164542346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b9f404bd9d7f5ebce2436c33f5c72de93e80a0bea1ac811717ec30afcacb8d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:05 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:47 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:30:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c825bc61bb7a569375d723d1d88dde790793b05be7f6ad998dafc7b015c29d`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 683.2 KB (683233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db21acf9befd9cf5cc4cd01c77044d5b4580f72f7878fe2951a6ad68b82e09`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 6.7 MB (6714049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100b8c7152d5685a8e4ecfde6681d28d928124aad9859acab83d3a88dffbb3ff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 94.6 KB (94632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a22a3874f0958f885b71b394fc121eb676a9cec9b39f579083931e287a90f1`  
		Last Modified: Fri, 20 Nov 2026 03:31:19 GMT  
		Size: 127.3 MB (127256938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739a7e58dc0beb7f6a92c87655d74f38fc48c413986ca6c5c8f4b9922b2da0a0`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:51fc6fd4beb29ab86a8bb275212f04a7e5284e8a38dd0e02e4067a7454d1801a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18623258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f7e014730b36ae473f99aaf74e00f24d3615f663aadc43fdbb1d452a5fc4b8`

```dockerfile
```

-	Layers:
	-	`sha256:444ece04a2cb563595fa2b34db28db5e26a090d0344d6b73c48c5e0d9b237123`  
		Last Modified: Fri, 20 Nov 2026 03:31:17 GMT  
		Size: 18.6 MB (18608650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dda53a10a79837c3573b553146884c9aa77833d9f63d09dccb1e3838eeedeff`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0b30f02c094354894ea95fd783f363f5c857f6456a24cfef06a3e3dda15b5199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158328416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9145775ae7071ca0a25105a3a95bc08922d7d37291bd49fe1c7037e28e2e2a4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:19 GMT
ENV ROS_DISTRO=jazzy
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bbc3cc6c907600a4c87fdccf212a716f7140c0c2334de856b460527866bdc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4c246bc906fde52bf6d9763aa74a336ed48b0efc1ef9e79353b5d72db88037`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 6.7 MB (6729420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb2da7dee57117e25cb53d657ce34ff7bd9916e28186f51e7b1866b85529e9`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 94.9 KB (94861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61250e59c47910ba100cd142c4a2cdf1a5a111df37f12664bdb2fa0c8794ee4`  
		Last Modified: Fri, 20 Nov 2026 03:32:50 GMT  
		Size: 121.9 MB (121855159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543abdf5cbec27e15e21d299b2049a172153c2c75c72ad21801658abcc94675`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:4648b3fd23356ed4cbba4948004f135920fe03f44e5f000e8d1ce058f7dd1b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18597389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:261e847e6637793e29ce041abcbd5410eafa4fc677760a119ccbb68dbba55919`

```dockerfile
```

-	Layers:
	-	`sha256:59bebf8f739a276ad6a1f80a5d53f71c2dc96b6f6570659dd0dbba7108a03d56`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 18.6 MB (18582656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31a0ea0328a51c8bffde1f51e289ab830b94d8fb762c9321fed3eb631062edcc`  
		Last Modified: Fri, 20 Nov 2026 03:32:47 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:8141e08c233f76e0f047e166c1394b0eeeedcd894e5f6fc27008ed61e1643f66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:8ad82aa053705a88c2e1c461632059ac3a96bd7eb782ab8f2e81287503d659dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.7 MB (303734776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9039980eada2eb54540a73777c4d0429e8a98c9ff1300f90bc84326361c14d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96e1ede5830897866941806aa2e75fb359e31909ee75d39938544b533c0d446`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110247869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be70194203a84a2375b4c7197dc0f67b9842b1290031f9f9c164587a69a84467`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f2bddf11ca3c0b9f53c37b18d1317f8a7790ab6dd46195e4c14ae0ec106744`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7a02e3faa6140ae10feedc6d97df912228e424a363b2f713b39ec542a23c39`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 27.9 MB (27928939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:a572a7cf459e8fe12dc7c406640d7494fc3959c1fd4e6963df113c7cfa669cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07140465933486ee78c02a2f3912b816c569349bd80676674209c078a8768fe0`

```dockerfile
```

-	Layers:
	-	`sha256:484ceae8e45211802cfad07d7571a09f6b6801833feb171c9484ff0b562bd987`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 24.9 MB (24876650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22835826cdf8728dc2ecafe2501762c621cd0c38a8bace4fdbe7946c72c693a7`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8e164ebac9e769c268d8c5faca33c568ab6813c5e5c1fa0d04a385fc63d1f692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (292021578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b5e0f1b30667356176fe3b82315222546a90951893b787e82c85b21fb2fa3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:27 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d196c0ec6928589c5a05e2a159a9aa6341ecee960d3422130f6d85011ed9bb`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105664113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d96ee1785adb8a36aac3477e9347a6dfb518c949e1aa40ab2fc46fcef3c842e`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892020b2ec462cfae6e954db082542dccdd3fb408aae0ec9345274a78eaf04ab`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2289e0667068c25ed420963b12b42d968b3bb3e739acccc1692049f6a22ccfde`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 27.0 MB (27038175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:97c0a8101fa56a03b03b8499fd945f71c50e774eb6ab2cd27531cfc15e62510f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24915394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de43095ebc630ef8024864dc9b19a6a78d6a419be60cf7911c6c0a09465df1d8`

```dockerfile
```

-	Layers:
	-	`sha256:7fd213e391e41d397f7f658a2854bf26b96cb0fa7717b0514019fabfde3a71e7`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 24.9 MB (24898910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8736f850fb76416b34af3f2850dc70c6a4930ad1c8d8cb09cd543b41569b77a9`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:aab4d8f4ed2db547197659d4b0130058fe198e8484e4afa64083ec037d51e1cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:f3b86b74d54b4dabff2019f77d6506f70d908e37d6a189ad7063049000c522f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1089740618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d488cae533161c370d04b60517dcae18ffc93b7e09482f13368ff5db856e1ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96e1ede5830897866941806aa2e75fb359e31909ee75d39938544b533c0d446`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110247869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be70194203a84a2375b4c7197dc0f67b9842b1290031f9f9c164587a69a84467`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f2bddf11ca3c0b9f53c37b18d1317f8a7790ab6dd46195e4c14ae0ec106744`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7a02e3faa6140ae10feedc6d97df912228e424a363b2f713b39ec542a23c39`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 27.9 MB (27928939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42072f3a1bd30db211199d6cb5b7575c18c07c6b22333a22c7680f8adff1fdd6`  
		Last Modified: Fri, 20 Nov 2026 05:19:09 GMT  
		Size: 786.0 MB (786005842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:7033bd60ae6bb6363c935959aa9139d93c326946ed756cb31fb1cf603be7ab27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d40050ec80fb964b62e9dc9c62292c6d66608c6f4987f78162d129ed08ff927`

```dockerfile
```

-	Layers:
	-	`sha256:6f522dc00a1d65bf985f95c6cb4020115c51fa8b6c0aa174b3e502ad336a67c3`  
		Last Modified: Fri, 20 Nov 2026 05:18:56 GMT  
		Size: 61.1 MB (61064602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db08debff85034ed599f5756bb2e2a39bcb4aa5c71394d039dfb7fffa58ec156`  
		Last Modified: Fri, 20 Nov 2026 05:18:53 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c201199b2b098e2ccac5bf755e9ba13ca3a61e8157dead68e539b420861757a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.2 MB (992216958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356bcf81c43207f9e6f13d8f5690479c0b6831704bb34d852cad57bda3806bf0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:27 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d196c0ec6928589c5a05e2a159a9aa6341ecee960d3422130f6d85011ed9bb`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105664113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d96ee1785adb8a36aac3477e9347a6dfb518c949e1aa40ab2fc46fcef3c842e`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892020b2ec462cfae6e954db082542dccdd3fb408aae0ec9345274a78eaf04ab`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2289e0667068c25ed420963b12b42d968b3bb3e739acccc1692049f6a22ccfde`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 27.0 MB (27038175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a6f94a07aa7d63f7a020e986f1cc149a243d7c2b11812b4a9e657221f52890`  
		Last Modified: Fri, 20 Nov 2026 05:25:40 GMT  
		Size: 700.2 MB (700195380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:85d0a230a2a3198b041c17fcce6d21ae2f88c1b49c887d95b016afda2501d4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6b1922e1385a3761f18dc4d4a156bb6df7ade58e5dbc5118843611ddfd8b14`

```dockerfile
```

-	Layers:
	-	`sha256:5c1ed5b6b325956b43bd20b526dafccb316571c725944fb087e05999bee29886`  
		Last Modified: Fri, 20 Nov 2026 05:25:30 GMT  
		Size: 61.0 MB (60995126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:104303a021ca9a97aeb49a616fc385ed476357f0aba9c8c971199f8792a11a93`  
		Last Modified: Fri, 20 Nov 2026 05:25:27 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:aab4d8f4ed2db547197659d4b0130058fe198e8484e4afa64083ec037d51e1cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:f3b86b74d54b4dabff2019f77d6506f70d908e37d6a189ad7063049000c522f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1089740618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d488cae533161c370d04b60517dcae18ffc93b7e09482f13368ff5db856e1ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96e1ede5830897866941806aa2e75fb359e31909ee75d39938544b533c0d446`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110247869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be70194203a84a2375b4c7197dc0f67b9842b1290031f9f9c164587a69a84467`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f2bddf11ca3c0b9f53c37b18d1317f8a7790ab6dd46195e4c14ae0ec106744`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7a02e3faa6140ae10feedc6d97df912228e424a363b2f713b39ec542a23c39`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 27.9 MB (27928939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42072f3a1bd30db211199d6cb5b7575c18c07c6b22333a22c7680f8adff1fdd6`  
		Last Modified: Fri, 20 Nov 2026 05:19:09 GMT  
		Size: 786.0 MB (786005842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:7033bd60ae6bb6363c935959aa9139d93c326946ed756cb31fb1cf603be7ab27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d40050ec80fb964b62e9dc9c62292c6d66608c6f4987f78162d129ed08ff927`

```dockerfile
```

-	Layers:
	-	`sha256:6f522dc00a1d65bf985f95c6cb4020115c51fa8b6c0aa174b3e502ad336a67c3`  
		Last Modified: Fri, 20 Nov 2026 05:18:56 GMT  
		Size: 61.1 MB (61064602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db08debff85034ed599f5756bb2e2a39bcb4aa5c71394d039dfb7fffa58ec156`  
		Last Modified: Fri, 20 Nov 2026 05:18:53 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c201199b2b098e2ccac5bf755e9ba13ca3a61e8157dead68e539b420861757a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.2 MB (992216958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356bcf81c43207f9e6f13d8f5690479c0b6831704bb34d852cad57bda3806bf0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:27 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d196c0ec6928589c5a05e2a159a9aa6341ecee960d3422130f6d85011ed9bb`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105664113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d96ee1785adb8a36aac3477e9347a6dfb518c949e1aa40ab2fc46fcef3c842e`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892020b2ec462cfae6e954db082542dccdd3fb408aae0ec9345274a78eaf04ab`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2289e0667068c25ed420963b12b42d968b3bb3e739acccc1692049f6a22ccfde`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 27.0 MB (27038175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a6f94a07aa7d63f7a020e986f1cc149a243d7c2b11812b4a9e657221f52890`  
		Last Modified: Fri, 20 Nov 2026 05:25:40 GMT  
		Size: 700.2 MB (700195380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:85d0a230a2a3198b041c17fcce6d21ae2f88c1b49c887d95b016afda2501d4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6b1922e1385a3761f18dc4d4a156bb6df7ade58e5dbc5118843611ddfd8b14`

```dockerfile
```

-	Layers:
	-	`sha256:5c1ed5b6b325956b43bd20b526dafccb316571c725944fb087e05999bee29886`  
		Last Modified: Fri, 20 Nov 2026 05:25:30 GMT  
		Size: 61.0 MB (60995126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:104303a021ca9a97aeb49a616fc385ed476357f0aba9c8c971199f8792a11a93`  
		Last Modified: Fri, 20 Nov 2026 05:25:27 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:8141e08c233f76e0f047e166c1394b0eeeedcd894e5f6fc27008ed61e1643f66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:8ad82aa053705a88c2e1c461632059ac3a96bd7eb782ab8f2e81287503d659dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.7 MB (303734776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9039980eada2eb54540a73777c4d0429e8a98c9ff1300f90bc84326361c14d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96e1ede5830897866941806aa2e75fb359e31909ee75d39938544b533c0d446`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110247869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be70194203a84a2375b4c7197dc0f67b9842b1290031f9f9c164587a69a84467`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f2bddf11ca3c0b9f53c37b18d1317f8a7790ab6dd46195e4c14ae0ec106744`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7a02e3faa6140ae10feedc6d97df912228e424a363b2f713b39ec542a23c39`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 27.9 MB (27928939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:a572a7cf459e8fe12dc7c406640d7494fc3959c1fd4e6963df113c7cfa669cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07140465933486ee78c02a2f3912b816c569349bd80676674209c078a8768fe0`

```dockerfile
```

-	Layers:
	-	`sha256:484ceae8e45211802cfad07d7571a09f6b6801833feb171c9484ff0b562bd987`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 24.9 MB (24876650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22835826cdf8728dc2ecafe2501762c621cd0c38a8bace4fdbe7946c72c693a7`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8e164ebac9e769c268d8c5faca33c568ab6813c5e5c1fa0d04a385fc63d1f692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (292021578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b5e0f1b30667356176fe3b82315222546a90951893b787e82c85b21fb2fa3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:27 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d196c0ec6928589c5a05e2a159a9aa6341ecee960d3422130f6d85011ed9bb`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105664113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d96ee1785adb8a36aac3477e9347a6dfb518c949e1aa40ab2fc46fcef3c842e`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892020b2ec462cfae6e954db082542dccdd3fb408aae0ec9345274a78eaf04ab`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2289e0667068c25ed420963b12b42d968b3bb3e739acccc1692049f6a22ccfde`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 27.0 MB (27038175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:97c0a8101fa56a03b03b8499fd945f71c50e774eb6ab2cd27531cfc15e62510f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24915394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de43095ebc630ef8024864dc9b19a6a78d6a419be60cf7911c6c0a09465df1d8`

```dockerfile
```

-	Layers:
	-	`sha256:7fd213e391e41d397f7f658a2854bf26b96cb0fa7717b0514019fabfde3a71e7`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 24.9 MB (24898910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8736f850fb76416b34af3f2850dc70c6a4930ad1c8d8cb09cd543b41569b77a9`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:8141e08c233f76e0f047e166c1394b0eeeedcd894e5f6fc27008ed61e1643f66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:8ad82aa053705a88c2e1c461632059ac3a96bd7eb782ab8f2e81287503d659dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.7 MB (303734776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9039980eada2eb54540a73777c4d0429e8a98c9ff1300f90bc84326361c14d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:26:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96e1ede5830897866941806aa2e75fb359e31909ee75d39938544b533c0d446`  
		Last Modified: Fri, 20 Nov 2026 04:27:03 GMT  
		Size: 110.2 MB (110247869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be70194203a84a2375b4c7197dc0f67b9842b1290031f9f9c164587a69a84467`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f2bddf11ca3c0b9f53c37b18d1317f8a7790ab6dd46195e4c14ae0ec106744`  
		Last Modified: Fri, 20 Nov 2026 04:27:00 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7a02e3faa6140ae10feedc6d97df912228e424a363b2f713b39ec542a23c39`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 27.9 MB (27928939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a572a7cf459e8fe12dc7c406640d7494fc3959c1fd4e6963df113c7cfa669cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07140465933486ee78c02a2f3912b816c569349bd80676674209c078a8768fe0`

```dockerfile
```

-	Layers:
	-	`sha256:484ceae8e45211802cfad07d7571a09f6b6801833feb171c9484ff0b562bd987`  
		Last Modified: Fri, 20 Nov 2026 04:27:01 GMT  
		Size: 24.9 MB (24876650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22835826cdf8728dc2ecafe2501762c621cd0c38a8bace4fdbe7946c72c693a7`  
		Last Modified: Fri, 20 Nov 2026 04:26:59 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8e164ebac9e769c268d8c5faca33c568ab6813c5e5c1fa0d04a385fc63d1f692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (292021578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b5e0f1b30667356176fe3b82315222546a90951893b787e82c85b21fb2fa3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:27 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d196c0ec6928589c5a05e2a159a9aa6341ecee960d3422130f6d85011ed9bb`  
		Last Modified: Fri, 20 Nov 2026 04:29:01 GMT  
		Size: 105.7 MB (105664113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d96ee1785adb8a36aac3477e9347a6dfb518c949e1aa40ab2fc46fcef3c842e`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 360.8 KB (360776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892020b2ec462cfae6e954db082542dccdd3fb408aae0ec9345274a78eaf04ab`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2289e0667068c25ed420963b12b42d968b3bb3e739acccc1692049f6a22ccfde`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 27.0 MB (27038175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:97c0a8101fa56a03b03b8499fd945f71c50e774eb6ab2cd27531cfc15e62510f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24915394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de43095ebc630ef8024864dc9b19a6a78d6a419be60cf7911c6c0a09465df1d8`

```dockerfile
```

-	Layers:
	-	`sha256:7fd213e391e41d397f7f658a2854bf26b96cb0fa7717b0514019fabfde3a71e7`  
		Last Modified: Fri, 20 Nov 2026 04:28:59 GMT  
		Size: 24.9 MB (24898910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8736f850fb76416b34af3f2850dc70c6a4930ad1c8d8cb09cd543b41569b77a9`  
		Last Modified: Fri, 20 Nov 2026 04:28:58 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:2b456d0e769af2c504ed95e5e8ed33020ecae99a08465886dc6d6547b1461e40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:4e206912b852e5487c6588b7dbca9faf095cc8e7e909cd4e78c66d0bd6d60e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165194513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7cddc6c6f86bdef0c0a2216a96acf282c68e8b41db6eb31284654fca1dcd32`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:a00c198f454e2b4d56ee6992a9c665bc1aac577eaa98398301c1defed5b2fe4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0d44b437667f0d893955f133eafcd4a05210601f7eaeff2ce5fba6c2ee0b8d`

```dockerfile
```

-	Layers:
	-	`sha256:174a08d1205d49cd2f783f23ada332cbe8434c648bcf8ead12e5ec4bea63577f`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 18.6 MB (18616889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dd8d0625756a6859ec9bc01ebd2f98bf35f288fff057850f7b04b769e8111c9`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d88827f91d975f8773ad5de6dd88716616b898942e5b6169b2ebfea6d3f59dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158955869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab198de230a16d86b3a887e976d38c674e98f937f53371ac659a891fc0af0c8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:761fef82e6dd789e66418c0ffe024b63f7820b81c28250a9155302e1a20f3608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f027b3842359d5a1b49c0dcde39f1791856fcb338152110d96c62ce8be75d30`

```dockerfile
```

-	Layers:
	-	`sha256:4c5142511fb73cc4fcd5fc6c2128574a93c5c20660d69f38c0c37769509ed9a0`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 18.6 MB (18590900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a1abc07f34848c2a940c291e58e3905b70f91c0400a593daaba26f6d7e1e88`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:2b456d0e769af2c504ed95e5e8ed33020ecae99a08465886dc6d6547b1461e40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:4e206912b852e5487c6588b7dbca9faf095cc8e7e909cd4e78c66d0bd6d60e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165194513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7cddc6c6f86bdef0c0a2216a96acf282c68e8b41db6eb31284654fca1dcd32`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:31:11 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:31:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12bbf25817441f644a233e0589d9874205774ac0412d534fc770629617ec5d3`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 683.2 KB (683238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ec9b2b69276f83ac2861e7f5dd1e6f4eedf797f1b6024703a5b3c5c653ddf5`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 6.7 MB (6713911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d17f804b7e56721839f38e9d1c5b3d425028ee5a0d1a5d1898250f9b9f0dc49`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 94.6 KB (94618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5f9a099dc3af878421950291c34ef7f7fc7397416cbc7048e4586242c12e0b`  
		Last Modified: Fri, 20 Nov 2026 03:31:41 GMT  
		Size: 127.9 MB (127909253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01db4d157e9622902d234c659ed27ddfc99df4da8b69cfc81b5195081e673f4`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a00c198f454e2b4d56ee6992a9c665bc1aac577eaa98398301c1defed5b2fe4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0d44b437667f0d893955f133eafcd4a05210601f7eaeff2ce5fba6c2ee0b8d`

```dockerfile
```

-	Layers:
	-	`sha256:174a08d1205d49cd2f783f23ada332cbe8434c648bcf8ead12e5ec4bea63577f`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 18.6 MB (18616889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dd8d0625756a6859ec9bc01ebd2f98bf35f288fff057850f7b04b769e8111c9`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d88827f91d975f8773ad5de6dd88716616b898942e5b6169b2ebfea6d3f59dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158955869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab198de230a16d86b3a887e976d38c674e98f937f53371ac659a891fc0af0c8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:17 GMT
ENV ROS_DISTRO=kilted
# Fri, 20 Nov 2026 03:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2104e12fde6b77996243b7246957bb13dfcb649787c5da5172a9c07371bc91d`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 683.5 KB (683463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b190142aaf8330cba415694606f920c0e93c5e38d03397d276ca3a87c3b0bfc`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 6.7 MB (6729397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1fc233b6e229d15c168e43807776fb87cf090366303956bbf7f88bf907d8e7`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 94.9 KB (94878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70085dcdb9504541011d2ef0c1f5b49ae7928366c50e725a638b631012731a6e`  
		Last Modified: Fri, 20 Nov 2026 03:32:48 GMT  
		Size: 122.5 MB (122482617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c788e9b32d0a18c56b30bf97dbd7549bfbd5f213b18a3c8fa542b4f0d26151`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:761fef82e6dd789e66418c0ffe024b63f7820b81c28250a9155302e1a20f3608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f027b3842359d5a1b49c0dcde39f1791856fcb338152110d96c62ce8be75d30`

```dockerfile
```

-	Layers:
	-	`sha256:4c5142511fb73cc4fcd5fc6c2128574a93c5c20660d69f38c0c37769509ed9a0`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 18.6 MB (18590900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a1abc07f34848c2a940c291e58e3905b70f91c0400a593daaba26f6d7e1e88`  
		Last Modified: Fri, 20 Nov 2026 03:32:45 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:c69a7a39142b0a19c8cc5e80a35e9087e2ae46080dfa0a59961ff72287fdc5f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:b833f8cb674e626c084d738f98e32b5e8fcb48577d0a64811720d843ec6f668f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.7 MB (343687117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9562dcf3fa24fad9afa991cc78505415ee0d22f50a73b4e36a4d424c87b91b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6554467aa48e5594ff70ef0fbaeb49ebc98206540ee868cdcf24cf26e9c9a5`  
		Last Modified: Thu, 12 Nov 2026 00:33:01 GMT  
		Size: 127.3 MB (127332854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f8470c354621c8399408a42011a0aba2716ba8392108cd1c5b80ffdb02e52`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 387.5 KB (387470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70296cbcf95f84a035a7db0af51411f0ca6f9088901ba7096a567d229d8effc0`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 130.9 KB (130897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6a64b3613986fe092926805d0134f337b8f0069fcc26bba8a2b6e128021386`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 25.8 MB (25804694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:00b08631d69b309b7be6b177c5248535cf5d4ff8c6f69342daa6910d5e235b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15985fd2f6e9d94ac38ff37455b8835644ffa3fa17e6a6f50015b880ddab3239`

```dockerfile
```

-	Layers:
	-	`sha256:0339debd3c9f95ffabe7c140536db9a5ab7af301e93ece08968d4577f7f15848`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 29.2 MB (29175655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:483382cdaae79d8dd5b9e06dabf1911304224820bef75ff4a9efd80c9eaf2df7`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 17.4 KB (17448 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3865fe72d2ea57ac66f61876c45ad8adba6b59f738f3626bfc998e144426ccf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.2 MB (328168720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b243f7e9c54de247405f2ce5597c18983e44777b5702e9d278961ab0facdbbba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52073ec93729187202e9feec534e3d6b8fb9d16ad83352d78a165d2aab04fd`  
		Last Modified: Thu, 12 Nov 2026 00:47:59 GMT  
		Size: 120.7 MB (120713742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca46ba46014fe31ab6673ccc6f638f479eefb27c5e3b3a90ac4ecaa97fe0a826`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 387.5 KB (387480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329c2962e827e0f114119908b95f2eea8b19d242d7c355f044e534e9f938b627`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1483096fd6998ebc184bf8702bfad57978c5d11cda4e39a404ba95530665c0`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 24.7 MB (24744842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:b95b74adb3bf12ba661726e1340261fda9dc275caa0241a18b65f11121daa1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338e5a22ef07686fb79de0ee16ddc0feacbe47f96f57005bc83d62acaad8d45d`

```dockerfile
```

-	Layers:
	-	`sha256:9ee6a234b269450330500b822c0a1a78cf2597477935ea0b8a06cc7e9122169a`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 29.2 MB (29240287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e8fd04caaaeb14768399be06992222b8eef87c9e8e157d52ffe64fca1b62e0`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:c69a7a39142b0a19c8cc5e80a35e9087e2ae46080dfa0a59961ff72287fdc5f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:b833f8cb674e626c084d738f98e32b5e8fcb48577d0a64811720d843ec6f668f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.7 MB (343687117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9562dcf3fa24fad9afa991cc78505415ee0d22f50a73b4e36a4d424c87b91b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6554467aa48e5594ff70ef0fbaeb49ebc98206540ee868cdcf24cf26e9c9a5`  
		Last Modified: Thu, 12 Nov 2026 00:33:01 GMT  
		Size: 127.3 MB (127332854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f8470c354621c8399408a42011a0aba2716ba8392108cd1c5b80ffdb02e52`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 387.5 KB (387470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70296cbcf95f84a035a7db0af51411f0ca6f9088901ba7096a567d229d8effc0`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 130.9 KB (130897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6a64b3613986fe092926805d0134f337b8f0069fcc26bba8a2b6e128021386`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 25.8 MB (25804694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:00b08631d69b309b7be6b177c5248535cf5d4ff8c6f69342daa6910d5e235b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15985fd2f6e9d94ac38ff37455b8835644ffa3fa17e6a6f50015b880ddab3239`

```dockerfile
```

-	Layers:
	-	`sha256:0339debd3c9f95ffabe7c140536db9a5ab7af301e93ece08968d4577f7f15848`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 29.2 MB (29175655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:483382cdaae79d8dd5b9e06dabf1911304224820bef75ff4a9efd80c9eaf2df7`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 17.4 KB (17448 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3865fe72d2ea57ac66f61876c45ad8adba6b59f738f3626bfc998e144426ccf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.2 MB (328168720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b243f7e9c54de247405f2ce5597c18983e44777b5702e9d278961ab0facdbbba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52073ec93729187202e9feec534e3d6b8fb9d16ad83352d78a165d2aab04fd`  
		Last Modified: Thu, 12 Nov 2026 00:47:59 GMT  
		Size: 120.7 MB (120713742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca46ba46014fe31ab6673ccc6f638f479eefb27c5e3b3a90ac4ecaa97fe0a826`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 387.5 KB (387480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329c2962e827e0f114119908b95f2eea8b19d242d7c355f044e534e9f938b627`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1483096fd6998ebc184bf8702bfad57978c5d11cda4e39a404ba95530665c0`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 24.7 MB (24744842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:b95b74adb3bf12ba661726e1340261fda9dc275caa0241a18b65f11121daa1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338e5a22ef07686fb79de0ee16ddc0feacbe47f96f57005bc83d62acaad8d45d`

```dockerfile
```

-	Layers:
	-	`sha256:9ee6a234b269450330500b822c0a1a78cf2597477935ea0b8a06cc7e9122169a`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 29.2 MB (29240287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e8fd04caaaeb14768399be06992222b8eef87c9e8e157d52ffe64fca1b62e0`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:7bab838ac339427781d5f87c8118ac099cc40854863fc53aa1c7bbded680052d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:5216d75da98bf97b885a515a5706cdb780d0c63108177a28f59a5023f2b50a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1792802167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14c7b5a5a11cef53ab6fee8559232fa8e8c8c4f86fd7c19d3f3b3d89c65d636`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6554467aa48e5594ff70ef0fbaeb49ebc98206540ee868cdcf24cf26e9c9a5`  
		Last Modified: Thu, 12 Nov 2026 00:33:01 GMT  
		Size: 127.3 MB (127332854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f8470c354621c8399408a42011a0aba2716ba8392108cd1c5b80ffdb02e52`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 387.5 KB (387470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70296cbcf95f84a035a7db0af51411f0ca6f9088901ba7096a567d229d8effc0`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 130.9 KB (130897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6a64b3613986fe092926805d0134f337b8f0069fcc26bba8a2b6e128021386`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 25.8 MB (25804694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55dd2d4224de45c9c5293dd477de82f8a96a1c7e964b05f666acf232a8d52401`  
		Last Modified: Thu, 12 Nov 2026 01:27:00 GMT  
		Size: 1.4 GB (1449115050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:1b64f014698f77eecfc74efc46e5f2f2b99dc400faf01279212cba6f82b2c47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64395666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79caff29409df4091d58756a800c3cc5bed05a92dd56f46e0f3606958425e572`

```dockerfile
```

-	Layers:
	-	`sha256:c1d3aaa6f2465bce0e6338db2d462d50cb26f41255dc334dca448ea9ebce1eaf`  
		Last Modified: Thu, 12 Nov 2026 01:26:37 GMT  
		Size: 64.4 MB (64385973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8add8af89e47988d6c63b08ea66d8b55a26ce4d7727c9308175207959ac9826`  
		Last Modified: Thu, 12 Nov 2026 01:26:34 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:622b8fa556c9566bc029cd77d3e5e20f11fab60a0b0ca41c4d776ccec81d54e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1700872888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bf8e4957ef80f142bd89e8bf30be7900784c1421785b80884d723af997fc27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52073ec93729187202e9feec534e3d6b8fb9d16ad83352d78a165d2aab04fd`  
		Last Modified: Thu, 12 Nov 2026 00:47:59 GMT  
		Size: 120.7 MB (120713742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca46ba46014fe31ab6673ccc6f638f479eefb27c5e3b3a90ac4ecaa97fe0a826`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 387.5 KB (387480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329c2962e827e0f114119908b95f2eea8b19d242d7c355f044e534e9f938b627`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1483096fd6998ebc184bf8702bfad57978c5d11cda4e39a404ba95530665c0`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 24.7 MB (24744842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0579e1c64d2142446d863e89a69644815f7dbdf77a7e4925e1eb26aa78939f7`  
		Last Modified: Thu, 12 Nov 2026 01:27:32 GMT  
		Size: 1.4 GB (1372704168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:9d847044f9f574213e3cb98800e2586e16f381b62eb86b45946408a40bfd8892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64309964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87337f156b44679d342f68ab7a9657d647ca26246eeb13e142f57035b8e9f77`

```dockerfile
```

-	Layers:
	-	`sha256:c3460c68e5809d597c4f5db50d5e44b7f1d580fd3c14bbfa1a172ba2a6e9d9a6`  
		Last Modified: Thu, 12 Nov 2026 01:27:07 GMT  
		Size: 64.3 MB (64300191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bb87be45291b1660f5131615a93b967d5610cb74f24a32e2b7b218fa6562df5`  
		Last Modified: Thu, 12 Nov 2026 01:27:04 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:7bab838ac339427781d5f87c8118ac099cc40854863fc53aa1c7bbded680052d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:5216d75da98bf97b885a515a5706cdb780d0c63108177a28f59a5023f2b50a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1792802167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14c7b5a5a11cef53ab6fee8559232fa8e8c8c4f86fd7c19d3f3b3d89c65d636`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6554467aa48e5594ff70ef0fbaeb49ebc98206540ee868cdcf24cf26e9c9a5`  
		Last Modified: Thu, 12 Nov 2026 00:33:01 GMT  
		Size: 127.3 MB (127332854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f8470c354621c8399408a42011a0aba2716ba8392108cd1c5b80ffdb02e52`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 387.5 KB (387470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70296cbcf95f84a035a7db0af51411f0ca6f9088901ba7096a567d229d8effc0`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 130.9 KB (130897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6a64b3613986fe092926805d0134f337b8f0069fcc26bba8a2b6e128021386`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 25.8 MB (25804694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55dd2d4224de45c9c5293dd477de82f8a96a1c7e964b05f666acf232a8d52401`  
		Last Modified: Thu, 12 Nov 2026 01:27:00 GMT  
		Size: 1.4 GB (1449115050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:1b64f014698f77eecfc74efc46e5f2f2b99dc400faf01279212cba6f82b2c47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64395666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79caff29409df4091d58756a800c3cc5bed05a92dd56f46e0f3606958425e572`

```dockerfile
```

-	Layers:
	-	`sha256:c1d3aaa6f2465bce0e6338db2d462d50cb26f41255dc334dca448ea9ebce1eaf`  
		Last Modified: Thu, 12 Nov 2026 01:26:37 GMT  
		Size: 64.4 MB (64385973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8add8af89e47988d6c63b08ea66d8b55a26ce4d7727c9308175207959ac9826`  
		Last Modified: Thu, 12 Nov 2026 01:26:34 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:622b8fa556c9566bc029cd77d3e5e20f11fab60a0b0ca41c4d776ccec81d54e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1700872888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bf8e4957ef80f142bd89e8bf30be7900784c1421785b80884d723af997fc27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52073ec93729187202e9feec534e3d6b8fb9d16ad83352d78a165d2aab04fd`  
		Last Modified: Thu, 12 Nov 2026 00:47:59 GMT  
		Size: 120.7 MB (120713742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca46ba46014fe31ab6673ccc6f638f479eefb27c5e3b3a90ac4ecaa97fe0a826`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 387.5 KB (387480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329c2962e827e0f114119908b95f2eea8b19d242d7c355f044e534e9f938b627`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1483096fd6998ebc184bf8702bfad57978c5d11cda4e39a404ba95530665c0`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 24.7 MB (24744842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0579e1c64d2142446d863e89a69644815f7dbdf77a7e4925e1eb26aa78939f7`  
		Last Modified: Thu, 12 Nov 2026 01:27:32 GMT  
		Size: 1.4 GB (1372704168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:9d847044f9f574213e3cb98800e2586e16f381b62eb86b45946408a40bfd8892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64309964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87337f156b44679d342f68ab7a9657d647ca26246eeb13e142f57035b8e9f77`

```dockerfile
```

-	Layers:
	-	`sha256:c3460c68e5809d597c4f5db50d5e44b7f1d580fd3c14bbfa1a172ba2a6e9d9a6`  
		Last Modified: Thu, 12 Nov 2026 01:27:07 GMT  
		Size: 64.3 MB (64300191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bb87be45291b1660f5131615a93b967d5610cb74f24a32e2b7b218fa6562df5`  
		Last Modified: Thu, 12 Nov 2026 01:27:04 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:c69a7a39142b0a19c8cc5e80a35e9087e2ae46080dfa0a59961ff72287fdc5f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:b833f8cb674e626c084d738f98e32b5e8fcb48577d0a64811720d843ec6f668f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.7 MB (343687117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9562dcf3fa24fad9afa991cc78505415ee0d22f50a73b4e36a4d424c87b91b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6554467aa48e5594ff70ef0fbaeb49ebc98206540ee868cdcf24cf26e9c9a5`  
		Last Modified: Thu, 12 Nov 2026 00:33:01 GMT  
		Size: 127.3 MB (127332854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f8470c354621c8399408a42011a0aba2716ba8392108cd1c5b80ffdb02e52`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 387.5 KB (387470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70296cbcf95f84a035a7db0af51411f0ca6f9088901ba7096a567d229d8effc0`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 130.9 KB (130897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6a64b3613986fe092926805d0134f337b8f0069fcc26bba8a2b6e128021386`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 25.8 MB (25804694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:00b08631d69b309b7be6b177c5248535cf5d4ff8c6f69342daa6910d5e235b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15985fd2f6e9d94ac38ff37455b8835644ffa3fa17e6a6f50015b880ddab3239`

```dockerfile
```

-	Layers:
	-	`sha256:0339debd3c9f95ffabe7c140536db9a5ab7af301e93ece08968d4577f7f15848`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 29.2 MB (29175655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:483382cdaae79d8dd5b9e06dabf1911304224820bef75ff4a9efd80c9eaf2df7`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 17.4 KB (17448 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3865fe72d2ea57ac66f61876c45ad8adba6b59f738f3626bfc998e144426ccf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.2 MB (328168720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b243f7e9c54de247405f2ce5597c18983e44777b5702e9d278961ab0facdbbba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52073ec93729187202e9feec534e3d6b8fb9d16ad83352d78a165d2aab04fd`  
		Last Modified: Thu, 12 Nov 2026 00:47:59 GMT  
		Size: 120.7 MB (120713742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca46ba46014fe31ab6673ccc6f638f479eefb27c5e3b3a90ac4ecaa97fe0a826`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 387.5 KB (387480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329c2962e827e0f114119908b95f2eea8b19d242d7c355f044e534e9f938b627`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1483096fd6998ebc184bf8702bfad57978c5d11cda4e39a404ba95530665c0`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 24.7 MB (24744842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:b95b74adb3bf12ba661726e1340261fda9dc275caa0241a18b65f11121daa1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338e5a22ef07686fb79de0ee16ddc0feacbe47f96f57005bc83d62acaad8d45d`

```dockerfile
```

-	Layers:
	-	`sha256:9ee6a234b269450330500b822c0a1a78cf2597477935ea0b8a06cc7e9122169a`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 29.2 MB (29240287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e8fd04caaaeb14768399be06992222b8eef87c9e8e157d52ffe64fca1b62e0`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:c69a7a39142b0a19c8cc5e80a35e9087e2ae46080dfa0a59961ff72287fdc5f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:b833f8cb674e626c084d738f98e32b5e8fcb48577d0a64811720d843ec6f668f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.7 MB (343687117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9562dcf3fa24fad9afa991cc78505415ee0d22f50a73b4e36a4d424c87b91b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6554467aa48e5594ff70ef0fbaeb49ebc98206540ee868cdcf24cf26e9c9a5`  
		Last Modified: Thu, 12 Nov 2026 00:33:01 GMT  
		Size: 127.3 MB (127332854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f8470c354621c8399408a42011a0aba2716ba8392108cd1c5b80ffdb02e52`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 387.5 KB (387470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70296cbcf95f84a035a7db0af51411f0ca6f9088901ba7096a567d229d8effc0`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 130.9 KB (130897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6a64b3613986fe092926805d0134f337b8f0069fcc26bba8a2b6e128021386`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 25.8 MB (25804694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:00b08631d69b309b7be6b177c5248535cf5d4ff8c6f69342daa6910d5e235b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15985fd2f6e9d94ac38ff37455b8835644ffa3fa17e6a6f50015b880ddab3239`

```dockerfile
```

-	Layers:
	-	`sha256:0339debd3c9f95ffabe7c140536db9a5ab7af301e93ece08968d4577f7f15848`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 29.2 MB (29175655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:483382cdaae79d8dd5b9e06dabf1911304224820bef75ff4a9efd80c9eaf2df7`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 17.4 KB (17448 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3865fe72d2ea57ac66f61876c45ad8adba6b59f738f3626bfc998e144426ccf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.2 MB (328168720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b243f7e9c54de247405f2ce5597c18983e44777b5702e9d278961ab0facdbbba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52073ec93729187202e9feec534e3d6b8fb9d16ad83352d78a165d2aab04fd`  
		Last Modified: Thu, 12 Nov 2026 00:47:59 GMT  
		Size: 120.7 MB (120713742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca46ba46014fe31ab6673ccc6f638f479eefb27c5e3b3a90ac4ecaa97fe0a826`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 387.5 KB (387480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329c2962e827e0f114119908b95f2eea8b19d242d7c355f044e534e9f938b627`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1483096fd6998ebc184bf8702bfad57978c5d11cda4e39a404ba95530665c0`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 24.7 MB (24744842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:b95b74adb3bf12ba661726e1340261fda9dc275caa0241a18b65f11121daa1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338e5a22ef07686fb79de0ee16ddc0feacbe47f96f57005bc83d62acaad8d45d`

```dockerfile
```

-	Layers:
	-	`sha256:9ee6a234b269450330500b822c0a1a78cf2597477935ea0b8a06cc7e9122169a`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 29.2 MB (29240287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e8fd04caaaeb14768399be06992222b8eef87c9e8e157d52ffe64fca1b62e0`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:748f9a572881c3af47f2f98750d57c1b548a8a3311a0e52dae8d61deff09820c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:4a5a0e6b063d8875551b73bdc867c570af90fe90c14ddd7196d41834e4a70fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190031202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904dce139ad3f55eb82d0169b94156172a26ec7a23c2fcb6f1c992c69a9787ac`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:3d39f273557224ddb4c3465afb7120ad0fea3bc38f519f74269713777e673ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22789743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0202b131a964836d1b5e7994b67ff480b034b365d1e4e2b7123b7b9d286417ab`

```dockerfile
```

-	Layers:
	-	`sha256:f518ff325f85c73eca3781af38d2c583e3d6f3dfd3373f54f8bd2afc2c67e734`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 22.8 MB (22774161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c08215637fb3f15459cba7de11836049005c9c8b1510fae8f57c6c34c6515ad`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 15.6 KB (15582 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e15e6d5f2fd04e5cd2af8a6d20e189ce271ed78338138c9fd09679a0d74dc573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182191773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521ccfdab3e07c4c3bca0e91989f41212f31dcbc66d2bade4db4ba0a9fb59425`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:3322c83c8f31a1aee6bf74ecce438999eb7abf0f8832cf3ca7f7f7984ddecacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22762561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48260374b7a7bb6a137b68a2e3c3eaabaa14562946df439739be4982d3b5aabc`

```dockerfile
```

-	Layers:
	-	`sha256:1258fdb456d7fc9f2e9bd2180b43d59369b47ded565175590401d8b34705c46e`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 22.7 MB (22746853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f0f8fbe968b0c431401bfa45bc84ed250c1ff187194a753076f0b6847338919`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:748f9a572881c3af47f2f98750d57c1b548a8a3311a0e52dae8d61deff09820c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:4a5a0e6b063d8875551b73bdc867c570af90fe90c14ddd7196d41834e4a70fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (190031202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904dce139ad3f55eb82d0169b94156172a26ec7a23c2fcb6f1c992c69a9787ac`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3d39f273557224ddb4c3465afb7120ad0fea3bc38f519f74269713777e673ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22789743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0202b131a964836d1b5e7994b67ff480b034b365d1e4e2b7123b7b9d286417ab`

```dockerfile
```

-	Layers:
	-	`sha256:f518ff325f85c73eca3781af38d2c583e3d6f3dfd3373f54f8bd2afc2c67e734`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 22.8 MB (22774161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c08215637fb3f15459cba7de11836049005c9c8b1510fae8f57c6c34c6515ad`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 15.6 KB (15582 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e15e6d5f2fd04e5cd2af8a6d20e189ce271ed78338138c9fd09679a0d74dc573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182191773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521ccfdab3e07c4c3bca0e91989f41212f31dcbc66d2bade4db4ba0a9fb59425`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3322c83c8f31a1aee6bf74ecce438999eb7abf0f8832cf3ca7f7f7984ddecacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22762561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48260374b7a7bb6a137b68a2e3c3eaabaa14562946df439739be4982d3b5aabc`

```dockerfile
```

-	Layers:
	-	`sha256:1258fdb456d7fc9f2e9bd2180b43d59369b47ded565175590401d8b34705c46e`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 22.7 MB (22746853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f0f8fbe968b0c431401bfa45bc84ed250c1ff187194a753076f0b6847338919`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:50c2d0ace849ef6f978c3395ad94f026c4c37e389c713ab714b99385982363c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:142d18acd141d73e80bb1ebf5dee181f74c88bd9a1e5c0fa2b4c59953cd8708f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344588780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab6dcd8a10ad0602e0f9d2959091e334ffc7e868bf48e1dee0897005ebb069f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:22 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53a3c4c98f916474971ebb3a804c261d70b4f6b93953c2d62b052d299cf385`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 741.7 KB (741743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a85b36a3142818e2b277c28b50dba5fbe8547aa69dbc4ceb7516b9c665e17`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 9.8 MB (9786168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1bcec7a5d0186a3a974aaff9be093c8b5eed99fe60d256f67784309d24056`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 92.1 KB (92071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a561e1b9dcb0f6ea2f5bf16460ff4e6ed4106511e0ae3ee5b115ebf5fa563f6`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 138.0 MB (138007192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b2d829f1414d50010395b947940a61f81fc94e18607863b046642ddeeb424`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b42cd72caa67f5ffec3c1a9e59219f25dd442677c0d5d381a9156d9626067e5`  
		Last Modified: Thu, 12 Nov 2026 00:32:58 GMT  
		Size: 127.3 MB (127332249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf5a49175c378fc53e7ab1248529b7f0121bbee0ead61616dbf5aa1d6bd7237`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 368.6 KB (368562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea121cc1bcd4eab49697d9944d97bfd6c0d42e9f7e1a72a6f8c2855fa190dd4`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 130.9 KB (130899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08caaf4b42723a447537bbba2e1c9da4df862349be0c0298f9496160ca458f3`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 26.0 MB (25962734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:8f813aaef48553d81dc8f52f17bfb84dd0a44c74aeee325f9857ecadac06e2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29362503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c9f9115c3b0b15c4c289044c1e104d3b2ed0ea690a6380bf0968cf1ac77a9a`

```dockerfile
```

-	Layers:
	-	`sha256:26a3b40d6429ea632610b7fb94c006087a59023603720055120905a96f43a1b8`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 29.3 MB (29345345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:884aedd632f9f65cf0f7e7e3acf5d4fc850b9a7d98c7f0e7471f70d684c6c4f7`  
		Last Modified: Thu, 12 Nov 2026 00:32:54 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2211c7ff3a45151bc1f42de40c8f33568906539087c6fa8c7be745ced915dff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329073269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eaa737992c3eea420a48b115178ab7651be4fee909a3809208e7a8a0465ad60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:38 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcdfb96d1f27e9e2a66bb4def4ee65e024ffb59db2d91033f43552ff507de6`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 742.4 KB (742354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c7ddca11d3c692d805a2db41a9474bdd183367c225ff12774a3388601f4acd`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 9.6 MB (9611407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef52e62afac8bde2923ef7dffee4b58605dc5b134f354f91302333880471f9c`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 92.7 KB (92691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5961256ef3d29eedc4154a535d1e9137cb3f9039369d45193a15a5a8834da8f0`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 131.4 MB (131361086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ced8a7bd494cf748412c735857e682d543b833175c3c4359c4f355084418`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2330b38e7e9b827c544f8d987d264b08e1c2eed56cd5b75166f02b97b16b60f`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 120.7 MB (120712898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e640fd78987efe4f104597fce1f2d142cfcc871d648b3a3548a2c3ebe48afe0a`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 368.6 KB (368555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8ab6b8c7d88993ea1322813ef02b5750328c5c7c9ab4cd7a57a54b3374702e`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26713c49719b44362ab3a6155f3d34c9ac753b798ef2f4eca03a45baf657da53`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 24.9 MB (24906995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:776ee0e1cd82a470e245cb3c54e034cf29139d862d45b3099cb265fdc0b29d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bd27ed3a9172a2343321c2b4e2cf95522c876b3315f25d5d7cc14069e81df3`

```dockerfile
```

-	Layers:
	-	`sha256:3eea7cbdb34d3a48a94f1b99f403357631b9ab7c94e389c8a1aa07993ece68ec`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 29.4 MB (29409965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df3f8ce1042e37d8825ca53c75ed206eda93b073174495ca49570ef56f3f984`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:04c235e0bf3175a48b22a057ebc5b9c986e4e8217b08b367332882f795727431
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:c637cdd83c31a79e6013fa8bcd09ff3a1509157f80603b242f5214aa2bcbbf87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1793111318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c4eb406caac647ee198b3f8fb0a02f7ab3c36028dc3290541cc726f71e4164`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:22 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53a3c4c98f916474971ebb3a804c261d70b4f6b93953c2d62b052d299cf385`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 741.7 KB (741743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a85b36a3142818e2b277c28b50dba5fbe8547aa69dbc4ceb7516b9c665e17`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 9.8 MB (9786168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1bcec7a5d0186a3a974aaff9be093c8b5eed99fe60d256f67784309d24056`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 92.1 KB (92071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a561e1b9dcb0f6ea2f5bf16460ff4e6ed4106511e0ae3ee5b115ebf5fa563f6`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 138.0 MB (138007192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b2d829f1414d50010395b947940a61f81fc94e18607863b046642ddeeb424`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b42cd72caa67f5ffec3c1a9e59219f25dd442677c0d5d381a9156d9626067e5`  
		Last Modified: Thu, 12 Nov 2026 00:32:58 GMT  
		Size: 127.3 MB (127332249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf5a49175c378fc53e7ab1248529b7f0121bbee0ead61616dbf5aa1d6bd7237`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 368.6 KB (368562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea121cc1bcd4eab49697d9944d97bfd6c0d42e9f7e1a72a6f8c2855fa190dd4`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 130.9 KB (130899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08caaf4b42723a447537bbba2e1c9da4df862349be0c0298f9496160ca458f3`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 26.0 MB (25962734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a6a565e7a37913dea731231e7fa5200870817847c01db9cfde0ab78c56126a`  
		Last Modified: Thu, 12 Nov 2026 01:26:50 GMT  
		Size: 1.4 GB (1448522538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:bfa35ca9208b957a8f806ba25c5ba3279223e9b63bf4ebef035a4d131cd2b0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64575365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68f3a4d3ca1c6b0e4dd16c5f2e7f9c38a1035467183af6c5651b62e19e926468`

```dockerfile
```

-	Layers:
	-	`sha256:3374ee4860f0cf5c6ce36f6b9f69b7195fb835fd03e064570c8e602d0652c188`  
		Last Modified: Thu, 12 Nov 2026 01:26:27 GMT  
		Size: 64.6 MB (64565672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3907c1821c7a4d7ae15a394271f960fd2d2516f7f4830e2d379c5e1a2f01cf5`  
		Last Modified: Thu, 12 Nov 2026 01:26:24 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:22198d0429caf656a68a921a1f9f1f64da32792212b5a7dcaafabc56ca8e4843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1701265604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393da3557c0f260b2f51f7d22fe32a87ee51eb1f76354ca08d6356f903eddfd0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:38 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcdfb96d1f27e9e2a66bb4def4ee65e024ffb59db2d91033f43552ff507de6`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 742.4 KB (742354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c7ddca11d3c692d805a2db41a9474bdd183367c225ff12774a3388601f4acd`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 9.6 MB (9611407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef52e62afac8bde2923ef7dffee4b58605dc5b134f354f91302333880471f9c`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 92.7 KB (92691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5961256ef3d29eedc4154a535d1e9137cb3f9039369d45193a15a5a8834da8f0`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 131.4 MB (131361086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ced8a7bd494cf748412c735857e682d543b833175c3c4359c4f355084418`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2330b38e7e9b827c544f8d987d264b08e1c2eed56cd5b75166f02b97b16b60f`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 120.7 MB (120712898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e640fd78987efe4f104597fce1f2d142cfcc871d648b3a3548a2c3ebe48afe0a`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 368.6 KB (368555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8ab6b8c7d88993ea1322813ef02b5750328c5c7c9ab4cd7a57a54b3374702e`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26713c49719b44362ab3a6155f3d34c9ac753b798ef2f4eca03a45baf657da53`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 24.9 MB (24906995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90807b26f657736288f4d03237cf409df6452f4f6e95845a82365e01f3b6164`  
		Last Modified: Thu, 12 Nov 2026 01:27:17 GMT  
		Size: 1.4 GB (1372192335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:527d4761904d606b175743bd1c87020f8d8fc8a5c1b11a951bb02a1460da2104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64489663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108dfad8d1d4607909902cc012b2dc9fefcd6041977c06cbe1e23be0c3edf316`

```dockerfile
```

-	Layers:
	-	`sha256:ddd64ea2c602a02f1641cf36d566acc7dde269084a7304784bba08d7cf10081a`  
		Last Modified: Thu, 12 Nov 2026 01:26:54 GMT  
		Size: 64.5 MB (64479890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49497628da01ed95e9e8770c8c30adda7f2c4b25d5b2919fc867c4598b87c358`  
		Last Modified: Thu, 12 Nov 2026 01:26:51 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:04c235e0bf3175a48b22a057ebc5b9c986e4e8217b08b367332882f795727431
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:c637cdd83c31a79e6013fa8bcd09ff3a1509157f80603b242f5214aa2bcbbf87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1793111318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c4eb406caac647ee198b3f8fb0a02f7ab3c36028dc3290541cc726f71e4164`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:22 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53a3c4c98f916474971ebb3a804c261d70b4f6b93953c2d62b052d299cf385`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 741.7 KB (741743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a85b36a3142818e2b277c28b50dba5fbe8547aa69dbc4ceb7516b9c665e17`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 9.8 MB (9786168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1bcec7a5d0186a3a974aaff9be093c8b5eed99fe60d256f67784309d24056`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 92.1 KB (92071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a561e1b9dcb0f6ea2f5bf16460ff4e6ed4106511e0ae3ee5b115ebf5fa563f6`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 138.0 MB (138007192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b2d829f1414d50010395b947940a61f81fc94e18607863b046642ddeeb424`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b42cd72caa67f5ffec3c1a9e59219f25dd442677c0d5d381a9156d9626067e5`  
		Last Modified: Thu, 12 Nov 2026 00:32:58 GMT  
		Size: 127.3 MB (127332249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf5a49175c378fc53e7ab1248529b7f0121bbee0ead61616dbf5aa1d6bd7237`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 368.6 KB (368562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea121cc1bcd4eab49697d9944d97bfd6c0d42e9f7e1a72a6f8c2855fa190dd4`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 130.9 KB (130899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08caaf4b42723a447537bbba2e1c9da4df862349be0c0298f9496160ca458f3`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 26.0 MB (25962734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a6a565e7a37913dea731231e7fa5200870817847c01db9cfde0ab78c56126a`  
		Last Modified: Thu, 12 Nov 2026 01:26:50 GMT  
		Size: 1.4 GB (1448522538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:bfa35ca9208b957a8f806ba25c5ba3279223e9b63bf4ebef035a4d131cd2b0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64575365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68f3a4d3ca1c6b0e4dd16c5f2e7f9c38a1035467183af6c5651b62e19e926468`

```dockerfile
```

-	Layers:
	-	`sha256:3374ee4860f0cf5c6ce36f6b9f69b7195fb835fd03e064570c8e602d0652c188`  
		Last Modified: Thu, 12 Nov 2026 01:26:27 GMT  
		Size: 64.6 MB (64565672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3907c1821c7a4d7ae15a394271f960fd2d2516f7f4830e2d379c5e1a2f01cf5`  
		Last Modified: Thu, 12 Nov 2026 01:26:24 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:22198d0429caf656a68a921a1f9f1f64da32792212b5a7dcaafabc56ca8e4843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1701265604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393da3557c0f260b2f51f7d22fe32a87ee51eb1f76354ca08d6356f903eddfd0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:38 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcdfb96d1f27e9e2a66bb4def4ee65e024ffb59db2d91033f43552ff507de6`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 742.4 KB (742354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c7ddca11d3c692d805a2db41a9474bdd183367c225ff12774a3388601f4acd`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 9.6 MB (9611407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef52e62afac8bde2923ef7dffee4b58605dc5b134f354f91302333880471f9c`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 92.7 KB (92691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5961256ef3d29eedc4154a535d1e9137cb3f9039369d45193a15a5a8834da8f0`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 131.4 MB (131361086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ced8a7bd494cf748412c735857e682d543b833175c3c4359c4f355084418`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2330b38e7e9b827c544f8d987d264b08e1c2eed56cd5b75166f02b97b16b60f`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 120.7 MB (120712898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e640fd78987efe4f104597fce1f2d142cfcc871d648b3a3548a2c3ebe48afe0a`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 368.6 KB (368555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8ab6b8c7d88993ea1322813ef02b5750328c5c7c9ab4cd7a57a54b3374702e`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26713c49719b44362ab3a6155f3d34c9ac753b798ef2f4eca03a45baf657da53`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 24.9 MB (24906995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90807b26f657736288f4d03237cf409df6452f4f6e95845a82365e01f3b6164`  
		Last Modified: Thu, 12 Nov 2026 01:27:17 GMT  
		Size: 1.4 GB (1372192335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:527d4761904d606b175743bd1c87020f8d8fc8a5c1b11a951bb02a1460da2104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64489663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108dfad8d1d4607909902cc012b2dc9fefcd6041977c06cbe1e23be0c3edf316`

```dockerfile
```

-	Layers:
	-	`sha256:ddd64ea2c602a02f1641cf36d566acc7dde269084a7304784bba08d7cf10081a`  
		Last Modified: Thu, 12 Nov 2026 01:26:54 GMT  
		Size: 64.5 MB (64479890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49497628da01ed95e9e8770c8c30adda7f2c4b25d5b2919fc867c4598b87c358`  
		Last Modified: Thu, 12 Nov 2026 01:26:51 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:50c2d0ace849ef6f978c3395ad94f026c4c37e389c713ab714b99385982363c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:142d18acd141d73e80bb1ebf5dee181f74c88bd9a1e5c0fa2b4c59953cd8708f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344588780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab6dcd8a10ad0602e0f9d2959091e334ffc7e868bf48e1dee0897005ebb069f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:22 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53a3c4c98f916474971ebb3a804c261d70b4f6b93953c2d62b052d299cf385`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 741.7 KB (741743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a85b36a3142818e2b277c28b50dba5fbe8547aa69dbc4ceb7516b9c665e17`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 9.8 MB (9786168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1bcec7a5d0186a3a974aaff9be093c8b5eed99fe60d256f67784309d24056`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 92.1 KB (92071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a561e1b9dcb0f6ea2f5bf16460ff4e6ed4106511e0ae3ee5b115ebf5fa563f6`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 138.0 MB (138007192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b2d829f1414d50010395b947940a61f81fc94e18607863b046642ddeeb424`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b42cd72caa67f5ffec3c1a9e59219f25dd442677c0d5d381a9156d9626067e5`  
		Last Modified: Thu, 12 Nov 2026 00:32:58 GMT  
		Size: 127.3 MB (127332249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf5a49175c378fc53e7ab1248529b7f0121bbee0ead61616dbf5aa1d6bd7237`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 368.6 KB (368562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea121cc1bcd4eab49697d9944d97bfd6c0d42e9f7e1a72a6f8c2855fa190dd4`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 130.9 KB (130899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08caaf4b42723a447537bbba2e1c9da4df862349be0c0298f9496160ca458f3`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 26.0 MB (25962734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:8f813aaef48553d81dc8f52f17bfb84dd0a44c74aeee325f9857ecadac06e2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29362503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c9f9115c3b0b15c4c289044c1e104d3b2ed0ea690a6380bf0968cf1ac77a9a`

```dockerfile
```

-	Layers:
	-	`sha256:26a3b40d6429ea632610b7fb94c006087a59023603720055120905a96f43a1b8`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 29.3 MB (29345345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:884aedd632f9f65cf0f7e7e3acf5d4fc850b9a7d98c7f0e7471f70d684c6c4f7`  
		Last Modified: Thu, 12 Nov 2026 00:32:54 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2211c7ff3a45151bc1f42de40c8f33568906539087c6fa8c7be745ced915dff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329073269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eaa737992c3eea420a48b115178ab7651be4fee909a3809208e7a8a0465ad60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:38 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcdfb96d1f27e9e2a66bb4def4ee65e024ffb59db2d91033f43552ff507de6`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 742.4 KB (742354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c7ddca11d3c692d805a2db41a9474bdd183367c225ff12774a3388601f4acd`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 9.6 MB (9611407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef52e62afac8bde2923ef7dffee4b58605dc5b134f354f91302333880471f9c`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 92.7 KB (92691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5961256ef3d29eedc4154a535d1e9137cb3f9039369d45193a15a5a8834da8f0`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 131.4 MB (131361086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ced8a7bd494cf748412c735857e682d543b833175c3c4359c4f355084418`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2330b38e7e9b827c544f8d987d264b08e1c2eed56cd5b75166f02b97b16b60f`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 120.7 MB (120712898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e640fd78987efe4f104597fce1f2d142cfcc871d648b3a3548a2c3ebe48afe0a`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 368.6 KB (368555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8ab6b8c7d88993ea1322813ef02b5750328c5c7c9ab4cd7a57a54b3374702e`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26713c49719b44362ab3a6155f3d34c9ac753b798ef2f4eca03a45baf657da53`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 24.9 MB (24906995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:776ee0e1cd82a470e245cb3c54e034cf29139d862d45b3099cb265fdc0b29d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bd27ed3a9172a2343321c2b4e2cf95522c876b3315f25d5d7cc14069e81df3`

```dockerfile
```

-	Layers:
	-	`sha256:3eea7cbdb34d3a48a94f1b99f403357631b9ab7c94e389c8a1aa07993ece68ec`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 29.4 MB (29409965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df3f8ce1042e37d8825ca53c75ed206eda93b073174495ca49570ef56f3f984`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:50c2d0ace849ef6f978c3395ad94f026c4c37e389c713ab714b99385982363c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:142d18acd141d73e80bb1ebf5dee181f74c88bd9a1e5c0fa2b4c59953cd8708f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344588780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab6dcd8a10ad0602e0f9d2959091e334ffc7e868bf48e1dee0897005ebb069f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:22 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53a3c4c98f916474971ebb3a804c261d70b4f6b93953c2d62b052d299cf385`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 741.7 KB (741743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a85b36a3142818e2b277c28b50dba5fbe8547aa69dbc4ceb7516b9c665e17`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 9.8 MB (9786168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1bcec7a5d0186a3a974aaff9be093c8b5eed99fe60d256f67784309d24056`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 92.1 KB (92071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a561e1b9dcb0f6ea2f5bf16460ff4e6ed4106511e0ae3ee5b115ebf5fa563f6`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 138.0 MB (138007192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b2d829f1414d50010395b947940a61f81fc94e18607863b046642ddeeb424`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b42cd72caa67f5ffec3c1a9e59219f25dd442677c0d5d381a9156d9626067e5`  
		Last Modified: Thu, 12 Nov 2026 00:32:58 GMT  
		Size: 127.3 MB (127332249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf5a49175c378fc53e7ab1248529b7f0121bbee0ead61616dbf5aa1d6bd7237`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 368.6 KB (368562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea121cc1bcd4eab49697d9944d97bfd6c0d42e9f7e1a72a6f8c2855fa190dd4`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 130.9 KB (130899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08caaf4b42723a447537bbba2e1c9da4df862349be0c0298f9496160ca458f3`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 26.0 MB (25962734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:8f813aaef48553d81dc8f52f17bfb84dd0a44c74aeee325f9857ecadac06e2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29362503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c9f9115c3b0b15c4c289044c1e104d3b2ed0ea690a6380bf0968cf1ac77a9a`

```dockerfile
```

-	Layers:
	-	`sha256:26a3b40d6429ea632610b7fb94c006087a59023603720055120905a96f43a1b8`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 29.3 MB (29345345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:884aedd632f9f65cf0f7e7e3acf5d4fc850b9a7d98c7f0e7471f70d684c6c4f7`  
		Last Modified: Thu, 12 Nov 2026 00:32:54 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2211c7ff3a45151bc1f42de40c8f33568906539087c6fa8c7be745ced915dff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329073269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eaa737992c3eea420a48b115178ab7651be4fee909a3809208e7a8a0465ad60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:38 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcdfb96d1f27e9e2a66bb4def4ee65e024ffb59db2d91033f43552ff507de6`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 742.4 KB (742354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c7ddca11d3c692d805a2db41a9474bdd183367c225ff12774a3388601f4acd`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 9.6 MB (9611407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef52e62afac8bde2923ef7dffee4b58605dc5b134f354f91302333880471f9c`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 92.7 KB (92691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5961256ef3d29eedc4154a535d1e9137cb3f9039369d45193a15a5a8834da8f0`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 131.4 MB (131361086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ced8a7bd494cf748412c735857e682d543b833175c3c4359c4f355084418`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2330b38e7e9b827c544f8d987d264b08e1c2eed56cd5b75166f02b97b16b60f`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 120.7 MB (120712898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e640fd78987efe4f104597fce1f2d142cfcc871d648b3a3548a2c3ebe48afe0a`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 368.6 KB (368555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8ab6b8c7d88993ea1322813ef02b5750328c5c7c9ab4cd7a57a54b3374702e`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26713c49719b44362ab3a6155f3d34c9ac753b798ef2f4eca03a45baf657da53`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 24.9 MB (24906995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:776ee0e1cd82a470e245cb3c54e034cf29139d862d45b3099cb265fdc0b29d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bd27ed3a9172a2343321c2b4e2cf95522c876b3315f25d5d7cc14069e81df3`

```dockerfile
```

-	Layers:
	-	`sha256:3eea7cbdb34d3a48a94f1b99f403357631b9ab7c94e389c8a1aa07993ece68ec`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 29.4 MB (29409965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df3f8ce1042e37d8825ca53c75ed206eda93b073174495ca49570ef56f3f984`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:365c44cbb91820fdebf119b1d3704320985cde0be5e33c064f542e6decdd0108
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a31af4b62cc97239833937d505ac948594c05b8cce9ddbf149af699654a62c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190794336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbe7cbb4e79817f0efa7e048550e5e9b79ed225ceaf70924de29bf982b38ad8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53a3c4c98f916474971ebb3a804c261d70b4f6b93953c2d62b052d299cf385`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 741.7 KB (741743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a85b36a3142818e2b277c28b50dba5fbe8547aa69dbc4ceb7516b9c665e17`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 9.8 MB (9786168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1bcec7a5d0186a3a974aaff9be093c8b5eed99fe60d256f67784309d24056`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 92.1 KB (92071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a561e1b9dcb0f6ea2f5bf16460ff4e6ed4106511e0ae3ee5b115ebf5fa563f6`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 138.0 MB (138007192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b2d829f1414d50010395b947940a61f81fc94e18607863b046642ddeeb424`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:441be6720de0bf318d556ec07805eeb53bc0cf7fc3846c90ca6762cf33216b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22884209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c70bdfb335221b232b7258cf34c22cc8a3f20ea47ceee98e9ce3666beafa516`

```dockerfile
```

-	Layers:
	-	`sha256:6e1f269fda04ccbbe0685d0af8536c16e96f345153cc3a3819601abd676732a5`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 22.9 MB (22868530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5827308d14341877956a59a15ebd54abdf0de9dbe381833eff733a7f6a466f4`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f1b6d0d330bc5c3613aa516a3ed5b6a0b8d321610ddcd7d1367bb330f102e921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182953932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dcadd0970ed8a7c42ce0754976d89cd7deed75968fbb6a816e364d17899253`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:38 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcdfb96d1f27e9e2a66bb4def4ee65e024ffb59db2d91033f43552ff507de6`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 742.4 KB (742354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c7ddca11d3c692d805a2db41a9474bdd183367c225ff12774a3388601f4acd`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 9.6 MB (9611407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef52e62afac8bde2923ef7dffee4b58605dc5b134f354f91302333880471f9c`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 92.7 KB (92691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5961256ef3d29eedc4154a535d1e9137cb3f9039369d45193a15a5a8834da8f0`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 131.4 MB (131361086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ced8a7bd494cf748412c735857e682d543b833175c3c4359c4f355084418`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:9d0d556d45d7554ff6d0e336c93fcf630c6aa15802f34151554aa362e0a19da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22857025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c0bdbe43062ba4fb3427766886b4d48fdccfb7874e76d744449fa7b1c29e6b`

```dockerfile
```

-	Layers:
	-	`sha256:8f99623f486db638a8c5ea0f3ecdf051caa13262e5049c863a9567f1e5734648`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 22.8 MB (22841222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ac0ae017b863239e34307f4c9cc055208e3eb2c62eec3685a3576bcd2c8c6ed`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 15.8 KB (15803 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:365c44cbb91820fdebf119b1d3704320985cde0be5e33c064f542e6decdd0108
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:a31af4b62cc97239833937d505ac948594c05b8cce9ddbf149af699654a62c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190794336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbe7cbb4e79817f0efa7e048550e5e9b79ed225ceaf70924de29bf982b38ad8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53a3c4c98f916474971ebb3a804c261d70b4f6b93953c2d62b052d299cf385`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 741.7 KB (741743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a85b36a3142818e2b277c28b50dba5fbe8547aa69dbc4ceb7516b9c665e17`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 9.8 MB (9786168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1bcec7a5d0186a3a974aaff9be093c8b5eed99fe60d256f67784309d24056`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 92.1 KB (92071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a561e1b9dcb0f6ea2f5bf16460ff4e6ed4106511e0ae3ee5b115ebf5fa563f6`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 138.0 MB (138007192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b2d829f1414d50010395b947940a61f81fc94e18607863b046642ddeeb424`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:441be6720de0bf318d556ec07805eeb53bc0cf7fc3846c90ca6762cf33216b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22884209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c70bdfb335221b232b7258cf34c22cc8a3f20ea47ceee98e9ce3666beafa516`

```dockerfile
```

-	Layers:
	-	`sha256:6e1f269fda04ccbbe0685d0af8536c16e96f345153cc3a3819601abd676732a5`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 22.9 MB (22868530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5827308d14341877956a59a15ebd54abdf0de9dbe381833eff733a7f6a466f4`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f1b6d0d330bc5c3613aa516a3ed5b6a0b8d321610ddcd7d1367bb330f102e921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182953932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dcadd0970ed8a7c42ce0754976d89cd7deed75968fbb6a816e364d17899253`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:38 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcdfb96d1f27e9e2a66bb4def4ee65e024ffb59db2d91033f43552ff507de6`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 742.4 KB (742354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c7ddca11d3c692d805a2db41a9474bdd183367c225ff12774a3388601f4acd`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 9.6 MB (9611407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef52e62afac8bde2923ef7dffee4b58605dc5b134f354f91302333880471f9c`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 92.7 KB (92691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5961256ef3d29eedc4154a535d1e9137cb3f9039369d45193a15a5a8834da8f0`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 131.4 MB (131361086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ced8a7bd494cf748412c735857e682d543b833175c3c4359c4f355084418`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:9d0d556d45d7554ff6d0e336c93fcf630c6aa15802f34151554aa362e0a19da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22857025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c0bdbe43062ba4fb3427766886b4d48fdccfb7874e76d744449fa7b1c29e6b`

```dockerfile
```

-	Layers:
	-	`sha256:8f99623f486db638a8c5ea0f3ecdf051caa13262e5049c863a9567f1e5734648`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 22.8 MB (22841222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ac0ae017b863239e34307f4c9cc055208e3eb2c62eec3685a3576bcd2c8c6ed`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 15.8 KB (15803 bytes)  
		MIME: application/vnd.in-toto+json
