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
$ docker pull ros@sha256:da725acf8b0f9f30c683e33ffbdcd6482d077af96d6fdc7688c5f4f280b7d923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:1dfbed5c7ae2dcbe90f8689476adaac21c8da866738f44dec45c01669d91c40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298834127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59739126c6f16414f833acf9304b72be523501c4781c407f3a2168669284e961`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:bbee34fbdf16c1f4298198e54d70bcc2e1a2853f8caeeaa4c8420305b03081f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc4879c068f1d27d36a85f729df51c69e2ac27c4226792a8820f0781238fc01`

```dockerfile
```

-	Layers:
	-	`sha256:85b010a08c72968afdf2a96f95b266fb63fd1b420ea6e1967d6475597f63f98b`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:475f081ab4b995f2772c912c8c3ee6b9301a714baed87cf5e63cd1ab0b255bd7`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0935360d3ba92dcda402975d978af7e7d7a27a9ed7c8824143a6ee6f55267223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284895543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff485ca69353a882e0454845db3422e80d6bc3259249801d67d356a2ffa1d83`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:a7dd3c58c81e2c9e507a8cae5aa2ee5367a88187ac0744839eaabe5a003aa1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105ec8e6714691b470101e96dcc1a7c24e3c41b0f3e48b5e206b27599d1d650f`

```dockerfile
```

-	Layers:
	-	`sha256:2d53d974771768cbe5734089b5f62491d6fb38cafdffd6db31d58ef6c896ecc9`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1266325e151b30ee4232c407d4b5246468bea2881702d0cc31a46cfcfc7454`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:1d7487f66c4e72224e285feebc4e77e3b37389173621f6c2092c4850f827921f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:d3ae12fcb4983d709503649c29df234f59c20e4ac54c26ef8f0d6a612bb0a2ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083775678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d3c8b3c02708378c29c881550dacd64162533d6f1c61027e6359fe97f7daa9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65acb7be84fdae933210ad062818b041c10393c9c159a311271ac9e2a4baeb19`  
		Last Modified: Tue, 04 Aug 2026 03:24:44 GMT  
		Size: 784.9 MB (784941551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:d8d0c4b36e90ea0fce71e65816c6d4f19f2af9da9dc5c29b0e7dfd9e520e62f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61116756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366d02f44c204ef7d5c19ad3ff8e30d32ad07f39522b1e166355a70efaa027dc`

```dockerfile
```

-	Layers:
	-	`sha256:e63c46e756c69c4c33d9793544b2107f9a14e44fa765ec67267ccfabfc2d28c1`  
		Last Modified: Tue, 04 Aug 2026 03:24:32 GMT  
		Size: 61.1 MB (61107418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dcd26fde32b61840917e9968b60769faf41baa12a4c3dd1555b64593df66b22`  
		Last Modified: Tue, 04 Aug 2026 03:24:30 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:18b5defec83fb5b4d979950e8208ef919b8eb0777106d8e758052c0ac63d14d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **983.9 MB (983939648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f0c56f4b8d3a56128c4960028d02157e7cbf6a128438fc1fa0ee2ae2605810`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5362d80efa03aca77309b504828e5662c3db6af94fb96470c9c525a4469b1445`  
		Last Modified: Tue, 04 Aug 2026 03:24:52 GMT  
		Size: 699.0 MB (699044105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:2dc0fdf4d9f99f506c1b5d6cf58ab4e502d7610cda4c2e10f3d48a28d9b53169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61047355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99404fff12e93428095c7ed99756a337a52c0e9e6e614b71a690c1f477a5bc6e`

```dockerfile
```

-	Layers:
	-	`sha256:ea876b99bfb83de2ee2de80e440ac5eb434685c1bae4ea842467f5556ef273d0`  
		Last Modified: Tue, 04 Aug 2026 03:24:40 GMT  
		Size: 61.0 MB (61037937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b070d7cf01b72d065f4dd96387982dfb2d4ac4a3b561ec1893db93e42b91d11`  
		Last Modified: Tue, 04 Aug 2026 03:24:37 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:1d7487f66c4e72224e285feebc4e77e3b37389173621f6c2092c4850f827921f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:d3ae12fcb4983d709503649c29df234f59c20e4ac54c26ef8f0d6a612bb0a2ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083775678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d3c8b3c02708378c29c881550dacd64162533d6f1c61027e6359fe97f7daa9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65acb7be84fdae933210ad062818b041c10393c9c159a311271ac9e2a4baeb19`  
		Last Modified: Tue, 04 Aug 2026 03:24:44 GMT  
		Size: 784.9 MB (784941551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:d8d0c4b36e90ea0fce71e65816c6d4f19f2af9da9dc5c29b0e7dfd9e520e62f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61116756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366d02f44c204ef7d5c19ad3ff8e30d32ad07f39522b1e166355a70efaa027dc`

```dockerfile
```

-	Layers:
	-	`sha256:e63c46e756c69c4c33d9793544b2107f9a14e44fa765ec67267ccfabfc2d28c1`  
		Last Modified: Tue, 04 Aug 2026 03:24:32 GMT  
		Size: 61.1 MB (61107418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dcd26fde32b61840917e9968b60769faf41baa12a4c3dd1555b64593df66b22`  
		Last Modified: Tue, 04 Aug 2026 03:24:30 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:18b5defec83fb5b4d979950e8208ef919b8eb0777106d8e758052c0ac63d14d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **983.9 MB (983939648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f0c56f4b8d3a56128c4960028d02157e7cbf6a128438fc1fa0ee2ae2605810`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5362d80efa03aca77309b504828e5662c3db6af94fb96470c9c525a4469b1445`  
		Last Modified: Tue, 04 Aug 2026 03:24:52 GMT  
		Size: 699.0 MB (699044105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:2dc0fdf4d9f99f506c1b5d6cf58ab4e502d7610cda4c2e10f3d48a28d9b53169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61047355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99404fff12e93428095c7ed99756a337a52c0e9e6e614b71a690c1f477a5bc6e`

```dockerfile
```

-	Layers:
	-	`sha256:ea876b99bfb83de2ee2de80e440ac5eb434685c1bae4ea842467f5556ef273d0`  
		Last Modified: Tue, 04 Aug 2026 03:24:40 GMT  
		Size: 61.0 MB (61037937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b070d7cf01b72d065f4dd96387982dfb2d4ac4a3b561ec1893db93e42b91d11`  
		Last Modified: Tue, 04 Aug 2026 03:24:37 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:da725acf8b0f9f30c683e33ffbdcd6482d077af96d6fdc7688c5f4f280b7d923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1dfbed5c7ae2dcbe90f8689476adaac21c8da866738f44dec45c01669d91c40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298834127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59739126c6f16414f833acf9304b72be523501c4781c407f3a2168669284e961`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:bbee34fbdf16c1f4298198e54d70bcc2e1a2853f8caeeaa4c8420305b03081f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc4879c068f1d27d36a85f729df51c69e2ac27c4226792a8820f0781238fc01`

```dockerfile
```

-	Layers:
	-	`sha256:85b010a08c72968afdf2a96f95b266fb63fd1b420ea6e1967d6475597f63f98b`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:475f081ab4b995f2772c912c8c3ee6b9301a714baed87cf5e63cd1ab0b255bd7`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0935360d3ba92dcda402975d978af7e7d7a27a9ed7c8824143a6ee6f55267223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284895543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff485ca69353a882e0454845db3422e80d6bc3259249801d67d356a2ffa1d83`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:a7dd3c58c81e2c9e507a8cae5aa2ee5367a88187ac0744839eaabe5a003aa1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105ec8e6714691b470101e96dcc1a7c24e3c41b0f3e48b5e206b27599d1d650f`

```dockerfile
```

-	Layers:
	-	`sha256:2d53d974771768cbe5734089b5f62491d6fb38cafdffd6db31d58ef6c896ecc9`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1266325e151b30ee4232c407d4b5246468bea2881702d0cc31a46cfcfc7454`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:da725acf8b0f9f30c683e33ffbdcd6482d077af96d6fdc7688c5f4f280b7d923
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:1dfbed5c7ae2dcbe90f8689476adaac21c8da866738f44dec45c01669d91c40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298834127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59739126c6f16414f833acf9304b72be523501c4781c407f3a2168669284e961`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:03 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:31:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:31:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25b50636e83b2a8bc5bd12220bd8ba469c6888bb70ee5346f91e0a1d8e96290`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 683.3 KB (683332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60ac9847b683b465f0c04902d33e021550a4060761f60c78b94e7f53eca8558`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 9.1 MB (9114097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431e34622e4d3f05156edf2323b9865d28b4fbb07d230e6f90d2669a38be9a3`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 94.8 KB (94767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e745cf512c62a1c15c2181f23cb0e0541442e77da298087037220c07a1247`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 120.5 MB (120509370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8056250502e5ecacc2034cc633e586c1eb412fe890941ac4eed2845dd56ac9`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fbc8e8c3f1ea36c56d716ab6638ff468d4e822952575b9dcf81189200c0942`  
		Last Modified: Tue, 04 Aug 2026 02:32:52 GMT  
		Size: 110.2 MB (110191731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9496ec98d73478e8f49aaa2633f20d33028d7db9accebbb4ed5d58918c84e73`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b17e591b6859589c31c2c0113b4c8d8e5b1dd50ca0d29dcb57c022311932f`  
		Last Modified: Tue, 04 Aug 2026 02:32:49 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ff0d8e98c6027547cb2f682de5f486c4f507c67b59ca3e3ba870909a143c`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 28.1 MB (28079414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:bbee34fbdf16c1f4298198e54d70bcc2e1a2853f8caeeaa4c8420305b03081f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24943773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc4879c068f1d27d36a85f729df51c69e2ac27c4226792a8820f0781238fc01`

```dockerfile
```

-	Layers:
	-	`sha256:85b010a08c72968afdf2a96f95b266fb63fd1b420ea6e1967d6475597f63f98b`  
		Last Modified: Tue, 04 Aug 2026 02:32:50 GMT  
		Size: 24.9 MB (24927444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:475f081ab4b995f2772c912c8c3ee6b9301a714baed87cf5e63cd1ab0b255bd7`  
		Last Modified: Tue, 04 Aug 2026 02:32:48 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0935360d3ba92dcda402975d978af7e7d7a27a9ed7c8824143a6ee6f55267223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284895543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff485ca69353a882e0454845db3422e80d6bc3259249801d67d356a2ffa1d83`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:45 GMT
ENV ROS_DISTRO=jazzy
# Tue, 04 Aug 2026 01:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:45 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:37 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11bd56d80a6967ddb49605103b484041943d77696e6187ac9abe2e5d7dab8b5`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e113fb8eb71513d204c2fe40a808cc23e259cb200f76b1f34768a0736d8ecc2f`  
		Last Modified: Tue, 04 Aug 2026 01:45:15 GMT  
		Size: 6.7 MB (6723586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b8878e14ceb872f67e16f2ad925332466b2b2a2215b77ac8d066d5038b5e7`  
		Last Modified: Tue, 04 Aug 2026 01:45:14 GMT  
		Size: 94.8 KB (94788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86928acf88c03c6b6b3182ad08d5a5b847583a7f4d8d985e776b7230c9e35383`  
		Last Modified: Tue, 04 Aug 2026 01:45:18 GMT  
		Size: 115.3 MB (115299944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5aa386d262f44285a92aa39f100f7f5642d3ea67bc8097ec5a5a6d7c194336`  
		Last Modified: Tue, 04 Aug 2026 01:45:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a19acc0471e90ee92438ed555b9eb1561d396bc542850b540494ec555963e1`  
		Last Modified: Tue, 04 Aug 2026 02:33:35 GMT  
		Size: 105.6 MB (105602925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8ea043ab3bc3a6918cad73006f37c91bbb0ad76563d12227adb5c783d9215`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 407.6 KB (407605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d310caa5fa3165e426720670f3f317138b2b22b723d2ab243d668ead07fdeee9`  
		Last Modified: Tue, 04 Aug 2026 02:33:32 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ed782335c81a3b269879a3a160394a569641af3277a4b98041c5527696658`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 27.2 MB (27193698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a7dd3c58c81e2c9e507a8cae5aa2ee5367a88187ac0744839eaabe5a003aa1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24966165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105ec8e6714691b470101e96dcc1a7c24e3c41b0f3e48b5e206b27599d1d650f`

```dockerfile
```

-	Layers:
	-	`sha256:2d53d974771768cbe5734089b5f62491d6fb38cafdffd6db31d58ef6c896ecc9`  
		Last Modified: Tue, 04 Aug 2026 02:33:33 GMT  
		Size: 24.9 MB (24949699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1266325e151b30ee4232c407d4b5246468bea2881702d0cc31a46cfcfc7454`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
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
$ docker pull ros@sha256:4ca53d5b084bdbe92a7a7d7186f56db6a716a6c7c33ad401ddb0ec82d6e9e479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:d28b9e57a40bebf51eb3e66ec851d560d5443b20bdc28c3821cd1b767039be4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299174714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b979aacd3933a3af0604dfcca5e438ce38d55a5e2c7266f3e5d373285e74f095`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:ee78c49ec55d8ce958fc38c327f082c4011bc492146d30583ed05d76cb2628da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d41f0a5e31bafafddad596883294d3d313fb49aeb7010814271e916844cb4e`

```dockerfile
```

-	Layers:
	-	`sha256:4595f5965af96d3b54bc23a73821e479bd57b533016eb9b72168d6956fdfae67`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66758dc4434d43662aa925275d106700271b5da23f0e7020963956409b2f1dc0`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7a30cb7b90c0e620d21989d71350b662f197db863e7283d77e703a4f3a453eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285182082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f152010ee2bf2845248d031a31d787795c781153513d510f30eba983e6012530`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:757f86b5129d40fb4ae2c032fdb91f5649bded0e323cb08a699c36449ad1f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5eeb3d6b9d901d0b305d6ef5fe71ea55cda305a0c1a88cdcec7016d25fca4b`

```dockerfile
```

-	Layers:
	-	`sha256:64d32ad55f9c3ef0bf81f42346883f72453a51089d4e292a5bf1c7ea252af0fe`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12884212ef0447126641514b7de8c734cf20c7bdc0b802bdf402d382da30dd91`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:6f5802693a9130101700fc544408237a962ce4ef34dd3567cacd2cf924fb4874
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:2ed25c8ae61f58dd13db3ea233f691e4943420c194835a28ffa6492dc7d5ce4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084110407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ac6883b3f6eb104d104aca09ceffeb2585ea6cf172959c67aa4b1150853b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0881833b1709b07ca14f7f06acef5b383081c4351303bb9f75cde0fc04a4c`  
		Last Modified: Tue, 04 Aug 2026 03:24:41 GMT  
		Size: 784.9 MB (784935693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5e759b573ccb85cc48f5de4a128878268911b4a06045fba54e839cc52afb5c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827ddab3fc002f50aea33cfddaf5fe786380dc42ac3254d305d6187d85cc20d6`

```dockerfile
```

-	Layers:
	-	`sha256:d0ff0c088ea0a61a335b410d4781198705532a1fe7cb6e4f1a43afc220417738`  
		Last Modified: Tue, 04 Aug 2026 03:24:28 GMT  
		Size: 61.0 MB (61032184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55231da856e7d10193d381dc3b43f5bde4d1b495d1e5ee6c8895edd08f9f288a`  
		Last Modified: Tue, 04 Aug 2026 03:24:25 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43164627a1e117ea8bdfc450a6c2d5c4b893e187da2adef84e576172969007a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.3 MB (984261095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e009c6ee921b8e0028067a159897bbcd8800e06c931802b7baf82eefb142d98`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f46481040784409b32428bbc86b4086d2ff29e1a6d74e4cc65e8d088df4ec50`  
		Last Modified: Tue, 04 Aug 2026 03:24:38 GMT  
		Size: 699.1 MB (699079013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:38c8734323d954cec6a6ac37613da75654192bad406b1cb5c4dc490abac37d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60972140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843334dab0bda14bca9879ea4ef01f2229e6a23a7aae501bf46315ed35ab87b`

```dockerfile
```

-	Layers:
	-	`sha256:408f6c8831db78a15a9a4747eb37fff4ce221c1dc72a07f583bd0229d2fdb4ca`  
		Last Modified: Tue, 04 Aug 2026 03:24:27 GMT  
		Size: 61.0 MB (60962708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ba0061db5669552d43779bffce28b722cef52ca205acfb150fdc818faa35505`  
		Last Modified: Tue, 04 Aug 2026 03:24:25 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:6f5802693a9130101700fc544408237a962ce4ef34dd3567cacd2cf924fb4874
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:2ed25c8ae61f58dd13db3ea233f691e4943420c194835a28ffa6492dc7d5ce4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084110407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ac6883b3f6eb104d104aca09ceffeb2585ea6cf172959c67aa4b1150853b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e0881833b1709b07ca14f7f06acef5b383081c4351303bb9f75cde0fc04a4c`  
		Last Modified: Tue, 04 Aug 2026 03:24:41 GMT  
		Size: 784.9 MB (784935693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:5e759b573ccb85cc48f5de4a128878268911b4a06045fba54e839cc52afb5c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827ddab3fc002f50aea33cfddaf5fe786380dc42ac3254d305d6187d85cc20d6`

```dockerfile
```

-	Layers:
	-	`sha256:d0ff0c088ea0a61a335b410d4781198705532a1fe7cb6e4f1a43afc220417738`  
		Last Modified: Tue, 04 Aug 2026 03:24:28 GMT  
		Size: 61.0 MB (61032184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55231da856e7d10193d381dc3b43f5bde4d1b495d1e5ee6c8895edd08f9f288a`  
		Last Modified: Tue, 04 Aug 2026 03:24:25 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43164627a1e117ea8bdfc450a6c2d5c4b893e187da2adef84e576172969007a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.3 MB (984261095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e009c6ee921b8e0028067a159897bbcd8800e06c931802b7baf82eefb142d98`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f46481040784409b32428bbc86b4086d2ff29e1a6d74e4cc65e8d088df4ec50`  
		Last Modified: Tue, 04 Aug 2026 03:24:38 GMT  
		Size: 699.1 MB (699079013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:38c8734323d954cec6a6ac37613da75654192bad406b1cb5c4dc490abac37d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60972140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a843334dab0bda14bca9879ea4ef01f2229e6a23a7aae501bf46315ed35ab87b`

```dockerfile
```

-	Layers:
	-	`sha256:408f6c8831db78a15a9a4747eb37fff4ce221c1dc72a07f583bd0229d2fdb4ca`  
		Last Modified: Tue, 04 Aug 2026 03:24:27 GMT  
		Size: 61.0 MB (60962708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ba0061db5669552d43779bffce28b722cef52ca205acfb150fdc818faa35505`  
		Last Modified: Tue, 04 Aug 2026 03:24:25 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:4ca53d5b084bdbe92a7a7d7186f56db6a716a6c7c33ad401ddb0ec82d6e9e479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:d28b9e57a40bebf51eb3e66ec851d560d5443b20bdc28c3821cd1b767039be4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299174714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b979aacd3933a3af0604dfcca5e438ce38d55a5e2c7266f3e5d373285e74f095`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:ee78c49ec55d8ce958fc38c327f082c4011bc492146d30583ed05d76cb2628da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d41f0a5e31bafafddad596883294d3d313fb49aeb7010814271e916844cb4e`

```dockerfile
```

-	Layers:
	-	`sha256:4595f5965af96d3b54bc23a73821e479bd57b533016eb9b72168d6956fdfae67`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66758dc4434d43662aa925275d106700271b5da23f0e7020963956409b2f1dc0`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7a30cb7b90c0e620d21989d71350b662f197db863e7283d77e703a4f3a453eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285182082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f152010ee2bf2845248d031a31d787795c781153513d510f30eba983e6012530`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:757f86b5129d40fb4ae2c032fdb91f5649bded0e323cb08a699c36449ad1f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5eeb3d6b9d901d0b305d6ef5fe71ea55cda305a0c1a88cdcec7016d25fca4b`

```dockerfile
```

-	Layers:
	-	`sha256:64d32ad55f9c3ef0bf81f42346883f72453a51089d4e292a5bf1c7ea252af0fe`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12884212ef0447126641514b7de8c734cf20c7bdc0b802bdf402d382da30dd91`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:4ca53d5b084bdbe92a7a7d7186f56db6a716a6c7c33ad401ddb0ec82d6e9e479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:d28b9e57a40bebf51eb3e66ec851d560d5443b20bdc28c3821cd1b767039be4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299174714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b979aacd3933a3af0604dfcca5e438ce38d55a5e2c7266f3e5d373285e74f095`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:46 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:39 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f918fa69ddc2ea84a0f22a7b870442eafb118825aaea91b62009e0a9dce319`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 683.3 KB (683341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243482ff6b8615d6f2763db1f8132b2e7c3cb927b995de8f5d83b9d334a0bef4`  
		Last Modified: Tue, 04 Aug 2026 01:47:09 GMT  
		Size: 9.1 MB (9114192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994ae2393899f27129b58b7308b1523858eec6f1b53fecea83385154c451f307`  
		Last Modified: Tue, 04 Aug 2026 01:47:08 GMT  
		Size: 94.8 KB (94766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fec94c5ed3b68150f4b29c2cce23656c93fd9d54ff3bc6b440ab16e5b7e756d`  
		Last Modified: Tue, 04 Aug 2026 01:47:11 GMT  
		Size: 121.1 MB (121072272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca0915e159460a2a907b84c7193198452dc22ac9463de04333a5ab639a305e`  
		Last Modified: Tue, 04 Aug 2026 02:33:00 GMT  
		Size: 110.2 MB (110193617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c0e78f3f8638fd8fc6fd5af8cafafa74e72894297efe1ede0f95d1f0d3206`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad429a4a446b03fe9f5a266eb27f2e67f11c408754eea729866de21e271d64e0`  
		Last Modified: Tue, 04 Aug 2026 02:32:57 GMT  
		Size: 2.5 KB (2511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a03c4d47d018a35e01137e7d72c574c7d51ac04eb1ebba69f8c5d514c3a828`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 27.9 MB (27892380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:ee78c49ec55d8ce958fc38c327f082c4011bc492146d30583ed05d76cb2628da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24861383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d41f0a5e31bafafddad596883294d3d313fb49aeb7010814271e916844cb4e`

```dockerfile
```

-	Layers:
	-	`sha256:4595f5965af96d3b54bc23a73821e479bd57b533016eb9b72168d6956fdfae67`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 24.8 MB (24845037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66758dc4434d43662aa925275d106700271b5da23f0e7020963956409b2f1dc0`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 16.3 KB (16346 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7a30cb7b90c0e620d21989d71350b662f197db863e7283d77e703a4f3a453eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285182082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f152010ee2bf2845248d031a31d787795c781153513d510f30eba983e6012530`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:45:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:48 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:32 GMT
ENV ROS_DISTRO=kilted
# Tue, 04 Aug 2026 01:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:32 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:42 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:43 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee272dddf1e441f86fdd6a93f32b92a0199d12acdc5f82fcf099c67b37eef8`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 683.5 KB (683452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0f334f4bd9f18856754f81e056622532e2b2235750a03c7bad9b4257e517f3`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 6.7 MB (6723541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be168bea448afac505e08e3b2d3337c80aed439c96f27f3e89511642689f0f6`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 94.8 KB (94790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1c1e484ffea0bc62a68074f8f939f7ab478fbb319b5d0965c9b205b234c56`  
		Last Modified: Tue, 04 Aug 2026 01:47:04 GMT  
		Size: 115.8 MB (115816490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091f72d64ff31400bdd1a65c473bfc82f57a73a555f84780c83f788dc100b69`  
		Last Modified: Tue, 04 Aug 2026 01:47:02 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554f0de4fcee98aca499332208ef6a2dfd499691cb47c5714242b09e704d6156`  
		Last Modified: Tue, 04 Aug 2026 02:33:42 GMT  
		Size: 105.6 MB (105605084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba97b0429669ee9d03522a9a07fa2928077a75957e99c24a16073e3aa1ce1b6`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 370.3 KB (370330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773278e4120e400a975e5ec7e15bc1c55a9243008043967358e624621e5b55e`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449dc587d4c7087422c8e153be64dd08baef8ded859f9284844b190d4f14c367`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 27.0 MB (26998878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:757f86b5129d40fb4ae2c032fdb91f5649bded0e323cb08a699c36449ad1f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24883781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5eeb3d6b9d901d0b305d6ef5fe71ea55cda305a0c1a88cdcec7016d25fca4b`

```dockerfile
```

-	Layers:
	-	`sha256:64d32ad55f9c3ef0bf81f42346883f72453a51089d4e292a5bf1c7ea252af0fe`  
		Last Modified: Tue, 04 Aug 2026 02:33:41 GMT  
		Size: 24.9 MB (24867297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12884212ef0447126641514b7de8c734cf20c7bdc0b802bdf402d382da30dd91`  
		Last Modified: Tue, 04 Aug 2026 02:33:39 GMT  
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
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:2dc78d2a1fac9bd898ce959cf980761d5306d3cfea3260bbd4faa5b3f463d266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:8f3b0399c3867c38fa42161b94dfa3f6439f43244734cfb74968064a8311b432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1538090382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b8e9f70e9b924a78ce56aa9aec48438c796a2741e009914fbeb19ada5b83e3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592459462c3f3d2451197023f3c7b976336c2562ea6302a40d1c7327f80af8a1`  
		Last Modified: Tue, 04 Aug 2026 03:26:48 GMT  
		Size: 1.2 GB (1188506234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:cc93c8bd8e812293597d4efb3b51bbc2bbb236036b059ba2e0418609404aa04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4992c16cef962e2a26ac4ea061954064f118e17220695ff4b99d6a2ad0cd81`

```dockerfile
```

-	Layers:
	-	`sha256:273df5a2f36996e31bf11852bff37aaabec85f7eda6dc571c465e20cf7c21feb`  
		Last Modified: Tue, 04 Aug 2026 03:26:30 GMT  
		Size: 64.3 MB (64334591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4570e82f8ac60f4b99fe8ef4b8086055af43faa0650bcab4008ddee00639639`  
		Last Modified: Tue, 04 Aug 2026 03:26:28 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2cc19facafb95ffc162e9875f21137f159f8d12fe6cc10d55053285879a5f5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1481368152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c40859c8b12521fd9983b386d87b0bb89da4f393e8e038418e6894cf3afa1e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:22:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664bf46c3e00428b49494db88436c744759ad4a60ce8a29ca61d5b21ed764697`  
		Last Modified: Tue, 04 Aug 2026 03:27:05 GMT  
		Size: 1.1 GB (1146878316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:608bac81a32cfc20b41b88673b817b5d6509b73c37c7ef98b8f5021537ec3ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64258584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed18a2ac07b2a177acc4f732a8dbc2c580fbf6fc4387c34f9130f4df21a80605`

```dockerfile
```

-	Layers:
	-	`sha256:fa9381b7559b22aa5ebd224b4a616128c9e7a5fb27dda1d2302d5ec809d724de`  
		Last Modified: Tue, 04 Aug 2026 03:26:47 GMT  
		Size: 64.2 MB (64248809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41d10c06da8aa5b89f04e4ff6d3325c2a3449fad6d628598991b6ca8386d8f71`  
		Last Modified: Tue, 04 Aug 2026 03:26:45 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:2dc78d2a1fac9bd898ce959cf980761d5306d3cfea3260bbd4faa5b3f463d266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:8f3b0399c3867c38fa42161b94dfa3f6439f43244734cfb74968064a8311b432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1538090382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b8e9f70e9b924a78ce56aa9aec48438c796a2741e009914fbeb19ada5b83e3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:21:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592459462c3f3d2451197023f3c7b976336c2562ea6302a40d1c7327f80af8a1`  
		Last Modified: Tue, 04 Aug 2026 03:26:48 GMT  
		Size: 1.2 GB (1188506234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:cc93c8bd8e812293597d4efb3b51bbc2bbb236036b059ba2e0418609404aa04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4992c16cef962e2a26ac4ea061954064f118e17220695ff4b99d6a2ad0cd81`

```dockerfile
```

-	Layers:
	-	`sha256:273df5a2f36996e31bf11852bff37aaabec85f7eda6dc571c465e20cf7c21feb`  
		Last Modified: Tue, 04 Aug 2026 03:26:30 GMT  
		Size: 64.3 MB (64334591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4570e82f8ac60f4b99fe8ef4b8086055af43faa0650bcab4008ddee00639639`  
		Last Modified: Tue, 04 Aug 2026 03:26:28 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2cc19facafb95ffc162e9875f21137f159f8d12fe6cc10d55053285879a5f5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1481368152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c40859c8b12521fd9983b386d87b0bb89da4f393e8e038418e6894cf3afa1e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:22:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664bf46c3e00428b49494db88436c744759ad4a60ce8a29ca61d5b21ed764697`  
		Last Modified: Tue, 04 Aug 2026 03:27:05 GMT  
		Size: 1.1 GB (1146878316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:608bac81a32cfc20b41b88673b817b5d6509b73c37c7ef98b8f5021537ec3ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64258584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed18a2ac07b2a177acc4f732a8dbc2c580fbf6fc4387c34f9130f4df21a80605`

```dockerfile
```

-	Layers:
	-	`sha256:fa9381b7559b22aa5ebd224b4a616128c9e7a5fb27dda1d2302d5ec809d724de`  
		Last Modified: Tue, 04 Aug 2026 03:26:47 GMT  
		Size: 64.2 MB (64248809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41d10c06da8aa5b89f04e4ff6d3325c2a3449fad6d628598991b6ca8386d8f71`  
		Last Modified: Tue, 04 Aug 2026 03:26:45 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
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
$ docker pull ros@sha256:fdbd65c54290345baffa3559475b767837883b056f130d500ff1dd9a3d9a27b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:47c8ef9a48fc05047777f73abe87c4d1f03f14376694a33eca22c01b1b0e1ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349950794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ddbdd1ef635fa62a9462a7c8d6f21c5b10141c495d916bc4c9afb481695959`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11fa10d04a32f149cd41ffe89f3804a58cf72655d7c7f29d817b99f6394087`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 124.9 MB (124864497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8778090b2b0d9d51ca93d8964443d7132b64510cd63253ea3d547adc268ec9c`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 361.5 KB (361472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8565b87d8270e7e5c0df25f81bd2d321efd30f56fef833ddcff5f82a3be16246`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5abbb19f1f221cb9d9da3b825bd7160751edc3d9706b87ac455ac300f5be7e9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 25.8 MB (25778452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:cf320e232eb29fbfc9d6e4caf693ae7a8f02c3b4bc345aa1080203c0c8710a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29158254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5b8410eedd6747a44b247df8efdc3ac87d8b3990a92feb7ca77dd590f4258b`

```dockerfile
```

-	Layers:
	-	`sha256:b0478f0e6f7b064b8873e600f09ffa7024b187f4336d338b79b843ef5d7193d8`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 29.1 MB (29141091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c6d9f183df97b82b4b8bcc93e12b92220090e89659424379677928186ee75f`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e0aeb51ac11553ff7e6db3797a93227bffd86743cd222f66c07013e4164aeff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334814080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687756aa7f8d19a29f4fc0fae6b2b947f1dbfde90be652fc952ddad98fb3d198`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:48 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4dcc5c59f1de2944046550a60a31f2688be54a4f1f8472d8bc51c0a7b5c7e`  
		Last Modified: Tue, 04 Aug 2026 02:34:03 GMT  
		Size: 118.3 MB (118277171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa64f3b72ecb747e5ca9aa46798292bc1a39d95b0106a40d199765bdfcbf4868`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 361.5 KB (361477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4435fbdbd8c5273af08aa6c3718c4627ebc8f6ef6364f474a6ed7fa6fdbb96b2`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1d0ec5ba73a143cf5362d4aba28de25c6a4659420e81826ec22c0a42e2b1f2`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 24.7 MB (24726020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:53d7698962f590143488c8c41451ba25a3bde3a21978ff64a502f206b6ecd9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29232733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f41be36c3f093ccb78cac679cc867367f1926140cb8f3e1cb58de8f88c2c4`

```dockerfile
```

-	Layers:
	-	`sha256:0bcd63f89516272416c510972fd063855fae193761853d9bbdc7b5ce08967098`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 29.2 MB (29215433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c0922c214d2b210ee3419e3285510a538e421872c734f3cd36a187c9bac063`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 17.3 KB (17300 bytes)  
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
$ docker pull ros@sha256:fdbd65c54290345baffa3559475b767837883b056f130d500ff1dd9a3d9a27b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:47c8ef9a48fc05047777f73abe87c4d1f03f14376694a33eca22c01b1b0e1ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349950794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ddbdd1ef635fa62a9462a7c8d6f21c5b10141c495d916bc4c9afb481695959`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11fa10d04a32f149cd41ffe89f3804a58cf72655d7c7f29d817b99f6394087`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 124.9 MB (124864497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8778090b2b0d9d51ca93d8964443d7132b64510cd63253ea3d547adc268ec9c`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 361.5 KB (361472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8565b87d8270e7e5c0df25f81bd2d321efd30f56fef833ddcff5f82a3be16246`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5abbb19f1f221cb9d9da3b825bd7160751edc3d9706b87ac455ac300f5be7e9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 25.8 MB (25778452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:cf320e232eb29fbfc9d6e4caf693ae7a8f02c3b4bc345aa1080203c0c8710a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29158254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5b8410eedd6747a44b247df8efdc3ac87d8b3990a92feb7ca77dd590f4258b`

```dockerfile
```

-	Layers:
	-	`sha256:b0478f0e6f7b064b8873e600f09ffa7024b187f4336d338b79b843ef5d7193d8`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 29.1 MB (29141091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c6d9f183df97b82b4b8bcc93e12b92220090e89659424379677928186ee75f`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e0aeb51ac11553ff7e6db3797a93227bffd86743cd222f66c07013e4164aeff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334814080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687756aa7f8d19a29f4fc0fae6b2b947f1dbfde90be652fc952ddad98fb3d198`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:48 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4dcc5c59f1de2944046550a60a31f2688be54a4f1f8472d8bc51c0a7b5c7e`  
		Last Modified: Tue, 04 Aug 2026 02:34:03 GMT  
		Size: 118.3 MB (118277171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa64f3b72ecb747e5ca9aa46798292bc1a39d95b0106a40d199765bdfcbf4868`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 361.5 KB (361477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4435fbdbd8c5273af08aa6c3718c4627ebc8f6ef6364f474a6ed7fa6fdbb96b2`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1d0ec5ba73a143cf5362d4aba28de25c6a4659420e81826ec22c0a42e2b1f2`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 24.7 MB (24726020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:53d7698962f590143488c8c41451ba25a3bde3a21978ff64a502f206b6ecd9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29232733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f41be36c3f093ccb78cac679cc867367f1926140cb8f3e1cb58de8f88c2c4`

```dockerfile
```

-	Layers:
	-	`sha256:0bcd63f89516272416c510972fd063855fae193761853d9bbdc7b5ce08967098`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 29.2 MB (29215433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c0922c214d2b210ee3419e3285510a538e421872c734f3cd36a187c9bac063`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 17.3 KB (17300 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:fdbd65c54290345baffa3559475b767837883b056f130d500ff1dd9a3d9a27b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:47c8ef9a48fc05047777f73abe87c4d1f03f14376694a33eca22c01b1b0e1ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349950794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ddbdd1ef635fa62a9462a7c8d6f21c5b10141c495d916bc4c9afb481695959`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11fa10d04a32f149cd41ffe89f3804a58cf72655d7c7f29d817b99f6394087`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 124.9 MB (124864497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8778090b2b0d9d51ca93d8964443d7132b64510cd63253ea3d547adc268ec9c`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 361.5 KB (361472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8565b87d8270e7e5c0df25f81bd2d321efd30f56fef833ddcff5f82a3be16246`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5abbb19f1f221cb9d9da3b825bd7160751edc3d9706b87ac455ac300f5be7e9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 25.8 MB (25778452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:cf320e232eb29fbfc9d6e4caf693ae7a8f02c3b4bc345aa1080203c0c8710a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29158254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5b8410eedd6747a44b247df8efdc3ac87d8b3990a92feb7ca77dd590f4258b`

```dockerfile
```

-	Layers:
	-	`sha256:b0478f0e6f7b064b8873e600f09ffa7024b187f4336d338b79b843ef5d7193d8`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 29.1 MB (29141091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c6d9f183df97b82b4b8bcc93e12b92220090e89659424379677928186ee75f`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e0aeb51ac11553ff7e6db3797a93227bffd86743cd222f66c07013e4164aeff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334814080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687756aa7f8d19a29f4fc0fae6b2b947f1dbfde90be652fc952ddad98fb3d198`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:48 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4dcc5c59f1de2944046550a60a31f2688be54a4f1f8472d8bc51c0a7b5c7e`  
		Last Modified: Tue, 04 Aug 2026 02:34:03 GMT  
		Size: 118.3 MB (118277171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa64f3b72ecb747e5ca9aa46798292bc1a39d95b0106a40d199765bdfcbf4868`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 361.5 KB (361477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4435fbdbd8c5273af08aa6c3718c4627ebc8f6ef6364f474a6ed7fa6fdbb96b2`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1d0ec5ba73a143cf5362d4aba28de25c6a4659420e81826ec22c0a42e2b1f2`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 24.7 MB (24726020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:53d7698962f590143488c8c41451ba25a3bde3a21978ff64a502f206b6ecd9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29232733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f41be36c3f093ccb78cac679cc867367f1926140cb8f3e1cb58de8f88c2c4`

```dockerfile
```

-	Layers:
	-	`sha256:0bcd63f89516272416c510972fd063855fae193761853d9bbdc7b5ce08967098`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 29.2 MB (29215433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c0922c214d2b210ee3419e3285510a538e421872c734f3cd36a187c9bac063`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 17.3 KB (17300 bytes)  
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
