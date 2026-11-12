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
$ docker pull ros@sha256:d9f14e84747bea639a65e00cf871d2c68ae55385d2acf6239614de0cadb41dcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:4dd8083b7009624fd5e4b3c163f280bc42d29250b9d60e3126b49ce345d948c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264510557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4086a5abfb55058660921298053046d6579687bc3cad158df0a3e0eaa3c0b9a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9694d7c0397148e5e05c8249af7a7a7d061f2d173ce2245f5ae094f50828b645`  
		Last Modified: Thu, 12 Nov 2026 00:32:13 GMT  
		Size: 98.2 MB (98203736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14863129d5ffa2c84a8312924ec454e3976ac13916bc2c32082fe4105b8d9ef7`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 375.8 KB (375750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb32d6be65386dd2b98409e3441b9311029aa5a5ea261433b886d6af4baef421`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e506290ceefe4014398b596d1e389da52e87b7245d881fe7a817a7ec751eb1d9`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 23.3 MB (23349955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:911bba7b5d5fe25b313c5f65e3ebd48a6f221214b302a498c70672eaf45572d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7442c11b7089b3dd349bd8227059b9a7d3466af1d749196fbdd19cdb9e68f3`

```dockerfile
```

-	Layers:
	-	`sha256:05745b3273dc15cceb7d9ffb97b9697a68c8f064bd1581a2ef7264b897fe0124`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 24.0 MB (23958071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df1731362d730c5b297ac3179cee9ecf962d8a6636fa0d68ba3c1e714f4a86d`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49b0b1254088467c293596e4d885aeb3737f5296143ef5cc1a59fa4aca9a1c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257248291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962eb74c14373a8a7971bb234d377e3ce797b8910c203a15f86f295b8c6fa3c2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3ee194d20566a24ffd1b470d04fb16787960390cd41c0a09cadfaa23804eb`  
		Last Modified: Thu, 12 Nov 2026 00:47:22 GMT  
		Size: 95.8 MB (95835971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d955d34dcd80c48a5d03c4e5c46179de74aab0ff1f4f6ccc1a5c85d53c1d579f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 375.8 KB (375755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d696da2f89d1cd2b714feb872b28ced58e3e005d879ffdc7c097e79aa76ffef2`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 2.7 KB (2685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47983836f043c9624170e0421e85700ad695a00bd7f91fe2cfb89c99da95818d`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 22.8 MB (22754910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:f11fef8ffdec4fd9b2ab42c78e6f3a82c86349208ac148c9c931adac767b12c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a3dac792270c6cf35d9c0f587b080377e57fdeacfdbf5c7f743ebde5dc5db9`

```dockerfile
```

-	Layers:
	-	`sha256:c6b9d56933c03126577c544fe1de5be47020f9880ed9db8ea680b8b63f89512e`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 24.0 MB (23971088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18563fece5fea0cdedbe4724341614c1921bd1520ec953cdb417af5f137c9b5f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:6f5ce0becdb49434de6a991edb877e133294715797405be947341d4e77eb6e58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:c7100b4154d95a35a34226662026cd399d3fa0741ba7f012c6c51e825e1455fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.7 MB (956705942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a8c3d7f50eb7c2455495d75ba0d02382414d08c39d94f276208e089368a9b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9694d7c0397148e5e05c8249af7a7a7d061f2d173ce2245f5ae094f50828b645`  
		Last Modified: Thu, 12 Nov 2026 00:32:13 GMT  
		Size: 98.2 MB (98203736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14863129d5ffa2c84a8312924ec454e3976ac13916bc2c32082fe4105b8d9ef7`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 375.8 KB (375750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb32d6be65386dd2b98409e3441b9311029aa5a5ea261433b886d6af4baef421`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e506290ceefe4014398b596d1e389da52e87b7245d881fe7a817a7ec751eb1d9`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 23.3 MB (23349955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee4dffcfef81b56e01663870ebe69713a2d216f558e3491d35bb00af671bd13`  
		Last Modified: Thu, 12 Nov 2026 01:22:24 GMT  
		Size: 692.2 MB (692195385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:c26511424b9129fcb645a983aa01a6fc2c4a15606c98f628e5a93c6fab0bd7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01155756483b0b25bb85d6fd9ca63ddcd409454c51844932fad4aec64f2c14d7`

```dockerfile
```

-	Layers:
	-	`sha256:28e98e7b7bb70ebd80b2fa72b44a903fb26f589aca935af708395a569db9e2ac`  
		Last Modified: Thu, 12 Nov 2026 01:22:13 GMT  
		Size: 59.1 MB (59062960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80730b5fa0e145a440453a24120196d6fb4f700105b158ba094a1ec7eac27aba`  
		Last Modified: Thu, 12 Nov 2026 01:22:11 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cdcb050c45dd4d35900973dd1ad9f0eef8fc1f7c350b225c745044cf9ff8375d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.5 MB (917489190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7a5e31211abeb9216cc0a29c1846abcfe08fea2bdadea54383ca16fcf1338c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3ee194d20566a24ffd1b470d04fb16787960390cd41c0a09cadfaa23804eb`  
		Last Modified: Thu, 12 Nov 2026 00:47:22 GMT  
		Size: 95.8 MB (95835971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d955d34dcd80c48a5d03c4e5c46179de74aab0ff1f4f6ccc1a5c85d53c1d579f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 375.8 KB (375755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d696da2f89d1cd2b714feb872b28ced58e3e005d879ffdc7c097e79aa76ffef2`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 2.7 KB (2685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47983836f043c9624170e0421e85700ad695a00bd7f91fe2cfb89c99da95818d`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 22.8 MB (22754910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9db8082861bbb8b0fcdad9b9427b5c0341fba77c3663984ec3c754d98b0037`  
		Last Modified: Thu, 12 Nov 2026 01:22:44 GMT  
		Size: 660.2 MB (660240899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:2fce3022134e17c872e47b44d8d0d2e450bb2163a3129b780bf772d82fc11883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59056717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee45965e6ecd1c2fbcdc293771f959e48ae0be344851541546ef7bbce3c7aee7`

```dockerfile
```

-	Layers:
	-	`sha256:d9f96bd6fa606bcca13d887b6469177cda78154ed1c7b79856f5c4b5adb41b9d`  
		Last Modified: Thu, 12 Nov 2026 01:22:32 GMT  
		Size: 59.0 MB (59047285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28f7be70e8870225c2b708c35a2fe597ccb21e01989036e57ccf04e7f9d691ca`  
		Last Modified: Thu, 12 Nov 2026 01:22:29 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:6f5ce0becdb49434de6a991edb877e133294715797405be947341d4e77eb6e58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:c7100b4154d95a35a34226662026cd399d3fa0741ba7f012c6c51e825e1455fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.7 MB (956705942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a8c3d7f50eb7c2455495d75ba0d02382414d08c39d94f276208e089368a9b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9694d7c0397148e5e05c8249af7a7a7d061f2d173ce2245f5ae094f50828b645`  
		Last Modified: Thu, 12 Nov 2026 00:32:13 GMT  
		Size: 98.2 MB (98203736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14863129d5ffa2c84a8312924ec454e3976ac13916bc2c32082fe4105b8d9ef7`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 375.8 KB (375750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb32d6be65386dd2b98409e3441b9311029aa5a5ea261433b886d6af4baef421`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e506290ceefe4014398b596d1e389da52e87b7245d881fe7a817a7ec751eb1d9`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 23.3 MB (23349955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee4dffcfef81b56e01663870ebe69713a2d216f558e3491d35bb00af671bd13`  
		Last Modified: Thu, 12 Nov 2026 01:22:24 GMT  
		Size: 692.2 MB (692195385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:c26511424b9129fcb645a983aa01a6fc2c4a15606c98f628e5a93c6fab0bd7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01155756483b0b25bb85d6fd9ca63ddcd409454c51844932fad4aec64f2c14d7`

```dockerfile
```

-	Layers:
	-	`sha256:28e98e7b7bb70ebd80b2fa72b44a903fb26f589aca935af708395a569db9e2ac`  
		Last Modified: Thu, 12 Nov 2026 01:22:13 GMT  
		Size: 59.1 MB (59062960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80730b5fa0e145a440453a24120196d6fb4f700105b158ba094a1ec7eac27aba`  
		Last Modified: Thu, 12 Nov 2026 01:22:11 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cdcb050c45dd4d35900973dd1ad9f0eef8fc1f7c350b225c745044cf9ff8375d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **917.5 MB (917489190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7a5e31211abeb9216cc0a29c1846abcfe08fea2bdadea54383ca16fcf1338c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3ee194d20566a24ffd1b470d04fb16787960390cd41c0a09cadfaa23804eb`  
		Last Modified: Thu, 12 Nov 2026 00:47:22 GMT  
		Size: 95.8 MB (95835971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d955d34dcd80c48a5d03c4e5c46179de74aab0ff1f4f6ccc1a5c85d53c1d579f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 375.8 KB (375755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d696da2f89d1cd2b714feb872b28ced58e3e005d879ffdc7c097e79aa76ffef2`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 2.7 KB (2685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47983836f043c9624170e0421e85700ad695a00bd7f91fe2cfb89c99da95818d`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 22.8 MB (22754910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9db8082861bbb8b0fcdad9b9427b5c0341fba77c3663984ec3c754d98b0037`  
		Last Modified: Thu, 12 Nov 2026 01:22:44 GMT  
		Size: 660.2 MB (660240899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:2fce3022134e17c872e47b44d8d0d2e450bb2163a3129b780bf772d82fc11883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59056717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee45965e6ecd1c2fbcdc293771f959e48ae0be344851541546ef7bbce3c7aee7`

```dockerfile
```

-	Layers:
	-	`sha256:d9f96bd6fa606bcca13d887b6469177cda78154ed1c7b79856f5c4b5adb41b9d`  
		Last Modified: Thu, 12 Nov 2026 01:22:32 GMT  
		Size: 59.0 MB (59047285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28f7be70e8870225c2b708c35a2fe597ccb21e01989036e57ccf04e7f9d691ca`  
		Last Modified: Thu, 12 Nov 2026 01:22:29 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:d9f14e84747bea639a65e00cf871d2c68ae55385d2acf6239614de0cadb41dcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:4dd8083b7009624fd5e4b3c163f280bc42d29250b9d60e3126b49ce345d948c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264510557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4086a5abfb55058660921298053046d6579687bc3cad158df0a3e0eaa3c0b9a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9694d7c0397148e5e05c8249af7a7a7d061f2d173ce2245f5ae094f50828b645`  
		Last Modified: Thu, 12 Nov 2026 00:32:13 GMT  
		Size: 98.2 MB (98203736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14863129d5ffa2c84a8312924ec454e3976ac13916bc2c32082fe4105b8d9ef7`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 375.8 KB (375750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb32d6be65386dd2b98409e3441b9311029aa5a5ea261433b886d6af4baef421`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e506290ceefe4014398b596d1e389da52e87b7245d881fe7a817a7ec751eb1d9`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 23.3 MB (23349955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:911bba7b5d5fe25b313c5f65e3ebd48a6f221214b302a498c70672eaf45572d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7442c11b7089b3dd349bd8227059b9a7d3466af1d749196fbdd19cdb9e68f3`

```dockerfile
```

-	Layers:
	-	`sha256:05745b3273dc15cceb7d9ffb97b9697a68c8f064bd1581a2ef7264b897fe0124`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 24.0 MB (23958071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df1731362d730c5b297ac3179cee9ecf962d8a6636fa0d68ba3c1e714f4a86d`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49b0b1254088467c293596e4d885aeb3737f5296143ef5cc1a59fa4aca9a1c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257248291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962eb74c14373a8a7971bb234d377e3ce797b8910c203a15f86f295b8c6fa3c2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3ee194d20566a24ffd1b470d04fb16787960390cd41c0a09cadfaa23804eb`  
		Last Modified: Thu, 12 Nov 2026 00:47:22 GMT  
		Size: 95.8 MB (95835971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d955d34dcd80c48a5d03c4e5c46179de74aab0ff1f4f6ccc1a5c85d53c1d579f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 375.8 KB (375755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d696da2f89d1cd2b714feb872b28ced58e3e005d879ffdc7c097e79aa76ffef2`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 2.7 KB (2685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47983836f043c9624170e0421e85700ad695a00bd7f91fe2cfb89c99da95818d`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 22.8 MB (22754910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:f11fef8ffdec4fd9b2ab42c78e6f3a82c86349208ac148c9c931adac767b12c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a3dac792270c6cf35d9c0f587b080377e57fdeacfdbf5c7f743ebde5dc5db9`

```dockerfile
```

-	Layers:
	-	`sha256:c6b9d56933c03126577c544fe1de5be47020f9880ed9db8ea680b8b63f89512e`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 24.0 MB (23971088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18563fece5fea0cdedbe4724341614c1921bd1520ec953cdb417af5f137c9b5f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:d9f14e84747bea639a65e00cf871d2c68ae55385d2acf6239614de0cadb41dcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:4dd8083b7009624fd5e4b3c163f280bc42d29250b9d60e3126b49ce345d948c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264510557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4086a5abfb55058660921298053046d6579687bc3cad158df0a3e0eaa3c0b9a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9694d7c0397148e5e05c8249af7a7a7d061f2d173ce2245f5ae094f50828b645`  
		Last Modified: Thu, 12 Nov 2026 00:32:13 GMT  
		Size: 98.2 MB (98203736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14863129d5ffa2c84a8312924ec454e3976ac13916bc2c32082fe4105b8d9ef7`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 375.8 KB (375750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb32d6be65386dd2b98409e3441b9311029aa5a5ea261433b886d6af4baef421`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e506290ceefe4014398b596d1e389da52e87b7245d881fe7a817a7ec751eb1d9`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 23.3 MB (23349955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:911bba7b5d5fe25b313c5f65e3ebd48a6f221214b302a498c70672eaf45572d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7442c11b7089b3dd349bd8227059b9a7d3466af1d749196fbdd19cdb9e68f3`

```dockerfile
```

-	Layers:
	-	`sha256:05745b3273dc15cceb7d9ffb97b9697a68c8f064bd1581a2ef7264b897fe0124`  
		Last Modified: Thu, 12 Nov 2026 00:32:11 GMT  
		Size: 24.0 MB (23958071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df1731362d730c5b297ac3179cee9ecf962d8a6636fa0d68ba3c1e714f4a86d`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49b0b1254088467c293596e4d885aeb3737f5296143ef5cc1a59fa4aca9a1c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257248291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962eb74c14373a8a7971bb234d377e3ce797b8910c203a15f86f295b8c6fa3c2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3ee194d20566a24ffd1b470d04fb16787960390cd41c0a09cadfaa23804eb`  
		Last Modified: Thu, 12 Nov 2026 00:47:22 GMT  
		Size: 95.8 MB (95835971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d955d34dcd80c48a5d03c4e5c46179de74aab0ff1f4f6ccc1a5c85d53c1d579f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 375.8 KB (375755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d696da2f89d1cd2b714feb872b28ced58e3e005d879ffdc7c097e79aa76ffef2`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 2.7 KB (2685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47983836f043c9624170e0421e85700ad695a00bd7f91fe2cfb89c99da95818d`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 22.8 MB (22754910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:f11fef8ffdec4fd9b2ab42c78e6f3a82c86349208ac148c9c931adac767b12c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a3dac792270c6cf35d9c0f587b080377e57fdeacfdbf5c7f743ebde5dc5db9`

```dockerfile
```

-	Layers:
	-	`sha256:c6b9d56933c03126577c544fe1de5be47020f9880ed9db8ea680b8b63f89512e`  
		Last Modified: Thu, 12 Nov 2026 00:47:21 GMT  
		Size: 24.0 MB (23971088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18563fece5fea0cdedbe4724341614c1921bd1520ec953cdb417af5f137c9b5f`  
		Last Modified: Thu, 12 Nov 2026 00:47:19 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:94acac3899448b2097ef8e925d8a9854ecd1fd7cb1690c3bbd7f7079f11ef258
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:f4630e385d46e8832d94b465e0e4f25466e3848d61fdf360cd5599a64d2a5ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142578434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b621b717cd1167a6c484d2a9e80384f64838ea901756552bba99fae1c377837`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:9cbc69f404b13496e9030a4fbf2dfe1fdd841441c27f52f3e1b4693b42431890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2604f21bdabef4659db0ad77841e7ae6c76a8b3d1a667925e2f9bb82914cc3`

```dockerfile
```

-	Layers:
	-	`sha256:e7182fac9b3d20bc71f289b343386bab3e579fdb0565f5c69095e96a769e0cde`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 17.9 MB (17916890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f83c59532f7fae3ebbd92d75a994941693e11933c729329bdce979e68dd572f`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0b5ce6774dd605dda510b729950266826d68f0ba8d1018c581e7e361e5bab343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138278970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d8315a4e4b4e3e88398b0b84f44496c364ef411f238ab4dcdaad76f5adeddb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:e12a3404c3e6298a8c64db1b3981e4252849a7b4f16b3a1bc7f6bea76ffd5e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92522b7001da3a4ce0009d267a96b82caaad4f25a4edf3668889052d2593b538`

```dockerfile
```

-	Layers:
	-	`sha256:43292ba38a64d4b6d8bbe843d117c81bc15ab5bf34a62791e9ebbc9af1b376d4`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 17.9 MB (17903235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9109b023a84716020d538520e6cd7ad4609e9f9e99b5e50a970d7159b731f70c`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:94acac3899448b2097ef8e925d8a9854ecd1fd7cb1690c3bbd7f7079f11ef258
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:f4630e385d46e8832d94b465e0e4f25466e3848d61fdf360cd5599a64d2a5ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142578434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b621b717cd1167a6c484d2a9e80384f64838ea901756552bba99fae1c377837`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:9cbc69f404b13496e9030a4fbf2dfe1fdd841441c27f52f3e1b4693b42431890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2604f21bdabef4659db0ad77841e7ae6c76a8b3d1a667925e2f9bb82914cc3`

```dockerfile
```

-	Layers:
	-	`sha256:e7182fac9b3d20bc71f289b343386bab3e579fdb0565f5c69095e96a769e0cde`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 17.9 MB (17916890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f83c59532f7fae3ebbd92d75a994941693e11933c729329bdce979e68dd572f`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0b5ce6774dd605dda510b729950266826d68f0ba8d1018c581e7e361e5bab343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138278970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d8315a4e4b4e3e88398b0b84f44496c364ef411f238ab4dcdaad76f5adeddb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:e12a3404c3e6298a8c64db1b3981e4252849a7b4f16b3a1bc7f6bea76ffd5e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92522b7001da3a4ce0009d267a96b82caaad4f25a4edf3668889052d2593b538`

```dockerfile
```

-	Layers:
	-	`sha256:43292ba38a64d4b6d8bbe843d117c81bc15ab5bf34a62791e9ebbc9af1b376d4`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 17.9 MB (17903235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9109b023a84716020d538520e6cd7ad4609e9f9e99b5e50a970d7159b731f70c`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:00b8d47a6e6384a2834e3d01fa87ae767876543baa574f2d64a75c04ea33c698
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:01eb40af8388bbb2292e6e4f2a2a4e8798fdc19c31f003e8b3bdd02ca9fa8aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299151437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa9f89c8f5e23fe80bda543a048daba8e631ff3c4202047ef4c2f782d8452c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3395e3603f7ddee68e91a18b95ba0c2dc2ec54566fbf701bec32e93c38fa7c33`  
		Last Modified: Thu, 12 Nov 2026 00:32:21 GMT  
		Size: 112.6 MB (112646507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0420f9b38e85de01d2a4b79cec00e751eea05aa9cd2cb5ab57edecf0ca53442`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 410.4 KB (410396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab868a5642b733ce339cc22c8fd8af73e7dbf3bb9592a60999969eb4e59b3c4`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5eb3f320774966b4f8fd965818ecba12df997c8e27772aeb29bad69f058a56d`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 28.1 MB (28093822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:952ddcce8959b4e23fbda43eab42d2be16b53b48f503d7b4ae2891ee8c4d9083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d3beb103be65d35b0f6328693416d899aab98fe88f7f4c6547fbc3cb282763`

```dockerfile
```

-	Layers:
	-	`sha256:6bdc080dcb3b7c738b636c7ca73bfd43b09f906627a7053e638abced5fdc31bf`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 24.9 MB (24921920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46a2d31b41a57be2d934b21ab45122eef0895e52110b937ebf707bebeb3fdab6`  
		Last Modified: Thu, 12 Nov 2026 00:32:17 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ad26778b11c31291040e3fc2f9a395e6c9ca8b2b6a2b9774ba6737c2dd682bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285306311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c26aa902c8fd4c385171f04b924c18320ce60ff6257348c594cf56f577143b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8670560089795a5c3e8249669fece65a0433b64305ebea60f785eff4b8300bc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 105.7 MB (105661168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8788447c4d210130eabf42ff4dafd20b067ca8eb394eaa5b1e272d8749e34b3a`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 410.4 KB (410398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05953adbbd11b1df84353de1f190643dec588f7ab8dac273c3a75e522ea96c4`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d6c08929201b4108ea1a4752fb56f1d8016eea3e9e79cc8ab27e7aa12d286`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 27.2 MB (27197783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:82f41ec8e99c4626d33112bd31c78f5070b5a68c4921f1751de54ae14135b753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d34d203832a863b2696315a84720e3b234ca9b7032936d7c0b956fcc0885e0`

```dockerfile
```

-	Layers:
	-	`sha256:0d770d6c4e4dd2d828e624f922c749a0f5c56759f62bce35785f72d430bd5c30`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 24.9 MB (24944175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:997b3c7822098da997c5c91dd08211a96e4af906c08bc303122df8248ff3e06e`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 16.5 KB (16465 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:d4ddced30a2702cc76ee3fcede69b77e19711bbd70a8dd07064ef53d84fea1bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:931cf52b486ed9553cb3438edd30b19eb368959c2073a5bacd20576a23d2c87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084413391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71aa964d72ef26824ce8d3981d61c423e0891b242f0a7be4b32dfc3765c14c8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3395e3603f7ddee68e91a18b95ba0c2dc2ec54566fbf701bec32e93c38fa7c33`  
		Last Modified: Thu, 12 Nov 2026 00:32:21 GMT  
		Size: 112.6 MB (112646507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0420f9b38e85de01d2a4b79cec00e751eea05aa9cd2cb5ab57edecf0ca53442`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 410.4 KB (410396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab868a5642b733ce339cc22c8fd8af73e7dbf3bb9592a60999969eb4e59b3c4`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5eb3f320774966b4f8fd965818ecba12df997c8e27772aeb29bad69f058a56d`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 28.1 MB (28093822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e361e2ccba1363fbe7ea44adf9117893645ba21897ae9f79190d08a79420483`  
		Last Modified: Thu, 12 Nov 2026 01:22:53 GMT  
		Size: 785.3 MB (785261954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:0d65ee35db313fbc08ca9d0dfd56cd9fd97f2de1357b4ae6e7e7c9f282c69b7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61114591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1876e61a7d92cab4cfd26e21c0a6fb784dfb0f159e7eeb6549db42cb7b33b36c`

```dockerfile
```

-	Layers:
	-	`sha256:4c3704374e2a4eda87feeb0294331ce0cf418848ac9709ce1be84e99cc32c8f3`  
		Last Modified: Thu, 12 Nov 2026 01:22:39 GMT  
		Size: 61.1 MB (61105252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a445eae41d8102387352492bd87400b53d8b9722cbc4ed4f7831251c9e9e4f8f`  
		Last Modified: Thu, 12 Nov 2026 01:22:36 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6847bf90bf9e9757ae159213a5c2e3f44ddd83db2159e7202edbda8c63016131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.7 MB (984737073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea0cf77208b78c199c764dc06682aa5ca3472ff037de902f6880c00651ca1aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:20:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8670560089795a5c3e8249669fece65a0433b64305ebea60f785eff4b8300bc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 105.7 MB (105661168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8788447c4d210130eabf42ff4dafd20b067ca8eb394eaa5b1e272d8749e34b3a`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 410.4 KB (410398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05953adbbd11b1df84353de1f190643dec588f7ab8dac273c3a75e522ea96c4`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d6c08929201b4108ea1a4752fb56f1d8016eea3e9e79cc8ab27e7aa12d286`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 27.2 MB (27197783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517513b69f1f891a473acb562cb8a21340418aba5d79de197519c2f9970afec5`  
		Last Modified: Thu, 12 Nov 2026 01:23:06 GMT  
		Size: 699.4 MB (699430762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:3f58b04243d595e46b6fb31d2b359f5835442f480f00b8757b1b2211ed2992d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc59d899420cf765faaffd592a5bc3fcf1e890d2a87e2b830d7cebadae4f8a8`

```dockerfile
```

-	Layers:
	-	`sha256:9765d6e00e697d941fed40546540153bb9e1e15b8e90b26b5a6e0b1ee106ba30`  
		Last Modified: Thu, 12 Nov 2026 01:22:54 GMT  
		Size: 61.0 MB (61035771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52f43045fb9c0985a4077686de648e956385fdd0755055cf703344a6c0b6ffb6`  
		Last Modified: Thu, 12 Nov 2026 01:22:51 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:d4ddced30a2702cc76ee3fcede69b77e19711bbd70a8dd07064ef53d84fea1bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:931cf52b486ed9553cb3438edd30b19eb368959c2073a5bacd20576a23d2c87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084413391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71aa964d72ef26824ce8d3981d61c423e0891b242f0a7be4b32dfc3765c14c8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3395e3603f7ddee68e91a18b95ba0c2dc2ec54566fbf701bec32e93c38fa7c33`  
		Last Modified: Thu, 12 Nov 2026 00:32:21 GMT  
		Size: 112.6 MB (112646507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0420f9b38e85de01d2a4b79cec00e751eea05aa9cd2cb5ab57edecf0ca53442`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 410.4 KB (410396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab868a5642b733ce339cc22c8fd8af73e7dbf3bb9592a60999969eb4e59b3c4`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5eb3f320774966b4f8fd965818ecba12df997c8e27772aeb29bad69f058a56d`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 28.1 MB (28093822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e361e2ccba1363fbe7ea44adf9117893645ba21897ae9f79190d08a79420483`  
		Last Modified: Thu, 12 Nov 2026 01:22:53 GMT  
		Size: 785.3 MB (785261954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:0d65ee35db313fbc08ca9d0dfd56cd9fd97f2de1357b4ae6e7e7c9f282c69b7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61114591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1876e61a7d92cab4cfd26e21c0a6fb784dfb0f159e7eeb6549db42cb7b33b36c`

```dockerfile
```

-	Layers:
	-	`sha256:4c3704374e2a4eda87feeb0294331ce0cf418848ac9709ce1be84e99cc32c8f3`  
		Last Modified: Thu, 12 Nov 2026 01:22:39 GMT  
		Size: 61.1 MB (61105252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a445eae41d8102387352492bd87400b53d8b9722cbc4ed4f7831251c9e9e4f8f`  
		Last Modified: Thu, 12 Nov 2026 01:22:36 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6847bf90bf9e9757ae159213a5c2e3f44ddd83db2159e7202edbda8c63016131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.7 MB (984737073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea0cf77208b78c199c764dc06682aa5ca3472ff037de902f6880c00651ca1aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:20:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8670560089795a5c3e8249669fece65a0433b64305ebea60f785eff4b8300bc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 105.7 MB (105661168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8788447c4d210130eabf42ff4dafd20b067ca8eb394eaa5b1e272d8749e34b3a`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 410.4 KB (410398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05953adbbd11b1df84353de1f190643dec588f7ab8dac273c3a75e522ea96c4`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d6c08929201b4108ea1a4752fb56f1d8016eea3e9e79cc8ab27e7aa12d286`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 27.2 MB (27197783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517513b69f1f891a473acb562cb8a21340418aba5d79de197519c2f9970afec5`  
		Last Modified: Thu, 12 Nov 2026 01:23:06 GMT  
		Size: 699.4 MB (699430762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:3f58b04243d595e46b6fb31d2b359f5835442f480f00b8757b1b2211ed2992d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc59d899420cf765faaffd592a5bc3fcf1e890d2a87e2b830d7cebadae4f8a8`

```dockerfile
```

-	Layers:
	-	`sha256:9765d6e00e697d941fed40546540153bb9e1e15b8e90b26b5a6e0b1ee106ba30`  
		Last Modified: Thu, 12 Nov 2026 01:22:54 GMT  
		Size: 61.0 MB (61035771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52f43045fb9c0985a4077686de648e956385fdd0755055cf703344a6c0b6ffb6`  
		Last Modified: Thu, 12 Nov 2026 01:22:51 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:00b8d47a6e6384a2834e3d01fa87ae767876543baa574f2d64a75c04ea33c698
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:01eb40af8388bbb2292e6e4f2a2a4e8798fdc19c31f003e8b3bdd02ca9fa8aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299151437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa9f89c8f5e23fe80bda543a048daba8e631ff3c4202047ef4c2f782d8452c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3395e3603f7ddee68e91a18b95ba0c2dc2ec54566fbf701bec32e93c38fa7c33`  
		Last Modified: Thu, 12 Nov 2026 00:32:21 GMT  
		Size: 112.6 MB (112646507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0420f9b38e85de01d2a4b79cec00e751eea05aa9cd2cb5ab57edecf0ca53442`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 410.4 KB (410396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab868a5642b733ce339cc22c8fd8af73e7dbf3bb9592a60999969eb4e59b3c4`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5eb3f320774966b4f8fd965818ecba12df997c8e27772aeb29bad69f058a56d`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 28.1 MB (28093822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:952ddcce8959b4e23fbda43eab42d2be16b53b48f503d7b4ae2891ee8c4d9083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d3beb103be65d35b0f6328693416d899aab98fe88f7f4c6547fbc3cb282763`

```dockerfile
```

-	Layers:
	-	`sha256:6bdc080dcb3b7c738b636c7ca73bfd43b09f906627a7053e638abced5fdc31bf`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 24.9 MB (24921920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46a2d31b41a57be2d934b21ab45122eef0895e52110b937ebf707bebeb3fdab6`  
		Last Modified: Thu, 12 Nov 2026 00:32:17 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ad26778b11c31291040e3fc2f9a395e6c9ca8b2b6a2b9774ba6737c2dd682bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285306311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c26aa902c8fd4c385171f04b924c18320ce60ff6257348c594cf56f577143b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8670560089795a5c3e8249669fece65a0433b64305ebea60f785eff4b8300bc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 105.7 MB (105661168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8788447c4d210130eabf42ff4dafd20b067ca8eb394eaa5b1e272d8749e34b3a`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 410.4 KB (410398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05953adbbd11b1df84353de1f190643dec588f7ab8dac273c3a75e522ea96c4`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d6c08929201b4108ea1a4752fb56f1d8016eea3e9e79cc8ab27e7aa12d286`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 27.2 MB (27197783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:82f41ec8e99c4626d33112bd31c78f5070b5a68c4921f1751de54ae14135b753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d34d203832a863b2696315a84720e3b234ca9b7032936d7c0b956fcc0885e0`

```dockerfile
```

-	Layers:
	-	`sha256:0d770d6c4e4dd2d828e624f922c749a0f5c56759f62bce35785f72d430bd5c30`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 24.9 MB (24944175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:997b3c7822098da997c5c91dd08211a96e4af906c08bc303122df8248ff3e06e`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 16.5 KB (16465 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:00b8d47a6e6384a2834e3d01fa87ae767876543baa574f2d64a75c04ea33c698
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:01eb40af8388bbb2292e6e4f2a2a4e8798fdc19c31f003e8b3bdd02ca9fa8aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299151437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa9f89c8f5e23fe80bda543a048daba8e631ff3c4202047ef4c2f782d8452c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3395e3603f7ddee68e91a18b95ba0c2dc2ec54566fbf701bec32e93c38fa7c33`  
		Last Modified: Thu, 12 Nov 2026 00:32:21 GMT  
		Size: 112.6 MB (112646507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0420f9b38e85de01d2a4b79cec00e751eea05aa9cd2cb5ab57edecf0ca53442`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 410.4 KB (410396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab868a5642b733ce339cc22c8fd8af73e7dbf3bb9592a60999969eb4e59b3c4`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5eb3f320774966b4f8fd965818ecba12df997c8e27772aeb29bad69f058a56d`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 28.1 MB (28093822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:952ddcce8959b4e23fbda43eab42d2be16b53b48f503d7b4ae2891ee8c4d9083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d3beb103be65d35b0f6328693416d899aab98fe88f7f4c6547fbc3cb282763`

```dockerfile
```

-	Layers:
	-	`sha256:6bdc080dcb3b7c738b636c7ca73bfd43b09f906627a7053e638abced5fdc31bf`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 24.9 MB (24921920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46a2d31b41a57be2d934b21ab45122eef0895e52110b937ebf707bebeb3fdab6`  
		Last Modified: Thu, 12 Nov 2026 00:32:17 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ad26778b11c31291040e3fc2f9a395e6c9ca8b2b6a2b9774ba6737c2dd682bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285306311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c26aa902c8fd4c385171f04b924c18320ce60ff6257348c594cf56f577143b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8670560089795a5c3e8249669fece65a0433b64305ebea60f785eff4b8300bc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 105.7 MB (105661168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8788447c4d210130eabf42ff4dafd20b067ca8eb394eaa5b1e272d8749e34b3a`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 410.4 KB (410398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05953adbbd11b1df84353de1f190643dec588f7ab8dac273c3a75e522ea96c4`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d6c08929201b4108ea1a4752fb56f1d8016eea3e9e79cc8ab27e7aa12d286`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 27.2 MB (27197783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:82f41ec8e99c4626d33112bd31c78f5070b5a68c4921f1751de54ae14135b753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d34d203832a863b2696315a84720e3b234ca9b7032936d7c0b956fcc0885e0`

```dockerfile
```

-	Layers:
	-	`sha256:0d770d6c4e4dd2d828e624f922c749a0f5c56759f62bce35785f72d430bd5c30`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 24.9 MB (24944175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:997b3c7822098da997c5c91dd08211a96e4af906c08bc303122df8248ff3e06e`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 16.5 KB (16465 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:917946da96cc72b2611134a6597f7c61bda5b5da69b150a4696cf8c195a779f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:ee3c8f56b50cdfadbb420e0bfce1334a438d9cabfceb4e9c12d211e2cd4669ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (157998048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b9e642336c0dfc497cf6661516e89110710cc873ac96edcefdf77509173d1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:bd0699fc7778e268056235eff05d60e3ac8f27ff37f8f9a143fe1a57a10a8f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831b5e5a8176801abd6c11578e1862fb57398ce2359b5dd8a5f4c75e08b1545e`

```dockerfile
```

-	Layers:
	-	`sha256:123f7ba12d40cc0ac856acc1ea21c0fe6806409c45b8be410cacf40705778076`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 18.6 MB (18608145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddea9f93444f47df5eb3ddf88574f273da07e38999a260cd5e711f674e0dd773`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:db85ef7a252f62ac5ee810dc8ee41b356e2278ce4c8a1163ec0cc2aee0eb02f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (152034310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35ff833fd7fd65be032eda49c461a6954aa5da821cdd23c0456e4f5cc89732`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:aca3c379aa0873c29edc076dd4e816f50d253eafcf92912a3170de44c9acc5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea72209cc2eb9ee1b8f82e68475fdeb8e639c7d4ab48a492ab0532f921276214`

```dockerfile
```

-	Layers:
	-	`sha256:ec7d33a56cf5dcbdb1ac64b53c5e82ebaa7245c4e1239309e9792ccd5fb5fe2f`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 18.6 MB (18582151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa2f69e454b2dc4a7e0e18e4d4eda26a16ac5157e8169ad6d251aa0da149040c`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:917946da96cc72b2611134a6597f7c61bda5b5da69b150a4696cf8c195a779f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:ee3c8f56b50cdfadbb420e0bfce1334a438d9cabfceb4e9c12d211e2cd4669ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (157998048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b9e642336c0dfc497cf6661516e89110710cc873ac96edcefdf77509173d1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:bd0699fc7778e268056235eff05d60e3ac8f27ff37f8f9a143fe1a57a10a8f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831b5e5a8176801abd6c11578e1862fb57398ce2359b5dd8a5f4c75e08b1545e`

```dockerfile
```

-	Layers:
	-	`sha256:123f7ba12d40cc0ac856acc1ea21c0fe6806409c45b8be410cacf40705778076`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 18.6 MB (18608145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddea9f93444f47df5eb3ddf88574f273da07e38999a260cd5e711f674e0dd773`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:db85ef7a252f62ac5ee810dc8ee41b356e2278ce4c8a1163ec0cc2aee0eb02f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (152034310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35ff833fd7fd65be032eda49c461a6954aa5da821cdd23c0456e4f5cc89732`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:aca3c379aa0873c29edc076dd4e816f50d253eafcf92912a3170de44c9acc5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea72209cc2eb9ee1b8f82e68475fdeb8e639c7d4ab48a492ab0532f921276214`

```dockerfile
```

-	Layers:
	-	`sha256:ec7d33a56cf5dcbdb1ac64b53c5e82ebaa7245c4e1239309e9792ccd5fb5fe2f`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 18.6 MB (18582151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa2f69e454b2dc4a7e0e18e4d4eda26a16ac5157e8169ad6d251aa0da149040c`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:e03695c26eef219f86068a6aa6151fc7ce58b7afd677fc4f82df748dc0acc4a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:997d81e0fc8170f37ea1a6dda2387ccb8e267eefe2074c4e914e391762c6050d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299599628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9895e80d5c71fbf5f6458442b6242853b8c875e089d9a166197293acf35b4818`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2323a4e0b8bd87e771f0ceb241f28df481ffe7dbb45ccbfbc4b758d0db9a4ae`  
		Last Modified: Thu, 12 Nov 2026 00:32:22 GMT  
		Size: 112.6 MB (112648602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3839b964b3d049d5d47e6bb12907f4b961918d8088b9134180c98f9a5a8b1`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 359.4 KB (359416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af70f10fbdb0b2ea40023936885cdef171b68eb86f6865f39831bc0cecae59`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83eca38d03f17e6f749d8ac0fed86e342d39809b1e253986a9aac1306ceb2032`  
		Last Modified: Thu, 12 Nov 2026 00:32:20 GMT  
		Size: 27.9 MB (27919225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:7a345c873301c2529cd091bdb1ff2bde652a2298921fef941b83ee8fb69a8f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d32a3d0dea876dfe5ae4e44a7a2e429a90dd9450dda0e7f53a2647b3605286`

```dockerfile
```

-	Layers:
	-	`sha256:f6d1ad603760eea42c924ce24148f272e5476fed17bcd845016258d20c99ab0c`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 24.9 MB (24876128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c039bf2fcd8ec461e8eb241c543ca120abcfb6065169464391cc736f2fa1462`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:223bd427a9d06e49794eb72058735c06b9553b2b2deefcb06275e29db929828e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285719584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fe87174c876b040695ba2b253f41bf94c47d063412efb928038f60cb415306`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfd89345c28b97657f5a8d05d347d8d0eaac711c5b83ee7894f1d32fbb661b1`  
		Last Modified: Thu, 12 Nov 2026 00:47:35 GMT  
		Size: 105.7 MB (105663392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aabeec6dd0f020f039a5da19fd8ef0e7e4fd487e7b52c3bd5e1f0e6b0c3e66`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 359.4 KB (359414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1662c07b1d22be460488d07f2d67bfc433d4c752860c234da78d6c5408b4a621`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca6a4eb677adddc890981a702724d366ea9f249e71823c8a0dcec5a2d7ca3fb`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 27.0 MB (27030752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:20a9cc42b664678732b971a441e801d2a922c5277d927e7326654c85fa2c6c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7895c90974dc2d0bf9a6b743d8afaa32acea301b9455f136582b123e8b30c76`

```dockerfile
```

-	Layers:
	-	`sha256:df2492de52655cd9cea7c7e11a61d8694bab65386b5b7701bc3adb93c7543cc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 24.9 MB (24898388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a342ff8be8c5dff33508b82d7f33c4231969152a4760d2361409b666941e22e7`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:8d531b465f369dffec60b030cf779e0544487e4eec4e234bfdd899822a66198b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:ae31206f0bdc990b80ed93867db70f26c2bb02e8a06f36e02babea4d80b94efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084873012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e910195ff1a431e35dfca9a05a606831293185c680da24252db8f16b3301b97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2323a4e0b8bd87e771f0ceb241f28df481ffe7dbb45ccbfbc4b758d0db9a4ae`  
		Last Modified: Thu, 12 Nov 2026 00:32:22 GMT  
		Size: 112.6 MB (112648602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3839b964b3d049d5d47e6bb12907f4b961918d8088b9134180c98f9a5a8b1`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 359.4 KB (359416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af70f10fbdb0b2ea40023936885cdef171b68eb86f6865f39831bc0cecae59`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83eca38d03f17e6f749d8ac0fed86e342d39809b1e253986a9aac1306ceb2032`  
		Last Modified: Thu, 12 Nov 2026 00:32:20 GMT  
		Size: 27.9 MB (27919225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5c7941daf0b3d285de90c26a1f05d0f60e0970ccb3878372c6c6584f109d20`  
		Last Modified: Thu, 12 Nov 2026 01:22:57 GMT  
		Size: 785.3 MB (785273384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:1788a9b2ebe9141bd4ab2541c078e6ef68310ff936e591fd567b2e5adc7a461c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3422440900aa7a85345b1d2ab94cb3f3385073994f15b823c98dd9a7fd54b70`

```dockerfile
```

-	Layers:
	-	`sha256:1becc1736936089f7d1a7d5a3b98a219619ee76b878b4b317138672eac2fea88`  
		Last Modified: Thu, 12 Nov 2026 01:22:44 GMT  
		Size: 61.1 MB (61064104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:938f1a75043e0dd795eb8f3daeb883b2131e5f64c7f048fdee92838c9d64c09c`  
		Last Modified: Thu, 12 Nov 2026 01:22:41 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:483fc6f2fa6e9354a944772522140f05bc2ca93ecbedbd9f8b4e1d9e73ed3112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.2 MB (985172284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b543c086787aac86cad93e7c8c8f01cb6fbb4c835788ca63dfa6987884d1e99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfd89345c28b97657f5a8d05d347d8d0eaac711c5b83ee7894f1d32fbb661b1`  
		Last Modified: Thu, 12 Nov 2026 00:47:35 GMT  
		Size: 105.7 MB (105663392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aabeec6dd0f020f039a5da19fd8ef0e7e4fd487e7b52c3bd5e1f0e6b0c3e66`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 359.4 KB (359414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1662c07b1d22be460488d07f2d67bfc433d4c752860c234da78d6c5408b4a621`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca6a4eb677adddc890981a702724d366ea9f249e71823c8a0dcec5a2d7ca3fb`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 27.0 MB (27030752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efc8defd83a0aad9bf02d2b70cf3018781ef70afd2ee3b4b7299c0ad640ad`  
		Last Modified: Thu, 12 Nov 2026 01:23:08 GMT  
		Size: 699.5 MB (699452700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:a425f2578d853a240b442ca8d1bdb4a6e620a7a77fd31b9dd690ca70509556f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3c92ab8a8fe08fae72895d548aaeae60c6fe4e72c084652856031c20c5037`

```dockerfile
```

-	Layers:
	-	`sha256:570114851f94675308ae8da5841378b5f7ca203748302e429aac736adc18170a`  
		Last Modified: Thu, 12 Nov 2026 01:22:55 GMT  
		Size: 61.0 MB (60994628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1d3700b6fad62c769bdce524aa78a8a45ae289f4da26ceb419198a283d8db03`  
		Last Modified: Thu, 12 Nov 2026 01:22:53 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:8d531b465f369dffec60b030cf779e0544487e4eec4e234bfdd899822a66198b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:ae31206f0bdc990b80ed93867db70f26c2bb02e8a06f36e02babea4d80b94efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084873012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e910195ff1a431e35dfca9a05a606831293185c680da24252db8f16b3301b97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:19:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2323a4e0b8bd87e771f0ceb241f28df481ffe7dbb45ccbfbc4b758d0db9a4ae`  
		Last Modified: Thu, 12 Nov 2026 00:32:22 GMT  
		Size: 112.6 MB (112648602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3839b964b3d049d5d47e6bb12907f4b961918d8088b9134180c98f9a5a8b1`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 359.4 KB (359416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af70f10fbdb0b2ea40023936885cdef171b68eb86f6865f39831bc0cecae59`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83eca38d03f17e6f749d8ac0fed86e342d39809b1e253986a9aac1306ceb2032`  
		Last Modified: Thu, 12 Nov 2026 00:32:20 GMT  
		Size: 27.9 MB (27919225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5c7941daf0b3d285de90c26a1f05d0f60e0970ccb3878372c6c6584f109d20`  
		Last Modified: Thu, 12 Nov 2026 01:22:57 GMT  
		Size: 785.3 MB (785273384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1788a9b2ebe9141bd4ab2541c078e6ef68310ff936e591fd567b2e5adc7a461c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3422440900aa7a85345b1d2ab94cb3f3385073994f15b823c98dd9a7fd54b70`

```dockerfile
```

-	Layers:
	-	`sha256:1becc1736936089f7d1a7d5a3b98a219619ee76b878b4b317138672eac2fea88`  
		Last Modified: Thu, 12 Nov 2026 01:22:44 GMT  
		Size: 61.1 MB (61064104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:938f1a75043e0dd795eb8f3daeb883b2131e5f64c7f048fdee92838c9d64c09c`  
		Last Modified: Thu, 12 Nov 2026 01:22:41 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:483fc6f2fa6e9354a944772522140f05bc2ca93ecbedbd9f8b4e1d9e73ed3112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.2 MB (985172284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b543c086787aac86cad93e7c8c8f01cb6fbb4c835788ca63dfa6987884d1e99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfd89345c28b97657f5a8d05d347d8d0eaac711c5b83ee7894f1d32fbb661b1`  
		Last Modified: Thu, 12 Nov 2026 00:47:35 GMT  
		Size: 105.7 MB (105663392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aabeec6dd0f020f039a5da19fd8ef0e7e4fd487e7b52c3bd5e1f0e6b0c3e66`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 359.4 KB (359414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1662c07b1d22be460488d07f2d67bfc433d4c752860c234da78d6c5408b4a621`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca6a4eb677adddc890981a702724d366ea9f249e71823c8a0dcec5a2d7ca3fb`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 27.0 MB (27030752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efc8defd83a0aad9bf02d2b70cf3018781ef70afd2ee3b4b7299c0ad640ad`  
		Last Modified: Thu, 12 Nov 2026 01:23:08 GMT  
		Size: 699.5 MB (699452700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a425f2578d853a240b442ca8d1bdb4a6e620a7a77fd31b9dd690ca70509556f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3c92ab8a8fe08fae72895d548aaeae60c6fe4e72c084652856031c20c5037`

```dockerfile
```

-	Layers:
	-	`sha256:570114851f94675308ae8da5841378b5f7ca203748302e429aac736adc18170a`  
		Last Modified: Thu, 12 Nov 2026 01:22:55 GMT  
		Size: 61.0 MB (60994628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1d3700b6fad62c769bdce524aa78a8a45ae289f4da26ceb419198a283d8db03`  
		Last Modified: Thu, 12 Nov 2026 01:22:53 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:e03695c26eef219f86068a6aa6151fc7ce58b7afd677fc4f82df748dc0acc4a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:997d81e0fc8170f37ea1a6dda2387ccb8e267eefe2074c4e914e391762c6050d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299599628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9895e80d5c71fbf5f6458442b6242853b8c875e089d9a166197293acf35b4818`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2323a4e0b8bd87e771f0ceb241f28df481ffe7dbb45ccbfbc4b758d0db9a4ae`  
		Last Modified: Thu, 12 Nov 2026 00:32:22 GMT  
		Size: 112.6 MB (112648602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3839b964b3d049d5d47e6bb12907f4b961918d8088b9134180c98f9a5a8b1`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 359.4 KB (359416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af70f10fbdb0b2ea40023936885cdef171b68eb86f6865f39831bc0cecae59`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83eca38d03f17e6f749d8ac0fed86e342d39809b1e253986a9aac1306ceb2032`  
		Last Modified: Thu, 12 Nov 2026 00:32:20 GMT  
		Size: 27.9 MB (27919225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:7a345c873301c2529cd091bdb1ff2bde652a2298921fef941b83ee8fb69a8f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d32a3d0dea876dfe5ae4e44a7a2e429a90dd9450dda0e7f53a2647b3605286`

```dockerfile
```

-	Layers:
	-	`sha256:f6d1ad603760eea42c924ce24148f272e5476fed17bcd845016258d20c99ab0c`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 24.9 MB (24876128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c039bf2fcd8ec461e8eb241c543ca120abcfb6065169464391cc736f2fa1462`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:223bd427a9d06e49794eb72058735c06b9553b2b2deefcb06275e29db929828e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285719584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fe87174c876b040695ba2b253f41bf94c47d063412efb928038f60cb415306`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfd89345c28b97657f5a8d05d347d8d0eaac711c5b83ee7894f1d32fbb661b1`  
		Last Modified: Thu, 12 Nov 2026 00:47:35 GMT  
		Size: 105.7 MB (105663392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aabeec6dd0f020f039a5da19fd8ef0e7e4fd487e7b52c3bd5e1f0e6b0c3e66`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 359.4 KB (359414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1662c07b1d22be460488d07f2d67bfc433d4c752860c234da78d6c5408b4a621`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca6a4eb677adddc890981a702724d366ea9f249e71823c8a0dcec5a2d7ca3fb`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 27.0 MB (27030752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:20a9cc42b664678732b971a441e801d2a922c5277d927e7326654c85fa2c6c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7895c90974dc2d0bf9a6b743d8afaa32acea301b9455f136582b123e8b30c76`

```dockerfile
```

-	Layers:
	-	`sha256:df2492de52655cd9cea7c7e11a61d8694bab65386b5b7701bc3adb93c7543cc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 24.9 MB (24898388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a342ff8be8c5dff33508b82d7f33c4231969152a4760d2361409b666941e22e7`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:e03695c26eef219f86068a6aa6151fc7ce58b7afd677fc4f82df748dc0acc4a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:997d81e0fc8170f37ea1a6dda2387ccb8e267eefe2074c4e914e391762c6050d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299599628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9895e80d5c71fbf5f6458442b6242853b8c875e089d9a166197293acf35b4818`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2323a4e0b8bd87e771f0ceb241f28df481ffe7dbb45ccbfbc4b758d0db9a4ae`  
		Last Modified: Thu, 12 Nov 2026 00:32:22 GMT  
		Size: 112.6 MB (112648602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3839b964b3d049d5d47e6bb12907f4b961918d8088b9134180c98f9a5a8b1`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 359.4 KB (359416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af70f10fbdb0b2ea40023936885cdef171b68eb86f6865f39831bc0cecae59`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83eca38d03f17e6f749d8ac0fed86e342d39809b1e253986a9aac1306ceb2032`  
		Last Modified: Thu, 12 Nov 2026 00:32:20 GMT  
		Size: 27.9 MB (27919225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:7a345c873301c2529cd091bdb1ff2bde652a2298921fef941b83ee8fb69a8f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d32a3d0dea876dfe5ae4e44a7a2e429a90dd9450dda0e7f53a2647b3605286`

```dockerfile
```

-	Layers:
	-	`sha256:f6d1ad603760eea42c924ce24148f272e5476fed17bcd845016258d20c99ab0c`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 24.9 MB (24876128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c039bf2fcd8ec461e8eb241c543ca120abcfb6065169464391cc736f2fa1462`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:223bd427a9d06e49794eb72058735c06b9553b2b2deefcb06275e29db929828e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285719584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fe87174c876b040695ba2b253f41bf94c47d063412efb928038f60cb415306`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfd89345c28b97657f5a8d05d347d8d0eaac711c5b83ee7894f1d32fbb661b1`  
		Last Modified: Thu, 12 Nov 2026 00:47:35 GMT  
		Size: 105.7 MB (105663392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aabeec6dd0f020f039a5da19fd8ef0e7e4fd487e7b52c3bd5e1f0e6b0c3e66`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 359.4 KB (359414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1662c07b1d22be460488d07f2d67bfc433d4c752860c234da78d6c5408b4a621`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca6a4eb677adddc890981a702724d366ea9f249e71823c8a0dcec5a2d7ca3fb`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 27.0 MB (27030752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:20a9cc42b664678732b971a441e801d2a922c5277d927e7326654c85fa2c6c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7895c90974dc2d0bf9a6b743d8afaa32acea301b9455f136582b123e8b30c76`

```dockerfile
```

-	Layers:
	-	`sha256:df2492de52655cd9cea7c7e11a61d8694bab65386b5b7701bc3adb93c7543cc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 24.9 MB (24898388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a342ff8be8c5dff33508b82d7f33c4231969152a4760d2361409b666941e22e7`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:ed54754979027da3fea800d83bae73d7aba4ba89896df02b06805fe513c73d07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:167ece4f2b83cde15eb66c2ae9681f6ff6f92c12a88beeb161d62f918d4f3bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158669725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4192885efeaeb61d0042128b23f1971389e1717da4b908896ec9431009ecf106`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:4eb516ed35d7fef28154f740f198332a1dbe3e267c7529825bf3bfde86413db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2d45c06acbca233558eb972954de0eead74755d43a7b2d5229f15358abf4a6`

```dockerfile
```

-	Layers:
	-	`sha256:7a135662694164d752c75b101d7ee3a36b55ce9a2d0ec1c4f4b0f6ff8f0100f6`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 18.6 MB (18616438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5fcb908b9ffe51bd4bcfd6c73bb01d89cebba29d193944e11aadad0a79c4873`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f0786a17f1d90def0001e65807ac74c19bc3cb533ef640fb7db81d4e93fa44f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152663368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47abf9c7a553b82190e9e16295c494465156b1e2eed45cb7f13759d52ee3a13f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:c262d66d57b08511a241a31b999bf1da4492ef2c7a0364862a129e20dffb9099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c369f8852de8a9dd1505c18278d2f7125f3f48b554bf4462bd9c111e66f02a`

```dockerfile
```

-	Layers:
	-	`sha256:251de17fadc76d8065ebbd89e5f34c24762b1233f6c6574c172c5a586dfdd47f`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 18.6 MB (18590449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4c0382bb97d671d7fdb213dcd328b5a1cb3f8aea87e3b3c23645ecf5daf953`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:ed54754979027da3fea800d83bae73d7aba4ba89896df02b06805fe513c73d07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:167ece4f2b83cde15eb66c2ae9681f6ff6f92c12a88beeb161d62f918d4f3bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158669725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4192885efeaeb61d0042128b23f1971389e1717da4b908896ec9431009ecf106`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:4eb516ed35d7fef28154f740f198332a1dbe3e267c7529825bf3bfde86413db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2d45c06acbca233558eb972954de0eead74755d43a7b2d5229f15358abf4a6`

```dockerfile
```

-	Layers:
	-	`sha256:7a135662694164d752c75b101d7ee3a36b55ce9a2d0ec1c4f4b0f6ff8f0100f6`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 18.6 MB (18616438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5fcb908b9ffe51bd4bcfd6c73bb01d89cebba29d193944e11aadad0a79c4873`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f0786a17f1d90def0001e65807ac74c19bc3cb533ef640fb7db81d4e93fa44f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152663368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47abf9c7a553b82190e9e16295c494465156b1e2eed45cb7f13759d52ee3a13f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c262d66d57b08511a241a31b999bf1da4492ef2c7a0364862a129e20dffb9099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c369f8852de8a9dd1505c18278d2f7125f3f48b554bf4462bd9c111e66f02a`

```dockerfile
```

-	Layers:
	-	`sha256:251de17fadc76d8065ebbd89e5f34c24762b1233f6c6574c172c5a586dfdd47f`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 18.6 MB (18590449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4c0382bb97d671d7fdb213dcd328b5a1cb3f8aea87e3b3c23645ecf5daf953`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
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
