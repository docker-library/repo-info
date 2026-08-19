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
$ docker pull ros@sha256:75dd3aba34a3838dadbb31a9f7bef769bdfa8713e6cec686fc868db2981b0987
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:2a7ca548c7f0f87bc6393ee161dea3283e1c6fa280916f8944b1afadde2d26ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264032896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a86cdb5404b598d0a74504f9d0f6b865e799bde6a53f535cc23b1f99d38cbcc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05637bbf7e18fd22ee2e2e2cd9493970a956d1f7decff15a166bf15c1a79be8f`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 98.2 MB (98161135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbebfa038f744b0afcd3da141042631592fe9713ecb4e4d3defb99942de5a6e`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 385.5 KB (385487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffda27a0e7dd750b0b9cb5c74273e39bf7f57aec6b52d66d92e7e6541e27f74`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e85ec641263a52d03dcc2662ce6a16e6fd1797f0611311140c72c515946673`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 23.3 MB (23348363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:444d889bbd30d7acae1332cb87d9424d9939a2945e755c1aa56b29712552d739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23980099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b413496bf283c6fb7d8634e91e7a02559ea292734e99f4293df5c294b008d222`

```dockerfile
```

-	Layers:
	-	`sha256:c18b34a382adf318ecf0ba73d4e1c58aa36484aca8305b254176f003d938f677`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 24.0 MB (23963751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d3cb0dfc7fb8f0613c4ca14afcae06e05deb1afd4cf43beb82af52c8dbaafa`  
		Last Modified: Tue, 18 Aug 2026 02:17:54 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bfa845027d9606fd8615a04110f768fd79c8ad94f3a75d6e1392860bca4db51b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256684046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8a7d49716923b50a0c7ef905f2b828e73b636b13e85cd051a44ad947630c64`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e2cb5f792be57c74ebb5d05e2c5a65dd1ebf7716f29534440f8d96f76bb49`  
		Last Modified: Tue, 18 Aug 2026 02:18:00 GMT  
		Size: 95.8 MB (95798064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3acdfd7b48cd2f5c4917376714c0dfee347d182acdeb162e96f01484d7cece`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 385.5 KB (385496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85261beffdc45189366207cf799aa19cd7f7149d2a580ddda85949b33966497`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f0891823154b21cd3f552a9425761fb4be0bdc04e592f40a8500eba3d25727`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 22.7 MB (22743920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:7353bf0d8ce4b5c05c526db4dbf6d6c1f442ce741d87082c7d1d0e4d328cc2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23993253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9814d68cbf18c3eaa323a261c2b9e12f6313c3a7355064cd59fd7fe928e40574`

```dockerfile
```

-	Layers:
	-	`sha256:b3be0643c0097c37364996c746b3bc2f940bea92d8d22f5df47b3bc0574a08fb`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 24.0 MB (23976768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c14295051fa5e85c0442746111472536445b4fa67892f95d35c88e4686a5deee`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:b42ad9b3d502dba15fd27294797a1c39eaf01f448e6e0367b0dc48d43a17502a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:a4e6bfa5aa6d627205c0f3720459330624b6b704a89d076d9e61f5b188e9ec23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 MB (956106888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c71ddf5ab316e77ebbe4eccd95688616941d5a72e0565013add84dd506763d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05637bbf7e18fd22ee2e2e2cd9493970a956d1f7decff15a166bf15c1a79be8f`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 98.2 MB (98161135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbebfa038f744b0afcd3da141042631592fe9713ecb4e4d3defb99942de5a6e`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 385.5 KB (385487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffda27a0e7dd750b0b9cb5c74273e39bf7f57aec6b52d66d92e7e6541e27f74`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e85ec641263a52d03dcc2662ce6a16e6fd1797f0611311140c72c515946673`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 23.3 MB (23348363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cedd2e83b25268e20ef6597ec0d397d6c69a015c92062b56f7dc95f8f452911`  
		Last Modified: Tue, 18 Aug 2026 03:15:47 GMT  
		Size: 692.1 MB (692073992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5255052e8b8e343ed863abe633f6ceaf6734ad70c9b93cb9b0b144d011599d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59078947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dc1a46bbee46f5144dfa4c7bf98fb47e4b378797618f4e4762aebc25c421b4`

```dockerfile
```

-	Layers:
	-	`sha256:088b43b0cdfcaa98d9fdf1e024af191186ff83d931aead5aa5c11ff1c2222dd5`  
		Last Modified: Tue, 18 Aug 2026 03:15:37 GMT  
		Size: 59.1 MB (59069595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6776fbf073eb6770b4a4da1e8200f461e1d993ca9b995025d42cd86bfee058`  
		Last Modified: Tue, 18 Aug 2026 03:15:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6ea1821c233ed990659403f878edfa1fedc3245be612c92e5ab1e58d7353ce42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.8 MB (916830897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c5a9b1a6f37dfefc5b71feb31f4c28ac79a66c5b2de9b50bb6890b1ddf3561`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:13:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e2cb5f792be57c74ebb5d05e2c5a65dd1ebf7716f29534440f8d96f76bb49`  
		Last Modified: Tue, 18 Aug 2026 02:18:00 GMT  
		Size: 95.8 MB (95798064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3acdfd7b48cd2f5c4917376714c0dfee347d182acdeb162e96f01484d7cece`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 385.5 KB (385496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85261beffdc45189366207cf799aa19cd7f7149d2a580ddda85949b33966497`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f0891823154b21cd3f552a9425761fb4be0bdc04e592f40a8500eba3d25727`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 22.7 MB (22743920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbf570094045de76cbf5bf32c339dbdb99f8df348a2a218a599f3a35b6e6e23`  
		Last Modified: Tue, 18 Aug 2026 03:15:54 GMT  
		Size: 660.1 MB (660146851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:b307b80d439148e903b7b639449dcde5ace4914b4229eead2147b678c90ba613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59063352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c8a1639f5115106c73180fa9947e5706108b24aa6219730d089eed4d4729d9`

```dockerfile
```

-	Layers:
	-	`sha256:7248931284f649c7cdfd380d538927d75512abdbd9e1275ba73aa90f6a91be45`  
		Last Modified: Tue, 18 Aug 2026 03:15:44 GMT  
		Size: 59.1 MB (59053920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ff0bde93a7aeb882566a5af6b8533949798168c8130fa858f330161d6b6ec1`  
		Last Modified: Tue, 18 Aug 2026 03:15:41 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:b42ad9b3d502dba15fd27294797a1c39eaf01f448e6e0367b0dc48d43a17502a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:a4e6bfa5aa6d627205c0f3720459330624b6b704a89d076d9e61f5b188e9ec23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 MB (956106888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c71ddf5ab316e77ebbe4eccd95688616941d5a72e0565013add84dd506763d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05637bbf7e18fd22ee2e2e2cd9493970a956d1f7decff15a166bf15c1a79be8f`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 98.2 MB (98161135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbebfa038f744b0afcd3da141042631592fe9713ecb4e4d3defb99942de5a6e`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 385.5 KB (385487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffda27a0e7dd750b0b9cb5c74273e39bf7f57aec6b52d66d92e7e6541e27f74`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e85ec641263a52d03dcc2662ce6a16e6fd1797f0611311140c72c515946673`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 23.3 MB (23348363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cedd2e83b25268e20ef6597ec0d397d6c69a015c92062b56f7dc95f8f452911`  
		Last Modified: Tue, 18 Aug 2026 03:15:47 GMT  
		Size: 692.1 MB (692073992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:5255052e8b8e343ed863abe633f6ceaf6734ad70c9b93cb9b0b144d011599d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59078947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dc1a46bbee46f5144dfa4c7bf98fb47e4b378797618f4e4762aebc25c421b4`

```dockerfile
```

-	Layers:
	-	`sha256:088b43b0cdfcaa98d9fdf1e024af191186ff83d931aead5aa5c11ff1c2222dd5`  
		Last Modified: Tue, 18 Aug 2026 03:15:37 GMT  
		Size: 59.1 MB (59069595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6776fbf073eb6770b4a4da1e8200f461e1d993ca9b995025d42cd86bfee058`  
		Last Modified: Tue, 18 Aug 2026 03:15:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6ea1821c233ed990659403f878edfa1fedc3245be612c92e5ab1e58d7353ce42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.8 MB (916830897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c5a9b1a6f37dfefc5b71feb31f4c28ac79a66c5b2de9b50bb6890b1ddf3561`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:13:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e2cb5f792be57c74ebb5d05e2c5a65dd1ebf7716f29534440f8d96f76bb49`  
		Last Modified: Tue, 18 Aug 2026 02:18:00 GMT  
		Size: 95.8 MB (95798064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3acdfd7b48cd2f5c4917376714c0dfee347d182acdeb162e96f01484d7cece`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 385.5 KB (385496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85261beffdc45189366207cf799aa19cd7f7149d2a580ddda85949b33966497`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f0891823154b21cd3f552a9425761fb4be0bdc04e592f40a8500eba3d25727`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 22.7 MB (22743920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbf570094045de76cbf5bf32c339dbdb99f8df348a2a218a599f3a35b6e6e23`  
		Last Modified: Tue, 18 Aug 2026 03:15:54 GMT  
		Size: 660.1 MB (660146851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:b307b80d439148e903b7b639449dcde5ace4914b4229eead2147b678c90ba613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59063352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c8a1639f5115106c73180fa9947e5706108b24aa6219730d089eed4d4729d9`

```dockerfile
```

-	Layers:
	-	`sha256:7248931284f649c7cdfd380d538927d75512abdbd9e1275ba73aa90f6a91be45`  
		Last Modified: Tue, 18 Aug 2026 03:15:44 GMT  
		Size: 59.1 MB (59053920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ff0bde93a7aeb882566a5af6b8533949798168c8130fa858f330161d6b6ec1`  
		Last Modified: Tue, 18 Aug 2026 03:15:41 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:75dd3aba34a3838dadbb31a9f7bef769bdfa8713e6cec686fc868db2981b0987
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:2a7ca548c7f0f87bc6393ee161dea3283e1c6fa280916f8944b1afadde2d26ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264032896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a86cdb5404b598d0a74504f9d0f6b865e799bde6a53f535cc23b1f99d38cbcc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05637bbf7e18fd22ee2e2e2cd9493970a956d1f7decff15a166bf15c1a79be8f`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 98.2 MB (98161135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbebfa038f744b0afcd3da141042631592fe9713ecb4e4d3defb99942de5a6e`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 385.5 KB (385487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffda27a0e7dd750b0b9cb5c74273e39bf7f57aec6b52d66d92e7e6541e27f74`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e85ec641263a52d03dcc2662ce6a16e6fd1797f0611311140c72c515946673`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 23.3 MB (23348363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:444d889bbd30d7acae1332cb87d9424d9939a2945e755c1aa56b29712552d739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23980099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b413496bf283c6fb7d8634e91e7a02559ea292734e99f4293df5c294b008d222`

```dockerfile
```

-	Layers:
	-	`sha256:c18b34a382adf318ecf0ba73d4e1c58aa36484aca8305b254176f003d938f677`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 24.0 MB (23963751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d3cb0dfc7fb8f0613c4ca14afcae06e05deb1afd4cf43beb82af52c8dbaafa`  
		Last Modified: Tue, 18 Aug 2026 02:17:54 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bfa845027d9606fd8615a04110f768fd79c8ad94f3a75d6e1392860bca4db51b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256684046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8a7d49716923b50a0c7ef905f2b828e73b636b13e85cd051a44ad947630c64`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e2cb5f792be57c74ebb5d05e2c5a65dd1ebf7716f29534440f8d96f76bb49`  
		Last Modified: Tue, 18 Aug 2026 02:18:00 GMT  
		Size: 95.8 MB (95798064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3acdfd7b48cd2f5c4917376714c0dfee347d182acdeb162e96f01484d7cece`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 385.5 KB (385496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85261beffdc45189366207cf799aa19cd7f7149d2a580ddda85949b33966497`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f0891823154b21cd3f552a9425761fb4be0bdc04e592f40a8500eba3d25727`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 22.7 MB (22743920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:7353bf0d8ce4b5c05c526db4dbf6d6c1f442ce741d87082c7d1d0e4d328cc2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23993253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9814d68cbf18c3eaa323a261c2b9e12f6313c3a7355064cd59fd7fe928e40574`

```dockerfile
```

-	Layers:
	-	`sha256:b3be0643c0097c37364996c746b3bc2f940bea92d8d22f5df47b3bc0574a08fb`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 24.0 MB (23976768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c14295051fa5e85c0442746111472536445b4fa67892f95d35c88e4686a5deee`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:75dd3aba34a3838dadbb31a9f7bef769bdfa8713e6cec686fc868db2981b0987
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:2a7ca548c7f0f87bc6393ee161dea3283e1c6fa280916f8944b1afadde2d26ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264032896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a86cdb5404b598d0a74504f9d0f6b865e799bde6a53f535cc23b1f99d38cbcc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05637bbf7e18fd22ee2e2e2cd9493970a956d1f7decff15a166bf15c1a79be8f`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 98.2 MB (98161135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbebfa038f744b0afcd3da141042631592fe9713ecb4e4d3defb99942de5a6e`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 385.5 KB (385487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffda27a0e7dd750b0b9cb5c74273e39bf7f57aec6b52d66d92e7e6541e27f74`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e85ec641263a52d03dcc2662ce6a16e6fd1797f0611311140c72c515946673`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 23.3 MB (23348363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:444d889bbd30d7acae1332cb87d9424d9939a2945e755c1aa56b29712552d739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23980099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b413496bf283c6fb7d8634e91e7a02559ea292734e99f4293df5c294b008d222`

```dockerfile
```

-	Layers:
	-	`sha256:c18b34a382adf318ecf0ba73d4e1c58aa36484aca8305b254176f003d938f677`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 24.0 MB (23963751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d3cb0dfc7fb8f0613c4ca14afcae06e05deb1afd4cf43beb82af52c8dbaafa`  
		Last Modified: Tue, 18 Aug 2026 02:17:54 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bfa845027d9606fd8615a04110f768fd79c8ad94f3a75d6e1392860bca4db51b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256684046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8a7d49716923b50a0c7ef905f2b828e73b636b13e85cd051a44ad947630c64`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e2cb5f792be57c74ebb5d05e2c5a65dd1ebf7716f29534440f8d96f76bb49`  
		Last Modified: Tue, 18 Aug 2026 02:18:00 GMT  
		Size: 95.8 MB (95798064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3acdfd7b48cd2f5c4917376714c0dfee347d182acdeb162e96f01484d7cece`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 385.5 KB (385496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85261beffdc45189366207cf799aa19cd7f7149d2a580ddda85949b33966497`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f0891823154b21cd3f552a9425761fb4be0bdc04e592f40a8500eba3d25727`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 22.7 MB (22743920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:7353bf0d8ce4b5c05c526db4dbf6d6c1f442ce741d87082c7d1d0e4d328cc2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23993253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9814d68cbf18c3eaa323a261c2b9e12f6313c3a7355064cd59fd7fe928e40574`

```dockerfile
```

-	Layers:
	-	`sha256:b3be0643c0097c37364996c746b3bc2f940bea92d8d22f5df47b3bc0574a08fb`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 24.0 MB (23976768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c14295051fa5e85c0442746111472536445b4fa67892f95d35c88e4686a5deee`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:ebae805c9d985e443b26e13a47339098dc0a42eee4626055bfd4ebc6dcdb4988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:32bf718e63618482ffb1fe232cf0f834635c57162e2506fb0bc0b092ef776c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142135412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5ad5127e89bc385629e7ea946698470d62a8ba94b880f9e79b4a3d49f718dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:f58063bdc1e8b185c184580f2a0a76b7204abc6678235e2ff1f63469742d8ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17941669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c753ecd357d466e8c13e60e6ac4615a03dd77521382cef067d008d7451a915`

```dockerfile
```

-	Layers:
	-	`sha256:c888b287b7243418af2a29e442b7c40322c59353ce9211ed5bd53e49fa29537f`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 17.9 MB (17927043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52ba9a75cb68703ef7f3bf4175bc54b5a3f8b5a7050f04f8c4ecefdaf78546a0`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:28d5cb5b632863dccd57264d36f8d0c472c7c6457a85211c4ad945d056e26350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137754054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c43b51ce31884c39cdad2a12aa861403a5d5c8afe373b259dd9223ac1dd455`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:600561b1f528d3dec6c669b6209a982f0cbaddb3e7998fe3e7354f8cca4050bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17928139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed4c73853c25733fca757bd1bee69f3b5fd168064486898672f5ff519525b96`

```dockerfile
```

-	Layers:
	-	`sha256:73c82711e9688ff72378e01653efe461b64c68f2693720f1632bca724b9f1440`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 17.9 MB (17913388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:490c2b160e9112b407e97d7f5800276e49d4b879645e9f621103a85289acb2ab`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:ebae805c9d985e443b26e13a47339098dc0a42eee4626055bfd4ebc6dcdb4988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:32bf718e63618482ffb1fe232cf0f834635c57162e2506fb0bc0b092ef776c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142135412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5ad5127e89bc385629e7ea946698470d62a8ba94b880f9e79b4a3d49f718dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:f58063bdc1e8b185c184580f2a0a76b7204abc6678235e2ff1f63469742d8ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17941669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c753ecd357d466e8c13e60e6ac4615a03dd77521382cef067d008d7451a915`

```dockerfile
```

-	Layers:
	-	`sha256:c888b287b7243418af2a29e442b7c40322c59353ce9211ed5bd53e49fa29537f`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 17.9 MB (17927043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52ba9a75cb68703ef7f3bf4175bc54b5a3f8b5a7050f04f8c4ecefdaf78546a0`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:28d5cb5b632863dccd57264d36f8d0c472c7c6457a85211c4ad945d056e26350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137754054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c43b51ce31884c39cdad2a12aa861403a5d5c8afe373b259dd9223ac1dd455`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:600561b1f528d3dec6c669b6209a982f0cbaddb3e7998fe3e7354f8cca4050bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17928139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed4c73853c25733fca757bd1bee69f3b5fd168064486898672f5ff519525b96`

```dockerfile
```

-	Layers:
	-	`sha256:73c82711e9688ff72378e01653efe461b64c68f2693720f1632bca724b9f1440`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 17.9 MB (17913388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:490c2b160e9112b407e97d7f5800276e49d4b879645e9f621103a85289acb2ab`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:2589a8fba5257307857890173c069852c2abf913a0be7970f172478baecb09e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:bab7e640bf79cd84957e4e18fcba7d87efc3385b4e3f36a32eeca01638e43206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296383369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3786be5ed1130691ee8813979e86da478531ff25e9e5bbdad85783a222716eba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa61c3b78b8a527c2c014b1a761bb9782400da95745756d9e7adb8eea62183f3`  
		Last Modified: Tue, 18 Aug 2026 20:24:49 GMT  
		Size: 110.2 MB (110191895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeaea64934d427fdbdd559a19bccced576cb4b8b74af403feee7d56ddd57bc3`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 409.8 KB (409822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0ac9fceaa8e1d3cff872e59ff443b85fa560d471ddd3175e31db2fad1066f9`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8411d72f4b8d1a32d36a409d255c8e7f71951e6eecb2cbb35b4d27a5ca35348`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 28.1 MB (28079344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:3e65bd92046f826178e5ad2a616c73b00adfaece0dd1ea59fb748a47fd746178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986934eb4c3224cf57f388caaa501c30f1e9c233fda159a961240326f700638b`

```dockerfile
```

-	Layers:
	-	`sha256:cd04c864002291ee0f50a557eec29c82f672e0f3d6bcfa6fc3f797ad339b7db8`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af4d0a72b0c4c9577fca9d43f9080ebfe3268902941f3bc99f2ea86d4ca6fdd4`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d849b6203853848bf20f5e5d6d77c1275bff1ff727d93ab055799cb33c2dac7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284839344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9b02bb6caecebb32ca3c3cfce11d6a4b90b0bd7e904e168e9c23819a2cfffb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d153a4b9db0cb118278fb00415bc859c03ffaad0f1ddd9f56a0238dfa63a23`  
		Last Modified: Tue, 18 Aug 2026 20:25:03 GMT  
		Size: 105.6 MB (105602820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fec7af2f0621ee36ad6707e5803931d8ef7e6e61453a09592341a33badeccb8`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 409.8 KB (409828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f35151bd6a352d9ffda9d1b17f657f750b21eb77f558d14171e63ade2926a4`  
		Last Modified: Tue, 18 Aug 2026 20:25:00 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600c7c7a1562f5b64f08bdb9440ac70fedde3dd1500777710db926aa67e26875`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 27.2 MB (27193612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:068bb0b41125c4fbbc272386ed2e3efafecd9e4d4439f3703a1c42f1b61a54a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d566f504ed18db5e497db8d7dd86335c6ae4a30b2b422889e8a1344ff42c1dc`

```dockerfile
```

-	Layers:
	-	`sha256:8983dfc72b7255d8b799e9d3eed1f7efe92e0b2ed274e10192452fb22b04071a`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fefdf50ba24522a1238ea4690c1774ef03196c6455e36f2c6d4294a01e74993a`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:63407fb78383d0c68849c2913a3b6a5675069d2c2c33c21b3e7c454e028e8b5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:7b2aaa6e177aaf4b0e568ab90d44866374a596988e014fe0942da9b43aa24269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081322704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e3bfce896c784ff6732cff89ff68c72d42a20eb5ac27286a7a59ef014bd307`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa61c3b78b8a527c2c014b1a761bb9782400da95745756d9e7adb8eea62183f3`  
		Last Modified: Tue, 18 Aug 2026 20:24:49 GMT  
		Size: 110.2 MB (110191895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeaea64934d427fdbdd559a19bccced576cb4b8b74af403feee7d56ddd57bc3`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 409.8 KB (409822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0ac9fceaa8e1d3cff872e59ff443b85fa560d471ddd3175e31db2fad1066f9`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8411d72f4b8d1a32d36a409d255c8e7f71951e6eecb2cbb35b4d27a5ca35348`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 28.1 MB (28079344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899f768c12c5b86621afb75921e79604063d5019c9f32cd3639d7c24c469a4d0`  
		Last Modified: Tue, 18 Aug 2026 21:19:31 GMT  
		Size: 784.9 MB (784939335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:47017824db5c0874d7ac8e6b152756850d98c08fcd71c452bc6171d5f3e9a6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61116757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d536b23bff15d0751679373231b0bd3002f2b46755c6e2abc879b9672467b1b`

```dockerfile
```

-	Layers:
	-	`sha256:83e53d214a510963c07da1fdd5ec7ee3dcd5e06beedd627f4bd6a6b406160054`  
		Last Modified: Tue, 18 Aug 2026 21:19:19 GMT  
		Size: 61.1 MB (61107418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916a1d5a8d479308047ac21284de010fd4a40e12127ea7630aa1df91f6682f83`  
		Last Modified: Tue, 18 Aug 2026 21:19:17 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cf36a2ca2ce9d3f239ab3df02430d580a7d643d907cd7bf0926b6f18fb7bd769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **983.9 MB (983884762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714efbee46cc0700ad1ff91caadabf173b6de670557096d438941b2d62dc5e0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d153a4b9db0cb118278fb00415bc859c03ffaad0f1ddd9f56a0238dfa63a23`  
		Last Modified: Tue, 18 Aug 2026 20:25:03 GMT  
		Size: 105.6 MB (105602820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fec7af2f0621ee36ad6707e5803931d8ef7e6e61453a09592341a33badeccb8`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 409.8 KB (409828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f35151bd6a352d9ffda9d1b17f657f750b21eb77f558d14171e63ade2926a4`  
		Last Modified: Tue, 18 Aug 2026 20:25:00 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600c7c7a1562f5b64f08bdb9440ac70fedde3dd1500777710db926aa67e26875`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 27.2 MB (27193612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2a71eac49ea840d80e894e5dc96e3ef50402d887a329fcce3d868d554229b9`  
		Last Modified: Tue, 18 Aug 2026 21:19:38 GMT  
		Size: 699.0 MB (699045418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:4354c5064f8eb3f037732766dad4bf0942b075e46be1e7b6c81ae602e85bb5d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61047356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3220797d27a8b39b9465b14857ca4b16595da13cd8593db177514ff4a410fa`

```dockerfile
```

-	Layers:
	-	`sha256:38fbb617ffe9e8f7851b2626b3c5288657d112e5dc3e79b71852aee5018766e3`  
		Last Modified: Tue, 18 Aug 2026 21:19:26 GMT  
		Size: 61.0 MB (61037937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:977018eab027475ef00d6821788d49439025a04a419f164d8a7e1e9bf698cfb7`  
		Last Modified: Tue, 18 Aug 2026 21:19:23 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:63407fb78383d0c68849c2913a3b6a5675069d2c2c33c21b3e7c454e028e8b5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:7b2aaa6e177aaf4b0e568ab90d44866374a596988e014fe0942da9b43aa24269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081322704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e3bfce896c784ff6732cff89ff68c72d42a20eb5ac27286a7a59ef014bd307`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa61c3b78b8a527c2c014b1a761bb9782400da95745756d9e7adb8eea62183f3`  
		Last Modified: Tue, 18 Aug 2026 20:24:49 GMT  
		Size: 110.2 MB (110191895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeaea64934d427fdbdd559a19bccced576cb4b8b74af403feee7d56ddd57bc3`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 409.8 KB (409822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0ac9fceaa8e1d3cff872e59ff443b85fa560d471ddd3175e31db2fad1066f9`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8411d72f4b8d1a32d36a409d255c8e7f71951e6eecb2cbb35b4d27a5ca35348`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 28.1 MB (28079344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899f768c12c5b86621afb75921e79604063d5019c9f32cd3639d7c24c469a4d0`  
		Last Modified: Tue, 18 Aug 2026 21:19:31 GMT  
		Size: 784.9 MB (784939335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:47017824db5c0874d7ac8e6b152756850d98c08fcd71c452bc6171d5f3e9a6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61116757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d536b23bff15d0751679373231b0bd3002f2b46755c6e2abc879b9672467b1b`

```dockerfile
```

-	Layers:
	-	`sha256:83e53d214a510963c07da1fdd5ec7ee3dcd5e06beedd627f4bd6a6b406160054`  
		Last Modified: Tue, 18 Aug 2026 21:19:19 GMT  
		Size: 61.1 MB (61107418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916a1d5a8d479308047ac21284de010fd4a40e12127ea7630aa1df91f6682f83`  
		Last Modified: Tue, 18 Aug 2026 21:19:17 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cf36a2ca2ce9d3f239ab3df02430d580a7d643d907cd7bf0926b6f18fb7bd769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **983.9 MB (983884762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714efbee46cc0700ad1ff91caadabf173b6de670557096d438941b2d62dc5e0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d153a4b9db0cb118278fb00415bc859c03ffaad0f1ddd9f56a0238dfa63a23`  
		Last Modified: Tue, 18 Aug 2026 20:25:03 GMT  
		Size: 105.6 MB (105602820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fec7af2f0621ee36ad6707e5803931d8ef7e6e61453a09592341a33badeccb8`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 409.8 KB (409828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f35151bd6a352d9ffda9d1b17f657f750b21eb77f558d14171e63ade2926a4`  
		Last Modified: Tue, 18 Aug 2026 20:25:00 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600c7c7a1562f5b64f08bdb9440ac70fedde3dd1500777710db926aa67e26875`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 27.2 MB (27193612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2a71eac49ea840d80e894e5dc96e3ef50402d887a329fcce3d868d554229b9`  
		Last Modified: Tue, 18 Aug 2026 21:19:38 GMT  
		Size: 699.0 MB (699045418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:4354c5064f8eb3f037732766dad4bf0942b075e46be1e7b6c81ae602e85bb5d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61047356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3220797d27a8b39b9465b14857ca4b16595da13cd8593db177514ff4a410fa`

```dockerfile
```

-	Layers:
	-	`sha256:38fbb617ffe9e8f7851b2626b3c5288657d112e5dc3e79b71852aee5018766e3`  
		Last Modified: Tue, 18 Aug 2026 21:19:26 GMT  
		Size: 61.0 MB (61037937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:977018eab027475ef00d6821788d49439025a04a419f164d8a7e1e9bf698cfb7`  
		Last Modified: Tue, 18 Aug 2026 21:19:23 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:2589a8fba5257307857890173c069852c2abf913a0be7970f172478baecb09e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:bab7e640bf79cd84957e4e18fcba7d87efc3385b4e3f36a32eeca01638e43206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296383369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3786be5ed1130691ee8813979e86da478531ff25e9e5bbdad85783a222716eba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa61c3b78b8a527c2c014b1a761bb9782400da95745756d9e7adb8eea62183f3`  
		Last Modified: Tue, 18 Aug 2026 20:24:49 GMT  
		Size: 110.2 MB (110191895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeaea64934d427fdbdd559a19bccced576cb4b8b74af403feee7d56ddd57bc3`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 409.8 KB (409822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0ac9fceaa8e1d3cff872e59ff443b85fa560d471ddd3175e31db2fad1066f9`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8411d72f4b8d1a32d36a409d255c8e7f71951e6eecb2cbb35b4d27a5ca35348`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 28.1 MB (28079344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:3e65bd92046f826178e5ad2a616c73b00adfaece0dd1ea59fb748a47fd746178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986934eb4c3224cf57f388caaa501c30f1e9c233fda159a961240326f700638b`

```dockerfile
```

-	Layers:
	-	`sha256:cd04c864002291ee0f50a557eec29c82f672e0f3d6bcfa6fc3f797ad339b7db8`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af4d0a72b0c4c9577fca9d43f9080ebfe3268902941f3bc99f2ea86d4ca6fdd4`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d849b6203853848bf20f5e5d6d77c1275bff1ff727d93ab055799cb33c2dac7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284839344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9b02bb6caecebb32ca3c3cfce11d6a4b90b0bd7e904e168e9c23819a2cfffb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d153a4b9db0cb118278fb00415bc859c03ffaad0f1ddd9f56a0238dfa63a23`  
		Last Modified: Tue, 18 Aug 2026 20:25:03 GMT  
		Size: 105.6 MB (105602820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fec7af2f0621ee36ad6707e5803931d8ef7e6e61453a09592341a33badeccb8`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 409.8 KB (409828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f35151bd6a352d9ffda9d1b17f657f750b21eb77f558d14171e63ade2926a4`  
		Last Modified: Tue, 18 Aug 2026 20:25:00 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600c7c7a1562f5b64f08bdb9440ac70fedde3dd1500777710db926aa67e26875`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 27.2 MB (27193612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:068bb0b41125c4fbbc272386ed2e3efafecd9e4d4439f3703a1c42f1b61a54a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d566f504ed18db5e497db8d7dd86335c6ae4a30b2b422889e8a1344ff42c1dc`

```dockerfile
```

-	Layers:
	-	`sha256:8983dfc72b7255d8b799e9d3eed1f7efe92e0b2ed274e10192452fb22b04071a`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fefdf50ba24522a1238ea4690c1774ef03196c6455e36f2c6d4294a01e74993a`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:2589a8fba5257307857890173c069852c2abf913a0be7970f172478baecb09e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:bab7e640bf79cd84957e4e18fcba7d87efc3385b4e3f36a32eeca01638e43206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296383369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3786be5ed1130691ee8813979e86da478531ff25e9e5bbdad85783a222716eba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa61c3b78b8a527c2c014b1a761bb9782400da95745756d9e7adb8eea62183f3`  
		Last Modified: Tue, 18 Aug 2026 20:24:49 GMT  
		Size: 110.2 MB (110191895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeaea64934d427fdbdd559a19bccced576cb4b8b74af403feee7d56ddd57bc3`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 409.8 KB (409822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0ac9fceaa8e1d3cff872e59ff443b85fa560d471ddd3175e31db2fad1066f9`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8411d72f4b8d1a32d36a409d255c8e7f71951e6eecb2cbb35b4d27a5ca35348`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 28.1 MB (28079344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:3e65bd92046f826178e5ad2a616c73b00adfaece0dd1ea59fb748a47fd746178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986934eb4c3224cf57f388caaa501c30f1e9c233fda159a961240326f700638b`

```dockerfile
```

-	Layers:
	-	`sha256:cd04c864002291ee0f50a557eec29c82f672e0f3d6bcfa6fc3f797ad339b7db8`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af4d0a72b0c4c9577fca9d43f9080ebfe3268902941f3bc99f2ea86d4ca6fdd4`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d849b6203853848bf20f5e5d6d77c1275bff1ff727d93ab055799cb33c2dac7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284839344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9b02bb6caecebb32ca3c3cfce11d6a4b90b0bd7e904e168e9c23819a2cfffb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:08 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d153a4b9db0cb118278fb00415bc859c03ffaad0f1ddd9f56a0238dfa63a23`  
		Last Modified: Tue, 18 Aug 2026 20:25:03 GMT  
		Size: 105.6 MB (105602820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fec7af2f0621ee36ad6707e5803931d8ef7e6e61453a09592341a33badeccb8`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 409.8 KB (409828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f35151bd6a352d9ffda9d1b17f657f750b21eb77f558d14171e63ade2926a4`  
		Last Modified: Tue, 18 Aug 2026 20:25:00 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600c7c7a1562f5b64f08bdb9440ac70fedde3dd1500777710db926aa67e26875`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 27.2 MB (27193612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:068bb0b41125c4fbbc272386ed2e3efafecd9e4d4439f3703a1c42f1b61a54a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d566f504ed18db5e497db8d7dd86335c6ae4a30b2b422889e8a1344ff42c1dc`

```dockerfile
```

-	Layers:
	-	`sha256:8983dfc72b7255d8b799e9d3eed1f7efe92e0b2ed274e10192452fb22b04071a`  
		Last Modified: Tue, 18 Aug 2026 20:25:01 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fefdf50ba24522a1238ea4690c1774ef03196c6455e36f2c6d4294a01e74993a`  
		Last Modified: Tue, 18 Aug 2026 20:24:59 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:fb9a5620bb92e133047c62555e307a2a481bde384c70595ceae464bc84e51df1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:6366e3768c03855a860975133963df9429c24040a2e2b0ba82bd0a998ce59568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157699739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3788c54499feb45504671a1cae7ab77ba6040ac5444bbedf625db3e2fb05800`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:bcb1a2f8e3a58d28e2c964de9d5f13c0f4f6c329d6d09c6d0d93d19d3c739bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18633399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd6f1e9b942ec8440b0170a99e73193eaf52b7bf05dbb7062abc2a5869af2a9`

```dockerfile
```

-	Layers:
	-	`sha256:69faffa4c82f4455b12d86f802d9b7c13f4e85b62e8454751a2e521dd73d9f4b`  
		Last Modified: Tue, 18 Aug 2026 19:26:38 GMT  
		Size: 18.6 MB (18618791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a678dd97ecfa5fa7e2996dbc6a16cb63f793b775d5b7fc8d9c919e7693ac959`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b86b5e1c635b3606a9c092c92ae1b3acc225d5fd0c89b2e2e5007acbb16979e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151630572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6e7fc296288c6736ec3025ad21910d4bfb25c4216ea6f026e75d55bec70c77`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:1bfa2cf1a50d70783168ebbce5dc8a876a92ed091fb1638956cca9ee816e7789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551b77104a41b0f9fd95fdab572f094a97657d72947d680ea28c30d1be55fcd0`

```dockerfile
```

-	Layers:
	-	`sha256:9eac09792ec9583e13451adcd5dc5bc23408b2480b5cd1dccd4c02f9d4166889`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 18.6 MB (18592797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2899e8d1bfa7125767cca96840da3dcc343b4c3dde38e9fd3c1e4d92d0e800`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:fb9a5620bb92e133047c62555e307a2a481bde384c70595ceae464bc84e51df1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:6366e3768c03855a860975133963df9429c24040a2e2b0ba82bd0a998ce59568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157699739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3788c54499feb45504671a1cae7ab77ba6040ac5444bbedf625db3e2fb05800`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:24 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:09 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc144bf2fa9369c1b905a8f5325cb931caa17631addf664424280970d958860`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 683.4 KB (683353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fa819c5593caccc1cfc679df9cd10fefc0371ab95c20f0764ea534fcbb9c4c`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 6.7 MB (6709417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21474dcac3c48681623e4add31db5b211bb573d1869993e142d89c66d69934a`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 94.7 KB (94727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54493cf121989fd5a5216b2e3868cf07c378d34d95f3c865571bf414633c408d`  
		Last Modified: Tue, 18 Aug 2026 19:26:40 GMT  
		Size: 120.5 MB (120459240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:bcb1a2f8e3a58d28e2c964de9d5f13c0f4f6c329d6d09c6d0d93d19d3c739bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18633399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd6f1e9b942ec8440b0170a99e73193eaf52b7bf05dbb7062abc2a5869af2a9`

```dockerfile
```

-	Layers:
	-	`sha256:69faffa4c82f4455b12d86f802d9b7c13f4e85b62e8454751a2e521dd73d9f4b`  
		Last Modified: Tue, 18 Aug 2026 19:26:38 GMT  
		Size: 18.6 MB (18618791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a678dd97ecfa5fa7e2996dbc6a16cb63f793b775d5b7fc8d9c919e7693ac959`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b86b5e1c635b3606a9c092c92ae1b3acc225d5fd0c89b2e2e5007acbb16979e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151630572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6e7fc296288c6736ec3025ad21910d4bfb25c4216ea6f026e75d55bec70c77`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:06 GMT
ENV ROS_DISTRO=jazzy
# Tue, 18 Aug 2026 19:26:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02772dfc3a5fae7955e9e391724ecd55bbe318285e021b91a13dacf3088f95b9`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 683.4 KB (683392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b69bcc24d33923b499b032c6f025872b6ccd11ab8dd2ffd20d83f63a295900`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 6.7 MB (6723998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78357500e5fbbf1a3b0474900cc310f7bc92917b35e50486f705989e48b8d24`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 94.7 KB (94719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1cab8e7767650bc30f450224a5381259325759eb754db90270a5856921096`  
		Last Modified: Tue, 18 Aug 2026 19:26:37 GMT  
		Size: 115.2 MB (115241033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda397495263e78306d155b13b5350b3678458ee610ac6a6bcce5b5b35617aea`  
		Last Modified: Tue, 18 Aug 2026 19:26:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1bfa2cf1a50d70783168ebbce5dc8a876a92ed091fb1638956cca9ee816e7789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551b77104a41b0f9fd95fdab572f094a97657d72947d680ea28c30d1be55fcd0`

```dockerfile
```

-	Layers:
	-	`sha256:9eac09792ec9583e13451adcd5dc5bc23408b2480b5cd1dccd4c02f9d4166889`  
		Last Modified: Tue, 18 Aug 2026 19:26:35 GMT  
		Size: 18.6 MB (18592797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2899e8d1bfa7125767cca96840da3dcc343b4c3dde38e9fd3c1e4d92d0e800`  
		Last Modified: Tue, 18 Aug 2026 19:26:34 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:0030f32dc8a71ef8401c89470db6003c779f036f532d40195790f58f0001902d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:363a5a4dece0332f4b5de681d70632181d5e5d4249ae14908e9c42a9346f5262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296717890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaa24ba253485f52178e82f3f4fc25c710a9c18d63ee9e682fc0f8c2a1d13e5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188f8598c93a80c384039fe6593864c50f71cd0a44f3035d5c88130d59bd660`  
		Last Modified: Tue, 18 Aug 2026 20:24:48 GMT  
		Size: 110.2 MB (110193099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0353efa1a7284bea5a4b2f4b31df42a561f91203aec5bb4707ad01598dfc12`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 372.0 KB (371983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701c43b0aa70f6c72be0c69aa53ce6d547e0c35efad28edd13f4908620ce845c`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cfba4ecf9d346715a1f356ba8a3d976d41bd0d30d8600aea54271ed53c64fc`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 27.9 MB (27892179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:7f64d9458d834a8f13d30f03b973c7cef8f4cae3acf27781ab5b48dba33bf1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab37eb99b058673cbe6aa695b53a963bb1ed4580d41a0a855f81d4d9ad4a7cb`

```dockerfile
```

-	Layers:
	-	`sha256:a86dd66f46ffad293ae5362d4002f9955726eba2e3009e5a5367e18929003194`  
		Last Modified: Tue, 18 Aug 2026 20:24:46 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deea2d824daf09ef341e2f3fb4d4d7884fe4ca711e5013b69d4c3031be247ddf`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f32cf9a6bb4d37d15f60c03f32dfb97797bed2e9797552cfa476e7670dc9a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.1 MB (285130888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd1c7f712471292d1b3a2c8d69271711ab389d5ba7db8d921d895558b8e9df9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341de8f281f7239153dddaab2d7d467dd5a50d45b1888a983e03ac20b30abdfa`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 105.6 MB (105605123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b45849b6b5793f0f0c8a0611d9401e94086bf1a26ffc1180a17b982194f764`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 372.0 KB (371993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9367fffe1dab878a5eec98e8cd4bbba6ee6c9d91c5f943480ab663153d8a2c`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feae052c00719884b14c60709e2ef033d7059763bfc478abf99bee3edfc4fc7d`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 27.0 MB (26998592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:1e3a00349b8b534ce54ddc7af7abd904bde7446815148c178362a1f0b570c9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddab5f0574e7c99889a18788eebd7f22e9d92a4019e7ee05fd2bfbfc19c50412`

```dockerfile
```

-	Layers:
	-	`sha256:6fafcafd7fd9617e56a5552149c12e96441f0086644ef87b73de07f6347658a9`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e63c8ae6eb357eb46ad449848903e82d2b5eb9eee575fdaa4b9704338219f4`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:b1ecfa12393b00a68a6eb5e1cdf3081801797a9f0d61b2650b7158ef809c7232
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:54884b7c5feb4b80e1319de65efa366c3dc27674e47c6d4da6a3aaf2128a03d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081650132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19f195102b019c259845f84d103c2b97380833d2eb8a9710027b5649da44bb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188f8598c93a80c384039fe6593864c50f71cd0a44f3035d5c88130d59bd660`  
		Last Modified: Tue, 18 Aug 2026 20:24:48 GMT  
		Size: 110.2 MB (110193099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0353efa1a7284bea5a4b2f4b31df42a561f91203aec5bb4707ad01598dfc12`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 372.0 KB (371983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701c43b0aa70f6c72be0c69aa53ce6d547e0c35efad28edd13f4908620ce845c`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cfba4ecf9d346715a1f356ba8a3d976d41bd0d30d8600aea54271ed53c64fc`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 27.9 MB (27892179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082bd2561e088b9eb1f56eaf53fa47985c66c1a105ca75754b1a3e3c1b2d2860`  
		Last Modified: Tue, 18 Aug 2026 21:19:50 GMT  
		Size: 784.9 MB (784932242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:44c9468744038852ae9c6cf11455ec03dbccb50bdc3483a4459d230353d23b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb76164fc73a58dae2a94db69b23f6dc0bb68534b285f2b61080f69f901d9c`

```dockerfile
```

-	Layers:
	-	`sha256:3ec8ed65052ff12cae87bf3bec528a316cf4d5256ddcd6db825ddd3d40e25b8e`  
		Last Modified: Tue, 18 Aug 2026 21:19:38 GMT  
		Size: 61.0 MB (61032184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f460519427c2926aa898fe7e9784a6f1c0c1b1d0b36ac48be56cc357469dfa3`  
		Last Modified: Tue, 18 Aug 2026 21:19:35 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed6ba18936367c9c102053bb49acb55e9308e2b947ef84bedc311ca78d2c45ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.2 MB (984212136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7593d5539dcbe3d524aba22bcfbe329471e58bc7781c714affe36cfb0f94e068`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341de8f281f7239153dddaab2d7d467dd5a50d45b1888a983e03ac20b30abdfa`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 105.6 MB (105605123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b45849b6b5793f0f0c8a0611d9401e94086bf1a26ffc1180a17b982194f764`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 372.0 KB (371993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9367fffe1dab878a5eec98e8cd4bbba6ee6c9d91c5f943480ab663153d8a2c`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feae052c00719884b14c60709e2ef033d7059763bfc478abf99bee3edfc4fc7d`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 27.0 MB (26998592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdafe53cd922867f0e3bca03d0c241a50c8bb32bd0df177b21666ff5b027211d`  
		Last Modified: Tue, 18 Aug 2026 21:19:30 GMT  
		Size: 699.1 MB (699081248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:41d3a43535936d6555f970d2bbd57c027b61baa3c30081f01f3abe4a20be095d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60972140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f183acf3dd86519c401c400d206c90103efc3744621345d4a2a610a0572a348a`

```dockerfile
```

-	Layers:
	-	`sha256:1b4abced1ede76f5258ec35ab188511999df72be2f1d4431baec803d8db82ef1`  
		Last Modified: Tue, 18 Aug 2026 21:19:17 GMT  
		Size: 61.0 MB (60962708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aa3fddddde71a8339fd325e14b7bf1cd7e065e148b412dc9d30cad071d21e0c`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:b1ecfa12393b00a68a6eb5e1cdf3081801797a9f0d61b2650b7158ef809c7232
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:54884b7c5feb4b80e1319de65efa366c3dc27674e47c6d4da6a3aaf2128a03d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081650132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19f195102b019c259845f84d103c2b97380833d2eb8a9710027b5649da44bb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188f8598c93a80c384039fe6593864c50f71cd0a44f3035d5c88130d59bd660`  
		Last Modified: Tue, 18 Aug 2026 20:24:48 GMT  
		Size: 110.2 MB (110193099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0353efa1a7284bea5a4b2f4b31df42a561f91203aec5bb4707ad01598dfc12`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 372.0 KB (371983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701c43b0aa70f6c72be0c69aa53ce6d547e0c35efad28edd13f4908620ce845c`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cfba4ecf9d346715a1f356ba8a3d976d41bd0d30d8600aea54271ed53c64fc`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 27.9 MB (27892179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082bd2561e088b9eb1f56eaf53fa47985c66c1a105ca75754b1a3e3c1b2d2860`  
		Last Modified: Tue, 18 Aug 2026 21:19:50 GMT  
		Size: 784.9 MB (784932242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:44c9468744038852ae9c6cf11455ec03dbccb50bdc3483a4459d230353d23b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb76164fc73a58dae2a94db69b23f6dc0bb68534b285f2b61080f69f901d9c`

```dockerfile
```

-	Layers:
	-	`sha256:3ec8ed65052ff12cae87bf3bec528a316cf4d5256ddcd6db825ddd3d40e25b8e`  
		Last Modified: Tue, 18 Aug 2026 21:19:38 GMT  
		Size: 61.0 MB (61032184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f460519427c2926aa898fe7e9784a6f1c0c1b1d0b36ac48be56cc357469dfa3`  
		Last Modified: Tue, 18 Aug 2026 21:19:35 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed6ba18936367c9c102053bb49acb55e9308e2b947ef84bedc311ca78d2c45ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.2 MB (984212136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7593d5539dcbe3d524aba22bcfbe329471e58bc7781c714affe36cfb0f94e068`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341de8f281f7239153dddaab2d7d467dd5a50d45b1888a983e03ac20b30abdfa`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 105.6 MB (105605123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b45849b6b5793f0f0c8a0611d9401e94086bf1a26ffc1180a17b982194f764`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 372.0 KB (371993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9367fffe1dab878a5eec98e8cd4bbba6ee6c9d91c5f943480ab663153d8a2c`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feae052c00719884b14c60709e2ef033d7059763bfc478abf99bee3edfc4fc7d`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 27.0 MB (26998592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdafe53cd922867f0e3bca03d0c241a50c8bb32bd0df177b21666ff5b027211d`  
		Last Modified: Tue, 18 Aug 2026 21:19:30 GMT  
		Size: 699.1 MB (699081248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:41d3a43535936d6555f970d2bbd57c027b61baa3c30081f01f3abe4a20be095d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60972140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f183acf3dd86519c401c400d206c90103efc3744621345d4a2a610a0572a348a`

```dockerfile
```

-	Layers:
	-	`sha256:1b4abced1ede76f5258ec35ab188511999df72be2f1d4431baec803d8db82ef1`  
		Last Modified: Tue, 18 Aug 2026 21:19:17 GMT  
		Size: 61.0 MB (60962708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aa3fddddde71a8339fd325e14b7bf1cd7e065e148b412dc9d30cad071d21e0c`  
		Last Modified: Tue, 18 Aug 2026 21:19:14 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:0030f32dc8a71ef8401c89470db6003c779f036f532d40195790f58f0001902d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:363a5a4dece0332f4b5de681d70632181d5e5d4249ae14908e9c42a9346f5262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296717890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaa24ba253485f52178e82f3f4fc25c710a9c18d63ee9e682fc0f8c2a1d13e5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188f8598c93a80c384039fe6593864c50f71cd0a44f3035d5c88130d59bd660`  
		Last Modified: Tue, 18 Aug 2026 20:24:48 GMT  
		Size: 110.2 MB (110193099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0353efa1a7284bea5a4b2f4b31df42a561f91203aec5bb4707ad01598dfc12`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 372.0 KB (371983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701c43b0aa70f6c72be0c69aa53ce6d547e0c35efad28edd13f4908620ce845c`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cfba4ecf9d346715a1f356ba8a3d976d41bd0d30d8600aea54271ed53c64fc`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 27.9 MB (27892179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:7f64d9458d834a8f13d30f03b973c7cef8f4cae3acf27781ab5b48dba33bf1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab37eb99b058673cbe6aa695b53a963bb1ed4580d41a0a855f81d4d9ad4a7cb`

```dockerfile
```

-	Layers:
	-	`sha256:a86dd66f46ffad293ae5362d4002f9955726eba2e3009e5a5367e18929003194`  
		Last Modified: Tue, 18 Aug 2026 20:24:46 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deea2d824daf09ef341e2f3fb4d4d7884fe4ca711e5013b69d4c3031be247ddf`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f32cf9a6bb4d37d15f60c03f32dfb97797bed2e9797552cfa476e7670dc9a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.1 MB (285130888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd1c7f712471292d1b3a2c8d69271711ab389d5ba7db8d921d895558b8e9df9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341de8f281f7239153dddaab2d7d467dd5a50d45b1888a983e03ac20b30abdfa`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 105.6 MB (105605123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b45849b6b5793f0f0c8a0611d9401e94086bf1a26ffc1180a17b982194f764`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 372.0 KB (371993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9367fffe1dab878a5eec98e8cd4bbba6ee6c9d91c5f943480ab663153d8a2c`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feae052c00719884b14c60709e2ef033d7059763bfc478abf99bee3edfc4fc7d`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 27.0 MB (26998592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1e3a00349b8b534ce54ddc7af7abd904bde7446815148c178362a1f0b570c9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddab5f0574e7c99889a18788eebd7f22e9d92a4019e7ee05fd2bfbfc19c50412`

```dockerfile
```

-	Layers:
	-	`sha256:6fafcafd7fd9617e56a5552149c12e96441f0086644ef87b73de07f6347658a9`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e63c8ae6eb357eb46ad449848903e82d2b5eb9eee575fdaa4b9704338219f4`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:0030f32dc8a71ef8401c89470db6003c779f036f532d40195790f58f0001902d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:363a5a4dece0332f4b5de681d70632181d5e5d4249ae14908e9c42a9346f5262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296717890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaa24ba253485f52178e82f3f4fc25c710a9c18d63ee9e682fc0f8c2a1d13e5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8188f8598c93a80c384039fe6593864c50f71cd0a44f3035d5c88130d59bd660`  
		Last Modified: Tue, 18 Aug 2026 20:24:48 GMT  
		Size: 110.2 MB (110193099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0353efa1a7284bea5a4b2f4b31df42a561f91203aec5bb4707ad01598dfc12`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 372.0 KB (371983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701c43b0aa70f6c72be0c69aa53ce6d547e0c35efad28edd13f4908620ce845c`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 2.6 KB (2570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cfba4ecf9d346715a1f356ba8a3d976d41bd0d30d8600aea54271ed53c64fc`  
		Last Modified: Tue, 18 Aug 2026 20:24:47 GMT  
		Size: 27.9 MB (27892179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:7f64d9458d834a8f13d30f03b973c7cef8f4cae3acf27781ab5b48dba33bf1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab37eb99b058673cbe6aa695b53a963bb1ed4580d41a0a855f81d4d9ad4a7cb`

```dockerfile
```

-	Layers:
	-	`sha256:a86dd66f46ffad293ae5362d4002f9955726eba2e3009e5a5367e18929003194`  
		Last Modified: Tue, 18 Aug 2026 20:24:46 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deea2d824daf09ef341e2f3fb4d4d7884fe4ca711e5013b69d4c3031be247ddf`  
		Last Modified: Tue, 18 Aug 2026 20:24:45 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f32cf9a6bb4d37d15f60c03f32dfb97797bed2e9797552cfa476e7670dc9a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.1 MB (285130888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd1c7f712471292d1b3a2c8d69271711ab389d5ba7db8d921d895558b8e9df9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:19 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:20 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341de8f281f7239153dddaab2d7d467dd5a50d45b1888a983e03ac20b30abdfa`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 105.6 MB (105605123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b45849b6b5793f0f0c8a0611d9401e94086bf1a26ffc1180a17b982194f764`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 372.0 KB (371993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9367fffe1dab878a5eec98e8cd4bbba6ee6c9d91c5f943480ab663153d8a2c`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feae052c00719884b14c60709e2ef033d7059763bfc478abf99bee3edfc4fc7d`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 27.0 MB (26998592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1e3a00349b8b534ce54ddc7af7abd904bde7446815148c178362a1f0b570c9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddab5f0574e7c99889a18788eebd7f22e9d92a4019e7ee05fd2bfbfc19c50412`

```dockerfile
```

-	Layers:
	-	`sha256:6fafcafd7fd9617e56a5552149c12e96441f0086644ef87b73de07f6347658a9`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e63c8ae6eb357eb46ad449848903e82d2b5eb9eee575fdaa4b9704338219f4`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:c0161a007ec1c893744878bd0bd87cc28867b5b80638630781bb3e16d0dae29b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:04dfead2ad9a7bbdf04f3dbabe7d7ed09797ab1be4229279bf84c17d271a8811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158258059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9c1bdf77b6da43a018e580e43d1b10e33d1c0549d2d07529a8739f159448a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:9c29c5ec710caf4c8689a8171a4c4df3edf4a4a5ee3b134e86550a6103011f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18606459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24db823dc44e45d037d535666d51d2ce25c0789018c89b58a345a1a5dd0dd51d`

```dockerfile
```

-	Layers:
	-	`sha256:133425a51daa4ccc879d33cada40be1ead0b33072e6b78266db9bc20c3670746`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 18.6 MB (18591838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27df2f987f3fcd00cee9df614a0977f2ed1d56d11bc089e5a58ba31c5a489937`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ef923ba7459d7775da28a591c3a44597c7fa4377554ba14163e405a809e96c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152152680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d89f81f21ce19ee4a6ad4ffff5ccdf9c9a11b5d1fb393c3fe4ca910fba4b08e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:12f51cd4f088eb6c02f1b8f4e4ce0721418586a8a4b181268fc9cca40ed197a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18580595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e07891cf9c850e0d9e61c8067e03508303d8e2257ab760faaa8a7335b9e634`

```dockerfile
```

-	Layers:
	-	`sha256:ab38ffd5abec04d7f0aef3002fe4652dbccdb52965e2ce4795b91a78c1b532e1`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 18.6 MB (18565849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bf2177ca79404df7d1acc39d90c26f8cdc1271fd33f6c1604f5511e3a77dbe5`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:c0161a007ec1c893744878bd0bd87cc28867b5b80638630781bb3e16d0dae29b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:04dfead2ad9a7bbdf04f3dbabe7d7ed09797ab1be4229279bf84c17d271a8811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158258059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9c1bdf77b6da43a018e580e43d1b10e33d1c0549d2d07529a8739f159448a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:28 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:32 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:13 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc368ccdb237e5e5949ec917ab2cc71099f16453e0cb3cc799d9c4e9b64bcf0`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 683.4 KB (683360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319a2fe04c5e4ec1e0747241a37b3a9ced0e8f49fd5bdec3eca858a0d887d7a`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 6.7 MB (6709418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11782c5c763b4e9963230966bc5f351666ca767d98eac7047b0cc4fd06bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 94.7 KB (94725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e81f31a1d22c80764ab7cb2ff808686ee74a8fc8abc7a682835e1f277db5c6`  
		Last Modified: Tue, 18 Aug 2026 19:26:44 GMT  
		Size: 121.0 MB (121017553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ba2c9f4522f012edd3b328bfea00e9bd748ecde27a2173c3a5b4846d95b7f0`  
		Last Modified: Tue, 18 Aug 2026 19:26:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:9c29c5ec710caf4c8689a8171a4c4df3edf4a4a5ee3b134e86550a6103011f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18606459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24db823dc44e45d037d535666d51d2ce25c0789018c89b58a345a1a5dd0dd51d`

```dockerfile
```

-	Layers:
	-	`sha256:133425a51daa4ccc879d33cada40be1ead0b33072e6b78266db9bc20c3670746`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 18.6 MB (18591838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27df2f987f3fcd00cee9df614a0977f2ed1d56d11bc089e5a58ba31c5a489937`  
		Last Modified: Tue, 18 Aug 2026 19:26:41 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ef923ba7459d7775da28a591c3a44597c7fa4377554ba14163e405a809e96c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152152680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d89f81f21ce19ee4a6ad4ffff5ccdf9c9a11b5d1fb393c3fe4ca910fba4b08e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:18 GMT
ENV ROS_DISTRO=kilted
# Tue, 18 Aug 2026 19:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718e18a375eb7beddf484381e651f8c475cd957ebe1eae4114b272dab2047bf`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 683.4 KB (683389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c84223502dc2ad3514642cf7d23b00020fc3e8200459710c170e0526a2de138`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 6.7 MB (6723970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5884d3a4996be848ce01f40a5ffcc31aa84068be2aed8cbf2706d1a139f6`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 94.7 KB (94712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcea6da50cf0d68002acc153a420854088979957a55a9982f977802a4eaca5b`  
		Last Modified: Tue, 18 Aug 2026 19:26:49 GMT  
		Size: 115.8 MB (115763178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:12f51cd4f088eb6c02f1b8f4e4ce0721418586a8a4b181268fc9cca40ed197a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18580595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e07891cf9c850e0d9e61c8067e03508303d8e2257ab760faaa8a7335b9e634`

```dockerfile
```

-	Layers:
	-	`sha256:ab38ffd5abec04d7f0aef3002fe4652dbccdb52965e2ce4795b91a78c1b532e1`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 18.6 MB (18565849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bf2177ca79404df7d1acc39d90c26f8cdc1271fd33f6c1604f5511e3a77dbe5`  
		Last Modified: Tue, 18 Aug 2026 19:26:46 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:0eea195bb91662a7dfbd6c6b026c209aef1d091e55ce37733e54509580ddf2c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:a9fa072c47b0672293bfe097312f7c049ed307a609f35fa696dc9122cc2dd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (339950380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eeea468a4b632538a2fced270da1581024b0d353e27ab05e4cd23644193fa7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2e281d2e44dc1e537d5fda1892e584ecc726e9693198a06482c7c12d851ec2`  
		Last Modified: Tue, 18 Aug 2026 20:25:13 GMT  
		Size: 124.9 MB (124867017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d087581545923299aef50324414320bca28b470a7ce8b8f46f30d8bbd6e19740`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 397.6 KB (397584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed30f12d90c1f9675e31625c80a6812eae859bfce54676d972491e76f1d39b`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 130.8 KB (130814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1aa00b4002d75047dc9ab085f6b2dc473f8dfc7edba9cb096403ecc92f6631`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 25.7 MB (25718478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:2b6c7663dd1a7cc7275b82049aa5caea595390060f821ea41019943e66e63630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29157694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3503af8dcab5c91f81284c3b2a2cd40b006c8090ed6f4fe9c7c287604a729a28`

```dockerfile
```

-	Layers:
	-	`sha256:26d9ce1a2be7838b12e670d840344dc2767a05ba57ae64096c0aa25c61b55d82`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 29.1 MB (29140244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8239ce12d28173728f0ccc0881030d1c3fed48d1b5366c28cd9eef68953b50fb`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:642134928aae468e42809da31ecb24cef49dff3ccb3aa61d2f5fbf5efc41a149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324650059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8334f047f4d7b2f1f8c5e90e087e96ce30714907ae1a5fceea1f8558c1aef5f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159c6e1176fffbea293ba58a661d6ed8435c7edbcbb0c479ff2c97ea8a276d68`  
		Last Modified: Tue, 18 Aug 2026 20:25:33 GMT  
		Size: 118.3 MB (118276339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6181bae841e34cf3df13ed6095fb4cfa9b4f9a0eb4c021842886a71e5bd5131`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 397.6 KB (397598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c98d9529fb46a1be74cb6a2681b36d16d11656dbb66233ac58e068e7ebea1d5`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 130.8 KB (130809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683c76d3ea6f39e2123921eab5e2bc116447f0245263227beea75cfc5830f088`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 24.7 MB (24670488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:77b13ea101c4dde073771f5ea560a54ae144d3bc466264affec4da3688e5a3ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29222474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a5c90f8d1436108476b4c1f6acf78e85a4f6bf3d965d4f9970078229df0db1`

```dockerfile
```

-	Layers:
	-	`sha256:3599572621f057e6573917d7d0d09cc7e9f056f2b8ec617465d2eef49899d990`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 29.2 MB (29204876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aab76041aa43156b947e3a01e16233604e5edefb8a68a85fd7d959d15f5c74a`  
		Last Modified: Tue, 18 Aug 2026 20:25:29 GMT  
		Size: 17.6 KB (17598 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:0eea195bb91662a7dfbd6c6b026c209aef1d091e55ce37733e54509580ddf2c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:a9fa072c47b0672293bfe097312f7c049ed307a609f35fa696dc9122cc2dd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (339950380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eeea468a4b632538a2fced270da1581024b0d353e27ab05e4cd23644193fa7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2e281d2e44dc1e537d5fda1892e584ecc726e9693198a06482c7c12d851ec2`  
		Last Modified: Tue, 18 Aug 2026 20:25:13 GMT  
		Size: 124.9 MB (124867017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d087581545923299aef50324414320bca28b470a7ce8b8f46f30d8bbd6e19740`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 397.6 KB (397584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed30f12d90c1f9675e31625c80a6812eae859bfce54676d972491e76f1d39b`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 130.8 KB (130814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1aa00b4002d75047dc9ab085f6b2dc473f8dfc7edba9cb096403ecc92f6631`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 25.7 MB (25718478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:2b6c7663dd1a7cc7275b82049aa5caea595390060f821ea41019943e66e63630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29157694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3503af8dcab5c91f81284c3b2a2cd40b006c8090ed6f4fe9c7c287604a729a28`

```dockerfile
```

-	Layers:
	-	`sha256:26d9ce1a2be7838b12e670d840344dc2767a05ba57ae64096c0aa25c61b55d82`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 29.1 MB (29140244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8239ce12d28173728f0ccc0881030d1c3fed48d1b5366c28cd9eef68953b50fb`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:642134928aae468e42809da31ecb24cef49dff3ccb3aa61d2f5fbf5efc41a149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324650059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8334f047f4d7b2f1f8c5e90e087e96ce30714907ae1a5fceea1f8558c1aef5f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159c6e1176fffbea293ba58a661d6ed8435c7edbcbb0c479ff2c97ea8a276d68`  
		Last Modified: Tue, 18 Aug 2026 20:25:33 GMT  
		Size: 118.3 MB (118276339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6181bae841e34cf3df13ed6095fb4cfa9b4f9a0eb4c021842886a71e5bd5131`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 397.6 KB (397598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c98d9529fb46a1be74cb6a2681b36d16d11656dbb66233ac58e068e7ebea1d5`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 130.8 KB (130809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683c76d3ea6f39e2123921eab5e2bc116447f0245263227beea75cfc5830f088`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 24.7 MB (24670488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:77b13ea101c4dde073771f5ea560a54ae144d3bc466264affec4da3688e5a3ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29222474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a5c90f8d1436108476b4c1f6acf78e85a4f6bf3d965d4f9970078229df0db1`

```dockerfile
```

-	Layers:
	-	`sha256:3599572621f057e6573917d7d0d09cc7e9f056f2b8ec617465d2eef49899d990`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 29.2 MB (29204876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aab76041aa43156b947e3a01e16233604e5edefb8a68a85fd7d959d15f5c74a`  
		Last Modified: Tue, 18 Aug 2026 20:25:29 GMT  
		Size: 17.6 KB (17598 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:73d194be4ff072868df18c3ae01e31ca5ea5c596f417eb473be7c97318fd2815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:c6013f984bfa6a01c34e258732ad6c78a891c1c82b0178f27b03835c3b731fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528451526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd706caf8d3ac3eb2ccf27df776b93b780138f7e6daa62f1fdf2981df079243`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:17:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2e281d2e44dc1e537d5fda1892e584ecc726e9693198a06482c7c12d851ec2`  
		Last Modified: Tue, 18 Aug 2026 20:25:13 GMT  
		Size: 124.9 MB (124867017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d087581545923299aef50324414320bca28b470a7ce8b8f46f30d8bbd6e19740`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 397.6 KB (397584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed30f12d90c1f9675e31625c80a6812eae859bfce54676d972491e76f1d39b`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 130.8 KB (130814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1aa00b4002d75047dc9ab085f6b2dc473f8dfc7edba9cb096403ecc92f6631`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 25.7 MB (25718478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2c5964b1936e4999a5b03f548f5cb66cd2b1f0605a5e08f56a16408f8da955`  
		Last Modified: Tue, 18 Aug 2026 21:21:53 GMT  
		Size: 1.2 GB (1188501146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:842534ce3db95d53f3f2775ce649afe4b01c5b8d8fda6ec10c1f6bbb43f5d4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64360748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf699cca14aab4454de9837f0c27766f7f5bdfb7b022d7c7de1fe883eff1295`

```dockerfile
```

-	Layers:
	-	`sha256:8c67586607b9207086e4e48a07072ce98d03b1f01a0f0e2a6746b305c300a73f`  
		Last Modified: Tue, 18 Aug 2026 21:21:33 GMT  
		Size: 64.4 MB (64351055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bd35a39226027646434310c29a9e24709ac0d0aade8b5d2aaa5be0dc31ad5a0`  
		Last Modified: Tue, 18 Aug 2026 21:21:30 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1c636d46014cb5b95f71a87a1ae494fa3a3459832d9c39bb2d8959a5a285e2b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471740147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e6715b8baf36b6972df3450c3da1ae2d29af1112f2c2ef50cd3455c0da9c27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159c6e1176fffbea293ba58a661d6ed8435c7edbcbb0c479ff2c97ea8a276d68`  
		Last Modified: Tue, 18 Aug 2026 20:25:33 GMT  
		Size: 118.3 MB (118276339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6181bae841e34cf3df13ed6095fb4cfa9b4f9a0eb4c021842886a71e5bd5131`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 397.6 KB (397598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c98d9529fb46a1be74cb6a2681b36d16d11656dbb66233ac58e068e7ebea1d5`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 130.8 KB (130809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683c76d3ea6f39e2123921eab5e2bc116447f0245263227beea75cfc5830f088`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 24.7 MB (24670488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b070295483f7f301d50f08a3003a0ca759d366d68de3801bfbcf0e5519e5085e`  
		Last Modified: Tue, 18 Aug 2026 21:21:44 GMT  
		Size: 1.1 GB (1147090088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:f95192c766fd53bddc5588a2b9c2b6642a2d0e17b60b7c583ab6c54d1468751e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64275046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b60d5954490e6732fdb5037b3d1adf502424b344c4af032ecb58e939782ea0c`

```dockerfile
```

-	Layers:
	-	`sha256:5d008f84f8c808a5a3c59163242f5492ed677a843ab9f811285fbe59e80342b2`  
		Last Modified: Tue, 18 Aug 2026 21:21:25 GMT  
		Size: 64.3 MB (64265273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49f5fc7f03d9732714118e889204e6b67239006c5e3cca2cfd239404a70e80ce`  
		Last Modified: Tue, 18 Aug 2026 21:21:23 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:73d194be4ff072868df18c3ae01e31ca5ea5c596f417eb473be7c97318fd2815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:c6013f984bfa6a01c34e258732ad6c78a891c1c82b0178f27b03835c3b731fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528451526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd706caf8d3ac3eb2ccf27df776b93b780138f7e6daa62f1fdf2981df079243`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:17:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2e281d2e44dc1e537d5fda1892e584ecc726e9693198a06482c7c12d851ec2`  
		Last Modified: Tue, 18 Aug 2026 20:25:13 GMT  
		Size: 124.9 MB (124867017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d087581545923299aef50324414320bca28b470a7ce8b8f46f30d8bbd6e19740`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 397.6 KB (397584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed30f12d90c1f9675e31625c80a6812eae859bfce54676d972491e76f1d39b`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 130.8 KB (130814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1aa00b4002d75047dc9ab085f6b2dc473f8dfc7edba9cb096403ecc92f6631`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 25.7 MB (25718478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2c5964b1936e4999a5b03f548f5cb66cd2b1f0605a5e08f56a16408f8da955`  
		Last Modified: Tue, 18 Aug 2026 21:21:53 GMT  
		Size: 1.2 GB (1188501146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:842534ce3db95d53f3f2775ce649afe4b01c5b8d8fda6ec10c1f6bbb43f5d4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64360748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf699cca14aab4454de9837f0c27766f7f5bdfb7b022d7c7de1fe883eff1295`

```dockerfile
```

-	Layers:
	-	`sha256:8c67586607b9207086e4e48a07072ce98d03b1f01a0f0e2a6746b305c300a73f`  
		Last Modified: Tue, 18 Aug 2026 21:21:33 GMT  
		Size: 64.4 MB (64351055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bd35a39226027646434310c29a9e24709ac0d0aade8b5d2aaa5be0dc31ad5a0`  
		Last Modified: Tue, 18 Aug 2026 21:21:30 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1c636d46014cb5b95f71a87a1ae494fa3a3459832d9c39bb2d8959a5a285e2b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471740147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e6715b8baf36b6972df3450c3da1ae2d29af1112f2c2ef50cd3455c0da9c27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159c6e1176fffbea293ba58a661d6ed8435c7edbcbb0c479ff2c97ea8a276d68`  
		Last Modified: Tue, 18 Aug 2026 20:25:33 GMT  
		Size: 118.3 MB (118276339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6181bae841e34cf3df13ed6095fb4cfa9b4f9a0eb4c021842886a71e5bd5131`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 397.6 KB (397598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c98d9529fb46a1be74cb6a2681b36d16d11656dbb66233ac58e068e7ebea1d5`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 130.8 KB (130809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683c76d3ea6f39e2123921eab5e2bc116447f0245263227beea75cfc5830f088`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 24.7 MB (24670488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b070295483f7f301d50f08a3003a0ca759d366d68de3801bfbcf0e5519e5085e`  
		Last Modified: Tue, 18 Aug 2026 21:21:44 GMT  
		Size: 1.1 GB (1147090088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:f95192c766fd53bddc5588a2b9c2b6642a2d0e17b60b7c583ab6c54d1468751e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64275046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b60d5954490e6732fdb5037b3d1adf502424b344c4af032ecb58e939782ea0c`

```dockerfile
```

-	Layers:
	-	`sha256:5d008f84f8c808a5a3c59163242f5492ed677a843ab9f811285fbe59e80342b2`  
		Last Modified: Tue, 18 Aug 2026 21:21:25 GMT  
		Size: 64.3 MB (64265273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49f5fc7f03d9732714118e889204e6b67239006c5e3cca2cfd239404a70e80ce`  
		Last Modified: Tue, 18 Aug 2026 21:21:23 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:0eea195bb91662a7dfbd6c6b026c209aef1d091e55ce37733e54509580ddf2c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:a9fa072c47b0672293bfe097312f7c049ed307a609f35fa696dc9122cc2dd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (339950380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eeea468a4b632538a2fced270da1581024b0d353e27ab05e4cd23644193fa7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2e281d2e44dc1e537d5fda1892e584ecc726e9693198a06482c7c12d851ec2`  
		Last Modified: Tue, 18 Aug 2026 20:25:13 GMT  
		Size: 124.9 MB (124867017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d087581545923299aef50324414320bca28b470a7ce8b8f46f30d8bbd6e19740`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 397.6 KB (397584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed30f12d90c1f9675e31625c80a6812eae859bfce54676d972491e76f1d39b`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 130.8 KB (130814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1aa00b4002d75047dc9ab085f6b2dc473f8dfc7edba9cb096403ecc92f6631`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 25.7 MB (25718478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:2b6c7663dd1a7cc7275b82049aa5caea595390060f821ea41019943e66e63630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29157694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3503af8dcab5c91f81284c3b2a2cd40b006c8090ed6f4fe9c7c287604a729a28`

```dockerfile
```

-	Layers:
	-	`sha256:26d9ce1a2be7838b12e670d840344dc2767a05ba57ae64096c0aa25c61b55d82`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 29.1 MB (29140244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8239ce12d28173728f0ccc0881030d1c3fed48d1b5366c28cd9eef68953b50fb`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:642134928aae468e42809da31ecb24cef49dff3ccb3aa61d2f5fbf5efc41a149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324650059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8334f047f4d7b2f1f8c5e90e087e96ce30714907ae1a5fceea1f8558c1aef5f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159c6e1176fffbea293ba58a661d6ed8435c7edbcbb0c479ff2c97ea8a276d68`  
		Last Modified: Tue, 18 Aug 2026 20:25:33 GMT  
		Size: 118.3 MB (118276339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6181bae841e34cf3df13ed6095fb4cfa9b4f9a0eb4c021842886a71e5bd5131`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 397.6 KB (397598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c98d9529fb46a1be74cb6a2681b36d16d11656dbb66233ac58e068e7ebea1d5`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 130.8 KB (130809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683c76d3ea6f39e2123921eab5e2bc116447f0245263227beea75cfc5830f088`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 24.7 MB (24670488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:77b13ea101c4dde073771f5ea560a54ae144d3bc466264affec4da3688e5a3ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29222474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a5c90f8d1436108476b4c1f6acf78e85a4f6bf3d965d4f9970078229df0db1`

```dockerfile
```

-	Layers:
	-	`sha256:3599572621f057e6573917d7d0d09cc7e9f056f2b8ec617465d2eef49899d990`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 29.2 MB (29204876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aab76041aa43156b947e3a01e16233604e5edefb8a68a85fd7d959d15f5c74a`  
		Last Modified: Tue, 18 Aug 2026 20:25:29 GMT  
		Size: 17.6 KB (17598 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:0eea195bb91662a7dfbd6c6b026c209aef1d091e55ce37733e54509580ddf2c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:a9fa072c47b0672293bfe097312f7c049ed307a609f35fa696dc9122cc2dd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (339950380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eeea468a4b632538a2fced270da1581024b0d353e27ab05e4cd23644193fa7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2e281d2e44dc1e537d5fda1892e584ecc726e9693198a06482c7c12d851ec2`  
		Last Modified: Tue, 18 Aug 2026 20:25:13 GMT  
		Size: 124.9 MB (124867017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d087581545923299aef50324414320bca28b470a7ce8b8f46f30d8bbd6e19740`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 397.6 KB (397584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed30f12d90c1f9675e31625c80a6812eae859bfce54676d972491e76f1d39b`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 130.8 KB (130814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1aa00b4002d75047dc9ab085f6b2dc473f8dfc7edba9cb096403ecc92f6631`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 25.7 MB (25718478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:2b6c7663dd1a7cc7275b82049aa5caea595390060f821ea41019943e66e63630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29157694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3503af8dcab5c91f81284c3b2a2cd40b006c8090ed6f4fe9c7c287604a729a28`

```dockerfile
```

-	Layers:
	-	`sha256:26d9ce1a2be7838b12e670d840344dc2767a05ba57ae64096c0aa25c61b55d82`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 29.1 MB (29140244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8239ce12d28173728f0ccc0881030d1c3fed48d1b5366c28cd9eef68953b50fb`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:642134928aae468e42809da31ecb24cef49dff3ccb3aa61d2f5fbf5efc41a149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324650059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8334f047f4d7b2f1f8c5e90e087e96ce30714907ae1a5fceea1f8558c1aef5f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159c6e1176fffbea293ba58a661d6ed8435c7edbcbb0c479ff2c97ea8a276d68`  
		Last Modified: Tue, 18 Aug 2026 20:25:33 GMT  
		Size: 118.3 MB (118276339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6181bae841e34cf3df13ed6095fb4cfa9b4f9a0eb4c021842886a71e5bd5131`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 397.6 KB (397598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c98d9529fb46a1be74cb6a2681b36d16d11656dbb66233ac58e068e7ebea1d5`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 130.8 KB (130809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683c76d3ea6f39e2123921eab5e2bc116447f0245263227beea75cfc5830f088`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 24.7 MB (24670488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:77b13ea101c4dde073771f5ea560a54ae144d3bc466264affec4da3688e5a3ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29222474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a5c90f8d1436108476b4c1f6acf78e85a4f6bf3d965d4f9970078229df0db1`

```dockerfile
```

-	Layers:
	-	`sha256:3599572621f057e6573917d7d0d09cc7e9f056f2b8ec617465d2eef49899d990`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 29.2 MB (29204876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aab76041aa43156b947e3a01e16233604e5edefb8a68a85fd7d959d15f5c74a`  
		Last Modified: Tue, 18 Aug 2026 20:25:29 GMT  
		Size: 17.6 KB (17598 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:9ce7de35ea0556e3f2a8bb879b901bc2e48000803b14e8d918a8f462ae0522e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:e15cdd0d8c7a09be8957303924c6867c17b5df55dc59ea4d63dabb408847448d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188836487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9f708fad9a738727de59c82bc7f215eb91c21a8e6b9df9fd245683906abbd2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:da45ffbbb9cb105152151cb4cbae4d1ccb900c27db89a117faaa7bbb73f44aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22758849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a467c024d5799e456475eeb01c45366df1b2e0cc94653a752d61f6a29597f425`

```dockerfile
```

-	Layers:
	-	`sha256:a45d836d9c19bb900d6e8c30779468532df0e90a054c1875967969984f637a79`  
		Last Modified: Tue, 18 Aug 2026 19:27:04 GMT  
		Size: 22.7 MB (22743266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67aa8e45728ffe1d5175c7a50b36d498405524e1b369ac5f6021d3be6c8f05eb`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:628c7a1b7010e71f2f3746a9ca95fe6c57d29fea68cd2d174fef6f9ae9906357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181174825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ae569cb00889ef6756b070488f07b23f3bf414d08b319a809ddb229740336b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:b5cf3f46a7cbacab3b62bdbb2624e13a02f4fdea4c472ac9bb7261c52fd0a3e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22731666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c28c4651210bba3327a98ae3fdd45e1be784fae0a7101acb66b39225475b57c`

```dockerfile
```

-	Layers:
	-	`sha256:a3f89d5f28c8eb4a305e88a1dabfabd7663d9e795952bb25a52c1840a8a8c233`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 22.7 MB (22715958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a445e014d71a937c60f06fc55039f9b11a70bebdab178e41c9de5b58374f0f02`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:9ce7de35ea0556e3f2a8bb879b901bc2e48000803b14e8d918a8f462ae0522e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:e15cdd0d8c7a09be8957303924c6867c17b5df55dc59ea4d63dabb408847448d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188836487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9f708fad9a738727de59c82bc7f215eb91c21a8e6b9df9fd245683906abbd2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:da45ffbbb9cb105152151cb4cbae4d1ccb900c27db89a117faaa7bbb73f44aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22758849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a467c024d5799e456475eeb01c45366df1b2e0cc94653a752d61f6a29597f425`

```dockerfile
```

-	Layers:
	-	`sha256:a45d836d9c19bb900d6e8c30779468532df0e90a054c1875967969984f637a79`  
		Last Modified: Tue, 18 Aug 2026 19:27:04 GMT  
		Size: 22.7 MB (22743266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67aa8e45728ffe1d5175c7a50b36d498405524e1b369ac5f6021d3be6c8f05eb`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:628c7a1b7010e71f2f3746a9ca95fe6c57d29fea68cd2d174fef6f9ae9906357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181174825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ae569cb00889ef6756b070488f07b23f3bf414d08b319a809ddb229740336b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:b5cf3f46a7cbacab3b62bdbb2624e13a02f4fdea4c472ac9bb7261c52fd0a3e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22731666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c28c4651210bba3327a98ae3fdd45e1be784fae0a7101acb66b39225475b57c`

```dockerfile
```

-	Layers:
	-	`sha256:a3f89d5f28c8eb4a305e88a1dabfabd7663d9e795952bb25a52c1840a8a8c233`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 22.7 MB (22715958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a445e014d71a937c60f06fc55039f9b11a70bebdab178e41c9de5b58374f0f02`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:812a4b6ab03877842545398d99cf15dc25a01ff8065e8c1e117cd3750c7ca5c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:6536553889f36066b3ecea5e46d80c31c6d70aa66edb5d396beb8c22248c3524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.3 MB (340264307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5d41819c13dba352e1af8ec0dbde6e07c5608b3e6199f70adda81766853523`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:26:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:03 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:07 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:57 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:53 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:55 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de949f482232d3593fd2dd1697efa925ea175918c23f08a5248b23c13b6c2d5`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 740.9 KB (740879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a2e789b5e54d11693bc7637189d948d2cc614a8a69885a9a498d7e6cbf7ceb`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 9.8 MB (9785047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6b65dd6dbb32be1e3885c0ede0cbb1b6de5af464ee3586706f05871ff3f182`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 91.1 KB (91052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be233ce8d85df0b871e01e6ae34b0430587ce2afb298848f8b3870f93d3fa5eb`  
		Last Modified: Tue, 18 Aug 2026 19:28:43 GMT  
		Size: 136.9 MB (136937183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692df8fe4215858ed813e192585eab73720105171c0764d1cb07e7fc2845aa4d`  
		Last Modified: Tue, 18 Aug 2026 19:28:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cf8cfefb395e94817a8b17f88d56f4fd19a969803c2f668afe05b9f9c0bbd8`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 124.9 MB (124866989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98025040963b6185a94544d56f10387d49f816b2f5575eef22129bce28b1dd9`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 362.7 KB (362678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ee0bb6de69a1be70879702f5dc7745651b8bd1eaa35cd9ec473a71002196e3`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679e4d4090f924e6ae4dd0c7f6248c6ef685b05989497458c4ad662a59eb57fd`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 25.8 MB (25779824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:8906b8eab54cdfd1ee1fa00bf68aca1b781cd8c8ad70b6c6f1c7f49c61639dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29155185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf771fb39559d50f71738b5042a03fe43bc9dbb046ac73e6cda0e61ec3be2f42`

```dockerfile
```

-	Layers:
	-	`sha256:d942cf14d816080973ea88401a3ae1aad9e432afb1f64164828b48663f5b9189`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 29.1 MB (29138027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d53df6d6359d2be8fcef92d98117852768931256da13d4aec201c1661f1dcebf`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e85f45d4d958683c5500984638d0f872626cdeec13a50ca72c21f3a3f9d38823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324940849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7a323fcfef82c07a5df5c5f4ff3d7a72c568a4d154ac71c8664bb348245a4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:26:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:02 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:49 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c7cf40bae3dc17bf060190f3880f4f7394e3192651f5e1cb4886b06fe087d2`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 740.8 KB (740815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039c01d6f4f8b9185a0a4702c1fdc663d92fac334a8a55deaf8680d7fab94a75`  
		Last Modified: Tue, 18 Aug 2026 19:28:27 GMT  
		Size: 9.6 MB (9609661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b4e193ddde3780d22754bdd73a290df0726f9d279d91675ee251ad663e288c`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 91.0 KB (90987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f335b45f818e469b57623d232d7ab7ce6d378788a4030821dfdd82a6ac09b8`  
		Last Modified: Tue, 18 Aug 2026 19:28:30 GMT  
		Size: 130.3 MB (130306439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f163f0f9b2afcea0981d5fe8b76f675b33d594a2c3e34028970d560756fccce`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3502b4240c4d1e585510ad31fe2840b82119e4381ea86e7bd67d5cf93e55d4`  
		Last Modified: Tue, 18 Aug 2026 20:25:32 GMT  
		Size: 118.3 MB (118276403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539f441b8b2cc8d8621dc910fa7d885019187b99c8398d825a52e9a5c0b57696`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 362.7 KB (362681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4b1513dcb97026f2d48c3b53ff492a6f696ad579a2ab89d9d81cb9beeb658`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf07796190059f6c3b4fcd03e88db7d62d692764fbd15fbd98879cfb8c8b7cb`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 24.7 MB (24726046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:e49ae4af7543ff4efaa43520b7fc7d63d22b42792f3923a4b905c9ce760abaf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29219941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ee561c0ecf94a40dd80687eb75ed315349c984375f503a3993124125038161`

```dockerfile
```

-	Layers:
	-	`sha256:ff9e1977f9940b2250dabde218952fa6846cfbe3a1302dc4347debb45ca4e191`  
		Last Modified: Tue, 18 Aug 2026 20:25:29 GMT  
		Size: 29.2 MB (29202647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c83b30affaef535b9442e02ca926a1c8abae501a607c11b1df52978ac289a7bd`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:11216825cf4bca4cb23670ce4cfe37753176c48bdb418169b2cffc94945a9b87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:98bf67ad51d4162a3f5e485b6a5039e499e36f4f804891a5d26c32dd7cba7d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528687645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745a089fec2ed32674cede1b910e37fc34eca5373ca9d36667edc5bc562f8710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:06:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.8989.tar --tag 26.04
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.8989.tar
# Thu, 16 Jul 2026 00:37:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:18 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:10 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:18:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed819469700fe2cd94f44a7c218a84e40cda16dd2e7e5238cbdef33e6153d536`  
		Last Modified: Mon, 13 Jul 2026 22:13:37 GMT  
		Size: 41.6 MB (41580757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3679419df184857c0d317d7cdaad6187f6c0f0b68dd2ed58becf174e28f4c1b`  
		Last Modified: Mon, 13 Jul 2026 22:13:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d4ec5b8162b7bdc79d6910e2bf07b4d5239753384d6716803ef643b9fc9f1d`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 741.1 KB (741067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7ab849d94c28f521fe5eae380534ce75d6ba8844cb6d53f0b6d780b0607082`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 9.8 MB (9784018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5468cf8bb7ece550b332ae613d317da7f081a7ae6878acfc88a645e718cf49`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 90.1 KB (90080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c16a252edd64fd4e0b3bb2510c4c0189b5277bd687e451992585d55a8b0383e`  
		Last Modified: Thu, 16 Jul 2026 00:38:56 GMT  
		Size: 136.8 MB (136835349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa36fd8fe4fd568b93a41ba29dc466187c2ba3e30aac4cf1092351b01e5283c`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba190c6521da847653a8879de7ef1e782c95870360c6e8e3018452a93746732`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 124.9 MB (124864076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032c8e898432e45def3595b2f11c3b262fdcab16bc16cdf4957285998b580561`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 373.2 KB (373217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b822d4cc2a52e077b5276f8ce026e84b6725442f68aa2dceeb20daa326a8d6b6`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 130.8 KB (130804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d4a41a5d26b802dbd745837d8f2e0bec1a9c007ecbebe771d1924b90df366`  
		Last Modified: Thu, 16 Jul 2026 01:19:11 GMT  
		Size: 25.8 MB (25792662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e43c211cfbc245a9bfe9782727910628335845f7580f1c220ac5c0aa099cca`  
		Last Modified: Thu, 16 Jul 2026 02:24:55 GMT  
		Size: 1.2 GB (1188495027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:3307ca9198a61504f8705215a52b64f64eb579e9488582e3a2aa9d2440d5034b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64346499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c348ffb492373b1cfbc0bc625e4224bcacf5c90a2dd549f14bd6778c1c76f76d`

```dockerfile
```

-	Layers:
	-	`sha256:afb53147cb1cef63b3697b3571bb993fbede43cb979f539304ec3452d1df0c9e`  
		Last Modified: Thu, 16 Jul 2026 02:24:34 GMT  
		Size: 64.3 MB (64336806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:991e885f92898f8306b24b1854b7ad69a312141f5b0413674584130551d00cdc`  
		Last Modified: Thu, 16 Jul 2026 02:24:31 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3f2f1b3fc834e9afbf89549d9daf11d92035f66e17d6c14de33f4bd1282caf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471981620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ccbb2632db6f1f8560066f2cc16b3c75cf0dda49318f30c8d015fa44a9c632`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 09 Jul 2026 18:31:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:36 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:27 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 18:37:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:37:29 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 18:37:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 18:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:14:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b212f396a8d7403086bea7814b524a8a476d936ea87bd795407c72f29c93c06`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 742.0 KB (742032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384fc61248925600a0cd688c6766d5dc8e9be47385266c4b9e57fcda86d2ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:06 GMT  
		Size: 9.6 MB (9607107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8fec7cbfae0c5b67babc22a87591ea889647c1cfa0271c4216e61c0b06b00`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 91.1 KB (91098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cddbe9789e5807f02c1f44acc072e1cf22050e93b14b9a2d49e357e490629`  
		Last Modified: Thu, 09 Jul 2026 18:33:09 GMT  
		Size: 130.2 MB (130199952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baef65b99574c57f36722163f7eac27b5eace626399f04ae7e68236c167f196`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f53707932ffe7d1fb0f581bebdb046f570db5e5a5fe05563b64483788ae81c`  
		Last Modified: Thu, 09 Jul 2026 18:38:48 GMT  
		Size: 118.3 MB (118276238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b1067915e749fb82d1cf7fc0c33acee692788c9bdddccb700e6dd2839b0039`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 372.6 KB (372574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a9e2e7a4414c19adaf6ae13b5efd963fa29cb15b0bd84f32f92230b9221aac`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 130.9 KB (130865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba84455dbba6cbdd79476f6e4fa70e16abf4d574f88ec6b7abd7d102558eab3`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 24.7 MB (24738576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4be9b396657f44c2d43ae0fbf13b64036791df347a36d0f051c6ac61cd3e14b`  
		Last Modified: Thu, 09 Jul 2026 19:19:00 GMT  
		Size: 1.1 GB (1147110830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:ae83e711178e56dda03535532419d1ff32187c84833c702c4d413a501789a6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64260731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3775709595dfe3d13a7496499c61c5a50d35ec6290dd56079b913d1e214a0f`

```dockerfile
```

-	Layers:
	-	`sha256:3c75211a66cace79bbc434a5e60ea97596a6f5903d0515d83ae8b2b74643e08e`  
		Last Modified: Thu, 09 Jul 2026 19:18:41 GMT  
		Size: 64.3 MB (64250958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c4efebf91b56b959f4912cf6714b41f71fa37366ab5dd43b8a3c72e3c42b9f5`  
		Last Modified: Thu, 09 Jul 2026 19:18:38 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:11216825cf4bca4cb23670ce4cfe37753176c48bdb418169b2cffc94945a9b87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:98bf67ad51d4162a3f5e485b6a5039e499e36f4f804891a5d26c32dd7cba7d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528687645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745a089fec2ed32674cede1b910e37fc34eca5373ca9d36667edc5bc562f8710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:06:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.8989.tar --tag 26.04
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.8989.tar
# Thu, 16 Jul 2026 00:37:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:18 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:10 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:10 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:58 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:18:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed819469700fe2cd94f44a7c218a84e40cda16dd2e7e5238cbdef33e6153d536`  
		Last Modified: Mon, 13 Jul 2026 22:13:37 GMT  
		Size: 41.6 MB (41580757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3679419df184857c0d317d7cdaad6187f6c0f0b68dd2ed58becf174e28f4c1b`  
		Last Modified: Mon, 13 Jul 2026 22:13:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d4ec5b8162b7bdc79d6910e2bf07b4d5239753384d6716803ef643b9fc9f1d`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 741.1 KB (741067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7ab849d94c28f521fe5eae380534ce75d6ba8844cb6d53f0b6d780b0607082`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 9.8 MB (9784018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5468cf8bb7ece550b332ae613d317da7f081a7ae6878acfc88a645e718cf49`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 90.1 KB (90080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c16a252edd64fd4e0b3bb2510c4c0189b5277bd687e451992585d55a8b0383e`  
		Last Modified: Thu, 16 Jul 2026 00:38:56 GMT  
		Size: 136.8 MB (136835349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa36fd8fe4fd568b93a41ba29dc466187c2ba3e30aac4cf1092351b01e5283c`  
		Last Modified: Thu, 16 Jul 2026 00:38:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba190c6521da847653a8879de7ef1e782c95870360c6e8e3018452a93746732`  
		Last Modified: Thu, 16 Jul 2026 01:19:14 GMT  
		Size: 124.9 MB (124864076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032c8e898432e45def3595b2f11c3b262fdcab16bc16cdf4957285998b580561`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 373.2 KB (373217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b822d4cc2a52e077b5276f8ce026e84b6725442f68aa2dceeb20daa326a8d6b6`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 130.8 KB (130804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d4a41a5d26b802dbd745837d8f2e0bec1a9c007ecbebe771d1924b90df366`  
		Last Modified: Thu, 16 Jul 2026 01:19:11 GMT  
		Size: 25.8 MB (25792662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e43c211cfbc245a9bfe9782727910628335845f7580f1c220ac5c0aa099cca`  
		Last Modified: Thu, 16 Jul 2026 02:24:55 GMT  
		Size: 1.2 GB (1188495027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3307ca9198a61504f8705215a52b64f64eb579e9488582e3a2aa9d2440d5034b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64346499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c348ffb492373b1cfbc0bc625e4224bcacf5c90a2dd549f14bd6778c1c76f76d`

```dockerfile
```

-	Layers:
	-	`sha256:afb53147cb1cef63b3697b3571bb993fbede43cb979f539304ec3452d1df0c9e`  
		Last Modified: Thu, 16 Jul 2026 02:24:34 GMT  
		Size: 64.3 MB (64336806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:991e885f92898f8306b24b1854b7ad69a312141f5b0413674584130551d00cdc`  
		Last Modified: Thu, 16 Jul 2026 02:24:31 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3f2f1b3fc834e9afbf89549d9daf11d92035f66e17d6c14de33f4bd1282caf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471981620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ccbb2632db6f1f8560066f2cc16b3c75cf0dda49318f30c8d015fa44a9c632`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 09 Jul 2026 18:31:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:36 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:27 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 18:37:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:37:29 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 18:37:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 18:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:14:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b212f396a8d7403086bea7814b524a8a476d936ea87bd795407c72f29c93c06`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 742.0 KB (742032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384fc61248925600a0cd688c6766d5dc8e9be47385266c4b9e57fcda86d2ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:06 GMT  
		Size: 9.6 MB (9607107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8fec7cbfae0c5b67babc22a87591ea889647c1cfa0271c4216e61c0b06b00`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 91.1 KB (91098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cddbe9789e5807f02c1f44acc072e1cf22050e93b14b9a2d49e357e490629`  
		Last Modified: Thu, 09 Jul 2026 18:33:09 GMT  
		Size: 130.2 MB (130199952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baef65b99574c57f36722163f7eac27b5eace626399f04ae7e68236c167f196`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f53707932ffe7d1fb0f581bebdb046f570db5e5a5fe05563b64483788ae81c`  
		Last Modified: Thu, 09 Jul 2026 18:38:48 GMT  
		Size: 118.3 MB (118276238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b1067915e749fb82d1cf7fc0c33acee692788c9bdddccb700e6dd2839b0039`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 372.6 KB (372574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a9e2e7a4414c19adaf6ae13b5efd963fa29cb15b0bd84f32f92230b9221aac`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 130.9 KB (130865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba84455dbba6cbdd79476f6e4fa70e16abf4d574f88ec6b7abd7d102558eab3`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 24.7 MB (24738576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4be9b396657f44c2d43ae0fbf13b64036791df347a36d0f051c6ac61cd3e14b`  
		Last Modified: Thu, 09 Jul 2026 19:19:00 GMT  
		Size: 1.1 GB (1147110830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ae83e711178e56dda03535532419d1ff32187c84833c702c4d413a501789a6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64260731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3775709595dfe3d13a7496499c61c5a50d35ec6290dd56079b913d1e214a0f`

```dockerfile
```

-	Layers:
	-	`sha256:3c75211a66cace79bbc434a5e60ea97596a6f5903d0515d83ae8b2b74643e08e`  
		Last Modified: Thu, 09 Jul 2026 19:18:41 GMT  
		Size: 64.3 MB (64250958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c4efebf91b56b959f4912cf6714b41f71fa37366ab5dd43b8a3c72e3c42b9f5`  
		Last Modified: Thu, 09 Jul 2026 19:18:38 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:812a4b6ab03877842545398d99cf15dc25a01ff8065e8c1e117cd3750c7ca5c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6536553889f36066b3ecea5e46d80c31c6d70aa66edb5d396beb8c22248c3524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.3 MB (340264307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5d41819c13dba352e1af8ec0dbde6e07c5608b3e6199f70adda81766853523`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:26:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:03 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:07 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:57 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:53 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:55 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de949f482232d3593fd2dd1697efa925ea175918c23f08a5248b23c13b6c2d5`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 740.9 KB (740879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a2e789b5e54d11693bc7637189d948d2cc614a8a69885a9a498d7e6cbf7ceb`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 9.8 MB (9785047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6b65dd6dbb32be1e3885c0ede0cbb1b6de5af464ee3586706f05871ff3f182`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 91.1 KB (91052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be233ce8d85df0b871e01e6ae34b0430587ce2afb298848f8b3870f93d3fa5eb`  
		Last Modified: Tue, 18 Aug 2026 19:28:43 GMT  
		Size: 136.9 MB (136937183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692df8fe4215858ed813e192585eab73720105171c0764d1cb07e7fc2845aa4d`  
		Last Modified: Tue, 18 Aug 2026 19:28:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cf8cfefb395e94817a8b17f88d56f4fd19a969803c2f668afe05b9f9c0bbd8`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 124.9 MB (124866989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98025040963b6185a94544d56f10387d49f816b2f5575eef22129bce28b1dd9`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 362.7 KB (362678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ee0bb6de69a1be70879702f5dc7745651b8bd1eaa35cd9ec473a71002196e3`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679e4d4090f924e6ae4dd0c7f6248c6ef685b05989497458c4ad662a59eb57fd`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 25.8 MB (25779824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:8906b8eab54cdfd1ee1fa00bf68aca1b781cd8c8ad70b6c6f1c7f49c61639dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29155185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf771fb39559d50f71738b5042a03fe43bc9dbb046ac73e6cda0e61ec3be2f42`

```dockerfile
```

-	Layers:
	-	`sha256:d942cf14d816080973ea88401a3ae1aad9e432afb1f64164828b48663f5b9189`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 29.1 MB (29138027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d53df6d6359d2be8fcef92d98117852768931256da13d4aec201c1661f1dcebf`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e85f45d4d958683c5500984638d0f872626cdeec13a50ca72c21f3a3f9d38823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324940849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7a323fcfef82c07a5df5c5f4ff3d7a72c568a4d154ac71c8664bb348245a4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:26:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:02 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:49 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c7cf40bae3dc17bf060190f3880f4f7394e3192651f5e1cb4886b06fe087d2`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 740.8 KB (740815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039c01d6f4f8b9185a0a4702c1fdc663d92fac334a8a55deaf8680d7fab94a75`  
		Last Modified: Tue, 18 Aug 2026 19:28:27 GMT  
		Size: 9.6 MB (9609661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b4e193ddde3780d22754bdd73a290df0726f9d279d91675ee251ad663e288c`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 91.0 KB (90987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f335b45f818e469b57623d232d7ab7ce6d378788a4030821dfdd82a6ac09b8`  
		Last Modified: Tue, 18 Aug 2026 19:28:30 GMT  
		Size: 130.3 MB (130306439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f163f0f9b2afcea0981d5fe8b76f675b33d594a2c3e34028970d560756fccce`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3502b4240c4d1e585510ad31fe2840b82119e4381ea86e7bd67d5cf93e55d4`  
		Last Modified: Tue, 18 Aug 2026 20:25:32 GMT  
		Size: 118.3 MB (118276403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539f441b8b2cc8d8621dc910fa7d885019187b99c8398d825a52e9a5c0b57696`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 362.7 KB (362681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4b1513dcb97026f2d48c3b53ff492a6f696ad579a2ab89d9d81cb9beeb658`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf07796190059f6c3b4fcd03e88db7d62d692764fbd15fbd98879cfb8c8b7cb`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 24.7 MB (24726046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:e49ae4af7543ff4efaa43520b7fc7d63d22b42792f3923a4b905c9ce760abaf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29219941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ee561c0ecf94a40dd80687eb75ed315349c984375f503a3993124125038161`

```dockerfile
```

-	Layers:
	-	`sha256:ff9e1977f9940b2250dabde218952fa6846cfbe3a1302dc4347debb45ca4e191`  
		Last Modified: Tue, 18 Aug 2026 20:25:29 GMT  
		Size: 29.2 MB (29202647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c83b30affaef535b9442e02ca926a1c8abae501a607c11b1df52978ac289a7bd`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:812a4b6ab03877842545398d99cf15dc25a01ff8065e8c1e117cd3750c7ca5c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:6536553889f36066b3ecea5e46d80c31c6d70aa66edb5d396beb8c22248c3524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.3 MB (340264307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5d41819c13dba352e1af8ec0dbde6e07c5608b3e6199f70adda81766853523`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:26:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:03 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:07 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:57 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:53 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:55 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de949f482232d3593fd2dd1697efa925ea175918c23f08a5248b23c13b6c2d5`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 740.9 KB (740879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a2e789b5e54d11693bc7637189d948d2cc614a8a69885a9a498d7e6cbf7ceb`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 9.8 MB (9785047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6b65dd6dbb32be1e3885c0ede0cbb1b6de5af464ee3586706f05871ff3f182`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 91.1 KB (91052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be233ce8d85df0b871e01e6ae34b0430587ce2afb298848f8b3870f93d3fa5eb`  
		Last Modified: Tue, 18 Aug 2026 19:28:43 GMT  
		Size: 136.9 MB (136937183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692df8fe4215858ed813e192585eab73720105171c0764d1cb07e7fc2845aa4d`  
		Last Modified: Tue, 18 Aug 2026 19:28:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cf8cfefb395e94817a8b17f88d56f4fd19a969803c2f668afe05b9f9c0bbd8`  
		Last Modified: Tue, 18 Aug 2026 20:25:14 GMT  
		Size: 124.9 MB (124866989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98025040963b6185a94544d56f10387d49f816b2f5575eef22129bce28b1dd9`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 362.7 KB (362678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ee0bb6de69a1be70879702f5dc7745651b8bd1eaa35cd9ec473a71002196e3`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 130.9 KB (130863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679e4d4090f924e6ae4dd0c7f6248c6ef685b05989497458c4ad662a59eb57fd`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 25.8 MB (25779824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:8906b8eab54cdfd1ee1fa00bf68aca1b781cd8c8ad70b6c6f1c7f49c61639dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29155185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf771fb39559d50f71738b5042a03fe43bc9dbb046ac73e6cda0e61ec3be2f42`

```dockerfile
```

-	Layers:
	-	`sha256:d942cf14d816080973ea88401a3ae1aad9e432afb1f64164828b48663f5b9189`  
		Last Modified: Tue, 18 Aug 2026 20:25:12 GMT  
		Size: 29.1 MB (29138027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d53df6d6359d2be8fcef92d98117852768931256da13d4aec201c1661f1dcebf`  
		Last Modified: Tue, 18 Aug 2026 20:25:11 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e85f45d4d958683c5500984638d0f872626cdeec13a50ca72c21f3a3f9d38823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324940849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7a323fcfef82c07a5df5c5f4ff3d7a72c568a4d154ac71c8664bb348245a4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:26:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:02 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:49 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c7cf40bae3dc17bf060190f3880f4f7394e3192651f5e1cb4886b06fe087d2`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 740.8 KB (740815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039c01d6f4f8b9185a0a4702c1fdc663d92fac334a8a55deaf8680d7fab94a75`  
		Last Modified: Tue, 18 Aug 2026 19:28:27 GMT  
		Size: 9.6 MB (9609661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b4e193ddde3780d22754bdd73a290df0726f9d279d91675ee251ad663e288c`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 91.0 KB (90987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f335b45f818e469b57623d232d7ab7ce6d378788a4030821dfdd82a6ac09b8`  
		Last Modified: Tue, 18 Aug 2026 19:28:30 GMT  
		Size: 130.3 MB (130306439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f163f0f9b2afcea0981d5fe8b76f675b33d594a2c3e34028970d560756fccce`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3502b4240c4d1e585510ad31fe2840b82119e4381ea86e7bd67d5cf93e55d4`  
		Last Modified: Tue, 18 Aug 2026 20:25:32 GMT  
		Size: 118.3 MB (118276403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539f441b8b2cc8d8621dc910fa7d885019187b99c8398d825a52e9a5c0b57696`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 362.7 KB (362681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4b1513dcb97026f2d48c3b53ff492a6f696ad579a2ab89d9d81cb9beeb658`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf07796190059f6c3b4fcd03e88db7d62d692764fbd15fbd98879cfb8c8b7cb`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 24.7 MB (24726046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:e49ae4af7543ff4efaa43520b7fc7d63d22b42792f3923a4b905c9ce760abaf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29219941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ee561c0ecf94a40dd80687eb75ed315349c984375f503a3993124125038161`

```dockerfile
```

-	Layers:
	-	`sha256:ff9e1977f9940b2250dabde218952fa6846cfbe3a1302dc4347debb45ca4e191`  
		Last Modified: Tue, 18 Aug 2026 20:25:29 GMT  
		Size: 29.2 MB (29202647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c83b30affaef535b9442e02ca926a1c8abae501a607c11b1df52978ac289a7bd`  
		Last Modified: Tue, 18 Aug 2026 20:25:28 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:c818a1211b5759e997d079f65c3aa1876f232ff27fc3e1469297c5e688a5f1d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:e8da1af2c1a6f40b9fba3abf5b18155495cbc34bbebf156e66b28f939e4ca860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189123953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ee7ad47ffa1c257189dba0a6a4459e9842f99708ea911c342bce4c1cb2d12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:26:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:03 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:07 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de949f482232d3593fd2dd1697efa925ea175918c23f08a5248b23c13b6c2d5`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 740.9 KB (740879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a2e789b5e54d11693bc7637189d948d2cc614a8a69885a9a498d7e6cbf7ceb`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 9.8 MB (9785047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6b65dd6dbb32be1e3885c0ede0cbb1b6de5af464ee3586706f05871ff3f182`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 91.1 KB (91052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be233ce8d85df0b871e01e6ae34b0430587ce2afb298848f8b3870f93d3fa5eb`  
		Last Modified: Tue, 18 Aug 2026 19:28:43 GMT  
		Size: 136.9 MB (136937183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692df8fe4215858ed813e192585eab73720105171c0764d1cb07e7fc2845aa4d`  
		Last Modified: Tue, 18 Aug 2026 19:28:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:938a7c2fabf3819758755eb981c75fdfa78720b2de4b5e6618e60883b1b47505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22748287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee734db19ef42e7dcad6627d99b4943509b2d747bf64d914f63769ee44191536`

```dockerfile
```

-	Layers:
	-	`sha256:b1e66e82c913fbc2af7f4a46ff06eededfbe4487087deb9e3e728e45c4cfbb4f`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 22.7 MB (22732610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:772d49dbdbf6998e0594740833b98e8c133b167b6d06225020f5c061a2af6a01`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 15.7 KB (15677 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3556bde1577d79338c627d692c3e901f78eb007006b8a5bb981fbade81c83f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181444914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83325b790f3f3c4e0611544ea7d728cfdf97eca9a22c4ab8b7b1c66b56653b72`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:26:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:02 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c7cf40bae3dc17bf060190f3880f4f7394e3192651f5e1cb4886b06fe087d2`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 740.8 KB (740815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039c01d6f4f8b9185a0a4702c1fdc663d92fac334a8a55deaf8680d7fab94a75`  
		Last Modified: Tue, 18 Aug 2026 19:28:27 GMT  
		Size: 9.6 MB (9609661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b4e193ddde3780d22754bdd73a290df0726f9d279d91675ee251ad663e288c`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 91.0 KB (90987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f335b45f818e469b57623d232d7ab7ce6d378788a4030821dfdd82a6ac09b8`  
		Last Modified: Tue, 18 Aug 2026 19:28:30 GMT  
		Size: 130.3 MB (130306439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f163f0f9b2afcea0981d5fe8b76f675b33d594a2c3e34028970d560756fccce`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:16b7ce93e0c486404d700cb738c7b6aa036b26b725611e1c9b64e025faf56eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22721106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c753def48751764d16cbb12cd64edd4d94b64e574b3f1b1eb35c29a056f5bbfc`

```dockerfile
```

-	Layers:
	-	`sha256:046bd7ed09252562aa0818366445d219dbcaa46e3321a84e83e6785c545e187a`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 22.7 MB (22705302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c73df33e566ac3e58ff8c01def14800ea42b5d522c29e88931cd7a20c73374a`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:c818a1211b5759e997d079f65c3aa1876f232ff27fc3e1469297c5e688a5f1d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:e8da1af2c1a6f40b9fba3abf5b18155495cbc34bbebf156e66b28f939e4ca860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189123953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ee7ad47ffa1c257189dba0a6a4459e9842f99708ea911c342bce4c1cb2d12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:26:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:03 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:07 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de949f482232d3593fd2dd1697efa925ea175918c23f08a5248b23c13b6c2d5`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 740.9 KB (740879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a2e789b5e54d11693bc7637189d948d2cc614a8a69885a9a498d7e6cbf7ceb`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 9.8 MB (9785047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6b65dd6dbb32be1e3885c0ede0cbb1b6de5af464ee3586706f05871ff3f182`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 91.1 KB (91052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be233ce8d85df0b871e01e6ae34b0430587ce2afb298848f8b3870f93d3fa5eb`  
		Last Modified: Tue, 18 Aug 2026 19:28:43 GMT  
		Size: 136.9 MB (136937183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692df8fe4215858ed813e192585eab73720105171c0764d1cb07e7fc2845aa4d`  
		Last Modified: Tue, 18 Aug 2026 19:28:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:938a7c2fabf3819758755eb981c75fdfa78720b2de4b5e6618e60883b1b47505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22748287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee734db19ef42e7dcad6627d99b4943509b2d747bf64d914f63769ee44191536`

```dockerfile
```

-	Layers:
	-	`sha256:b1e66e82c913fbc2af7f4a46ff06eededfbe4487087deb9e3e728e45c4cfbb4f`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 22.7 MB (22732610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:772d49dbdbf6998e0594740833b98e8c133b167b6d06225020f5c061a2af6a01`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 15.7 KB (15677 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3556bde1577d79338c627d692c3e901f78eb007006b8a5bb981fbade81c83f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181444914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83325b790f3f3c4e0611544ea7d728cfdf97eca9a22c4ab8b7b1c66b56653b72`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:26:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:02 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c7cf40bae3dc17bf060190f3880f4f7394e3192651f5e1cb4886b06fe087d2`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 740.8 KB (740815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039c01d6f4f8b9185a0a4702c1fdc663d92fac334a8a55deaf8680d7fab94a75`  
		Last Modified: Tue, 18 Aug 2026 19:28:27 GMT  
		Size: 9.6 MB (9609661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b4e193ddde3780d22754bdd73a290df0726f9d279d91675ee251ad663e288c`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 91.0 KB (90987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f335b45f818e469b57623d232d7ab7ce6d378788a4030821dfdd82a6ac09b8`  
		Last Modified: Tue, 18 Aug 2026 19:28:30 GMT  
		Size: 130.3 MB (130306439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f163f0f9b2afcea0981d5fe8b76f675b33d594a2c3e34028970d560756fccce`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:16b7ce93e0c486404d700cb738c7b6aa036b26b725611e1c9b64e025faf56eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22721106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c753def48751764d16cbb12cd64edd4d94b64e574b3f1b1eb35c29a056f5bbfc`

```dockerfile
```

-	Layers:
	-	`sha256:046bd7ed09252562aa0818366445d219dbcaa46e3321a84e83e6785c545e187a`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 22.7 MB (22705302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c73df33e566ac3e58ff8c01def14800ea42b5d522c29e88931cd7a20c73374a`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json
