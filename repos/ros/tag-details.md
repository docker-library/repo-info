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
$ docker pull ros@sha256:afb40d6be65331c20a114d4e229a7ef099fed1b17bf6370daee193514b32aa16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:5c793b92e0b12d6babb438cb20eed7766495fde6419a21e3d2e918464f09dc17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.8 MB (263769287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cd76603187799abf0f64311e6d4612a4fce0515a3911d56d969b8711b1def5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:33:50 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:33:53 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c461a1c43cf20a0c74324fc81eedc343610af46fc2f49cb18fc360a12905e19`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 98.2 MB (98160181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6653d40d75a9d547f12b6b53a70d0324f19054978c841bb846ffebc85d784bc0`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 394.3 KB (394261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632df2d4e950a35f4d24f896cf23007e92044489ab219e48a30cbefd39bf11eb`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3964903d039e77cb629609e3a3723a48e7ec310279cd934dd1620b34fb9b00d6`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.3 MB (23342866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:1a83bcdf35eb375603143b3161726fb83514c817995ff17f39df9e4ba4ec4548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23836137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe7fd300feb0164035a4f06fb81bd4bc1aa052612bd2747fd5577bbe52a645a`

```dockerfile
```

-	Layers:
	-	`sha256:41fa7e4b1442e33363d79b4745b48bcd2cca08c25c17817d07d47904ab04a11e`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.8 MB (23819789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dc82ed2f3f566530715ed0b11e174c3b8e879fd605e6ba9064929c433f9edde`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9bdda47f584f33aae18456225a8a95fe7bcde821727757f02a3252cbc46e8188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256392158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeed06ccec4addc8a0b2d939301bf39cf93ae57b2094c9c438a4590d767310ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a95ec4818463c5a31c57a69c6ab40f0247bca893cc24d8ea04734f3de8e194`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 95.8 MB (95797241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bd08169712dee64b72959b3342413c21110bade5cd27aae9f522ae3ee8ba9`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 394.3 KB (394263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63f9c34214249e2a738cf1f863a1742f3f158a67178ca1a8f3173fb32db3eed`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3c56c2ed8ed0bd0468a10df3b2d497e186bb2ecd04dfed47bd0021d0d1636e`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 22.7 MB (22738187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:cb1325fa0e6bbee54408fab90aca871ff569f16328c77cc1d9c94be27aaffcc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23849291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b6047afd6d5f17fcbefcbb60bdd25353d11c84d078a0e69baf442fdf1b360d`

```dockerfile
```

-	Layers:
	-	`sha256:eb925105d56d176b85cc2044e60a1539c34b733be59f496d6f0b0009db46704d`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 23.8 MB (23832806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3c67d1ac6580bb583eb999d1d7024d61a9bbc2a2f6f117020f1aef347566a8e`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:d89271d71fb7cefd5c39481b012172e4e8378835b8e6f23b19769b55a06dac35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:4c4298df37c45fafee3d1509b14e0987971f76dbe23660ae08fd2f3f8688953a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.8 MB (955832649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de460aa7645c9b53786e085b4185623243f1489f599613949b7e7a6ce8ecafea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:33:50 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:33:53 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c461a1c43cf20a0c74324fc81eedc343610af46fc2f49cb18fc360a12905e19`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 98.2 MB (98160181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6653d40d75a9d547f12b6b53a70d0324f19054978c841bb846ffebc85d784bc0`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 394.3 KB (394261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632df2d4e950a35f4d24f896cf23007e92044489ab219e48a30cbefd39bf11eb`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3964903d039e77cb629609e3a3723a48e7ec310279cd934dd1620b34fb9b00d6`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.3 MB (23342866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a73df547a3f6916c947f25d3daf02eb354b649d53b49c391dc723bb370a7bb8`  
		Last Modified: Thu, 02 Jul 2026 06:25:41 GMT  
		Size: 692.1 MB (692063362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:299cb0ca393c9e29001b143b840b514cf484992643fffb6a47a34fd64ec10e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58929631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b40d116c8704557a87d60bd7b6e52f159f93aed567ba93b50eca96359cd5950`

```dockerfile
```

-	Layers:
	-	`sha256:22932e45d6ffd4b06d05d989a48bfe125e98a258e2d4c48ff22eefcadba5a079`  
		Last Modified: Thu, 02 Jul 2026 06:25:30 GMT  
		Size: 58.9 MB (58920279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87be45d216f4f1eaba33c7208e23df477b5c0f64efd5a879dfc1c74bd4357e86`  
		Last Modified: Thu, 02 Jul 2026 06:25:27 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:61dc037aa1963fc3246001297bc4a8c763397205571989fa42851c2d6256040e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.5 MB (916516613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131e801b0b3cd3b0ad4e8c05dfc239b907fedd33a87ae60f04501133411778b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a95ec4818463c5a31c57a69c6ab40f0247bca893cc24d8ea04734f3de8e194`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 95.8 MB (95797241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bd08169712dee64b72959b3342413c21110bade5cd27aae9f522ae3ee8ba9`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 394.3 KB (394263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63f9c34214249e2a738cf1f863a1742f3f158a67178ca1a8f3173fb32db3eed`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3c56c2ed8ed0bd0468a10df3b2d497e186bb2ecd04dfed47bd0021d0d1636e`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 22.7 MB (22738187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fcbeba7f67735b23a8f73825040fe9a268348a95526246d878f4eb238085a88`  
		Last Modified: Thu, 02 Jul 2026 06:24:06 GMT  
		Size: 660.1 MB (660124455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:0811572d93541586005be1b04aef1f9ea1414790096f4f53c5a311603fc6b62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58914036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f2f109dc775d64262a80d144ad7b14e9c542ac0d2dc058b5548a5c7c4046f4`

```dockerfile
```

-	Layers:
	-	`sha256:db47b5126753ce0a7f5e4c74ab7d42f372ec56c7ac93b72f77fadfb35df676ca`  
		Last Modified: Thu, 02 Jul 2026 06:23:53 GMT  
		Size: 58.9 MB (58904604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:267de9595d44ece91be157b7e45860f85f7c938e5cb983b3f6b204ae05b9388d`  
		Last Modified: Thu, 02 Jul 2026 06:23:50 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:d89271d71fb7cefd5c39481b012172e4e8378835b8e6f23b19769b55a06dac35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:4c4298df37c45fafee3d1509b14e0987971f76dbe23660ae08fd2f3f8688953a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.8 MB (955832649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de460aa7645c9b53786e085b4185623243f1489f599613949b7e7a6ce8ecafea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:33:50 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:33:53 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c461a1c43cf20a0c74324fc81eedc343610af46fc2f49cb18fc360a12905e19`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 98.2 MB (98160181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6653d40d75a9d547f12b6b53a70d0324f19054978c841bb846ffebc85d784bc0`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 394.3 KB (394261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632df2d4e950a35f4d24f896cf23007e92044489ab219e48a30cbefd39bf11eb`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3964903d039e77cb629609e3a3723a48e7ec310279cd934dd1620b34fb9b00d6`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.3 MB (23342866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a73df547a3f6916c947f25d3daf02eb354b649d53b49c391dc723bb370a7bb8`  
		Last Modified: Thu, 02 Jul 2026 06:25:41 GMT  
		Size: 692.1 MB (692063362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:299cb0ca393c9e29001b143b840b514cf484992643fffb6a47a34fd64ec10e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58929631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b40d116c8704557a87d60bd7b6e52f159f93aed567ba93b50eca96359cd5950`

```dockerfile
```

-	Layers:
	-	`sha256:22932e45d6ffd4b06d05d989a48bfe125e98a258e2d4c48ff22eefcadba5a079`  
		Last Modified: Thu, 02 Jul 2026 06:25:30 GMT  
		Size: 58.9 MB (58920279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87be45d216f4f1eaba33c7208e23df477b5c0f64efd5a879dfc1c74bd4357e86`  
		Last Modified: Thu, 02 Jul 2026 06:25:27 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:61dc037aa1963fc3246001297bc4a8c763397205571989fa42851c2d6256040e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.5 MB (916516613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131e801b0b3cd3b0ad4e8c05dfc239b907fedd33a87ae60f04501133411778b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a95ec4818463c5a31c57a69c6ab40f0247bca893cc24d8ea04734f3de8e194`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 95.8 MB (95797241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bd08169712dee64b72959b3342413c21110bade5cd27aae9f522ae3ee8ba9`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 394.3 KB (394263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63f9c34214249e2a738cf1f863a1742f3f158a67178ca1a8f3173fb32db3eed`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3c56c2ed8ed0bd0468a10df3b2d497e186bb2ecd04dfed47bd0021d0d1636e`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 22.7 MB (22738187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fcbeba7f67735b23a8f73825040fe9a268348a95526246d878f4eb238085a88`  
		Last Modified: Thu, 02 Jul 2026 06:24:06 GMT  
		Size: 660.1 MB (660124455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:0811572d93541586005be1b04aef1f9ea1414790096f4f53c5a311603fc6b62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58914036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f2f109dc775d64262a80d144ad7b14e9c542ac0d2dc058b5548a5c7c4046f4`

```dockerfile
```

-	Layers:
	-	`sha256:db47b5126753ce0a7f5e4c74ab7d42f372ec56c7ac93b72f77fadfb35df676ca`  
		Last Modified: Thu, 02 Jul 2026 06:23:53 GMT  
		Size: 58.9 MB (58904604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:267de9595d44ece91be157b7e45860f85f7c938e5cb983b3f6b204ae05b9388d`  
		Last Modified: Thu, 02 Jul 2026 06:23:50 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:afb40d6be65331c20a114d4e229a7ef099fed1b17bf6370daee193514b32aa16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:5c793b92e0b12d6babb438cb20eed7766495fde6419a21e3d2e918464f09dc17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.8 MB (263769287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cd76603187799abf0f64311e6d4612a4fce0515a3911d56d969b8711b1def5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:33:50 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:33:53 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c461a1c43cf20a0c74324fc81eedc343610af46fc2f49cb18fc360a12905e19`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 98.2 MB (98160181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6653d40d75a9d547f12b6b53a70d0324f19054978c841bb846ffebc85d784bc0`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 394.3 KB (394261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632df2d4e950a35f4d24f896cf23007e92044489ab219e48a30cbefd39bf11eb`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3964903d039e77cb629609e3a3723a48e7ec310279cd934dd1620b34fb9b00d6`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.3 MB (23342866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1a83bcdf35eb375603143b3161726fb83514c817995ff17f39df9e4ba4ec4548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23836137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe7fd300feb0164035a4f06fb81bd4bc1aa052612bd2747fd5577bbe52a645a`

```dockerfile
```

-	Layers:
	-	`sha256:41fa7e4b1442e33363d79b4745b48bcd2cca08c25c17817d07d47904ab04a11e`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.8 MB (23819789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dc82ed2f3f566530715ed0b11e174c3b8e879fd605e6ba9064929c433f9edde`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9bdda47f584f33aae18456225a8a95fe7bcde821727757f02a3252cbc46e8188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256392158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeed06ccec4addc8a0b2d939301bf39cf93ae57b2094c9c438a4590d767310ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a95ec4818463c5a31c57a69c6ab40f0247bca893cc24d8ea04734f3de8e194`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 95.8 MB (95797241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bd08169712dee64b72959b3342413c21110bade5cd27aae9f522ae3ee8ba9`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 394.3 KB (394263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63f9c34214249e2a738cf1f863a1742f3f158a67178ca1a8f3173fb32db3eed`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3c56c2ed8ed0bd0468a10df3b2d497e186bb2ecd04dfed47bd0021d0d1636e`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 22.7 MB (22738187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:cb1325fa0e6bbee54408fab90aca871ff569f16328c77cc1d9c94be27aaffcc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23849291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b6047afd6d5f17fcbefcbb60bdd25353d11c84d078a0e69baf442fdf1b360d`

```dockerfile
```

-	Layers:
	-	`sha256:eb925105d56d176b85cc2044e60a1539c34b733be59f496d6f0b0009db46704d`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 23.8 MB (23832806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3c67d1ac6580bb583eb999d1d7024d61a9bbc2a2f6f117020f1aef347566a8e`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:afb40d6be65331c20a114d4e229a7ef099fed1b17bf6370daee193514b32aa16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:5c793b92e0b12d6babb438cb20eed7766495fde6419a21e3d2e918464f09dc17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.8 MB (263769287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cd76603187799abf0f64311e6d4612a4fce0515a3911d56d969b8711b1def5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:33:50 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:33:53 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c461a1c43cf20a0c74324fc81eedc343610af46fc2f49cb18fc360a12905e19`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 98.2 MB (98160181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6653d40d75a9d547f12b6b53a70d0324f19054978c841bb846ffebc85d784bc0`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 394.3 KB (394261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632df2d4e950a35f4d24f896cf23007e92044489ab219e48a30cbefd39bf11eb`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3964903d039e77cb629609e3a3723a48e7ec310279cd934dd1620b34fb9b00d6`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.3 MB (23342866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:1a83bcdf35eb375603143b3161726fb83514c817995ff17f39df9e4ba4ec4548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23836137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe7fd300feb0164035a4f06fb81bd4bc1aa052612bd2747fd5577bbe52a645a`

```dockerfile
```

-	Layers:
	-	`sha256:41fa7e4b1442e33363d79b4745b48bcd2cca08c25c17817d07d47904ab04a11e`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.8 MB (23819789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dc82ed2f3f566530715ed0b11e174c3b8e879fd605e6ba9064929c433f9edde`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9bdda47f584f33aae18456225a8a95fe7bcde821727757f02a3252cbc46e8188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256392158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeed06ccec4addc8a0b2d939301bf39cf93ae57b2094c9c438a4590d767310ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a95ec4818463c5a31c57a69c6ab40f0247bca893cc24d8ea04734f3de8e194`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 95.8 MB (95797241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bd08169712dee64b72959b3342413c21110bade5cd27aae9f522ae3ee8ba9`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 394.3 KB (394263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63f9c34214249e2a738cf1f863a1742f3f158a67178ca1a8f3173fb32db3eed`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3c56c2ed8ed0bd0468a10df3b2d497e186bb2ecd04dfed47bd0021d0d1636e`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 22.7 MB (22738187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:cb1325fa0e6bbee54408fab90aca871ff569f16328c77cc1d9c94be27aaffcc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23849291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b6047afd6d5f17fcbefcbb60bdd25353d11c84d078a0e69baf442fdf1b360d`

```dockerfile
```

-	Layers:
	-	`sha256:eb925105d56d176b85cc2044e60a1539c34b733be59f496d6f0b0009db46704d`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 23.8 MB (23832806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3c67d1ac6580bb583eb999d1d7024d61a9bbc2a2f6f117020f1aef347566a8e`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:840a87964af623287d208c58c07bbcbd74e6c20cb7ca7a2fa2c36f7890bcb7a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:63931b304254fbc1e687275d2907fb09783c9229f97cac4ba84e5edae1702453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141869441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd409b7bdf44e45695fcedb3ba23235c1c244b2bb20f4947aeac4fc19feae05e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:e0ea4f4ff493222bd5a4ee9d03e8e62d04d9878fd5924758e060952a4c246958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17801255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce224ad2cecafb9a4245e97894fd2ba417f96113a865a7eeb82bf0c7a8c0bab`

```dockerfile
```

-	Layers:
	-	`sha256:1f865035cb49d695a35a916b135bb7d0111fbd94be36b3e2661881d92e23063f`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 17.8 MB (17786629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87c1a39b27a00b534e37157740220ce05dcd585e957d3535a10ebaa1b15aede8`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1c11d93caf16087531788db3129f4ee7bf81bc1af36732e6df11fb791cae3586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137459951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661095fd6be15243cc77566923700583aa3bf1b1b1601d951240842c8f9bc1d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:da2a066d637e56d39ae6fea9f2a871f66d225b5d88105bbe810601d8e7ee9c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17787725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82f23c9218079408eae9aa0923328f0adec570e8cc76d8b0f8d061ef67ae938`

```dockerfile
```

-	Layers:
	-	`sha256:f5ae7e49bc9bc8ff7cd958c782b719b9060857686537d24782fc76aa02e7e19a`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 17.8 MB (17772974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d718f75fe0402a4ffbcabfe921a82fe230e41c2efadae3e0efbd3c0397959143`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:840a87964af623287d208c58c07bbcbd74e6c20cb7ca7a2fa2c36f7890bcb7a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:63931b304254fbc1e687275d2907fb09783c9229f97cac4ba84e5edae1702453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141869441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd409b7bdf44e45695fcedb3ba23235c1c244b2bb20f4947aeac4fc19feae05e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:e0ea4f4ff493222bd5a4ee9d03e8e62d04d9878fd5924758e060952a4c246958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17801255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce224ad2cecafb9a4245e97894fd2ba417f96113a865a7eeb82bf0c7a8c0bab`

```dockerfile
```

-	Layers:
	-	`sha256:1f865035cb49d695a35a916b135bb7d0111fbd94be36b3e2661881d92e23063f`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 17.8 MB (17786629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87c1a39b27a00b534e37157740220ce05dcd585e957d3535a10ebaa1b15aede8`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1c11d93caf16087531788db3129f4ee7bf81bc1af36732e6df11fb791cae3586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137459951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661095fd6be15243cc77566923700583aa3bf1b1b1601d951240842c8f9bc1d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:da2a066d637e56d39ae6fea9f2a871f66d225b5d88105bbe810601d8e7ee9c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17787725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82f23c9218079408eae9aa0923328f0adec570e8cc76d8b0f8d061ef67ae938`

```dockerfile
```

-	Layers:
	-	`sha256:f5ae7e49bc9bc8ff7cd958c782b719b9060857686537d24782fc76aa02e7e19a`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 17.8 MB (17772974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d718f75fe0402a4ffbcabfe921a82fe230e41c2efadae3e0efbd3c0397959143`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:31daab66eef9139933379fb67159449944f4e2dcf2e22c2d12cc715f29873e0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:567b81bc54f44479e16ef1b75e4984d132f154b6511ea4fc851ee6bde76c30f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.7 MB (298741523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e8dbd844e2c4800938c4b5333af969282356d1382b82fca4276fbb5af90b65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:44 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ec5d30dd29345c308d8507834e994d821e91f1749c1ac7958502e231090ec4`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 684.2 KB (684193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc413446526c4a9a6c8774bdf798b65fb081d14042dd70a6be89dbfd3b4bb193`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 6.7 MB (6708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e390d12fb0c45fae46cc949fb764a27a89c375c37963026a6c875b78f9db09`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b6480ddb72f7be1cdf283ed626b65300ee3d7119358a0b0544eea741ebc55`  
		Last Modified: Thu, 02 Jul 2026 02:33:57 GMT  
		Size: 120.4 MB (120428831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59f3ab4923f905af5dea336ca191c3f4c0c7c10a5e94f43a32ed912bec67673`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c326db035d9eb5aa90e9726289ba5e4311379dc6c722880a29ef7d82f5f4ad2d`  
		Last Modified: Thu, 02 Jul 2026 05:34:57 GMT  
		Size: 112.6 MB (112594631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefb7a120a666708d4085d040bd3f07dae7ca8983e730492712e75edeeb29583`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 414.7 KB (414727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d99980f253ed18985e9911895670463ad5d198b79c3e5b456f91ee431fa7b0`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 2.5 KB (2496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9aeff93a83ede0fd7c1d946cc042112fceabf93b95edbb17eac495a6022320b`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 28.1 MB (28077976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:1d20ff31ee13c5436fd72686b025c2834d130116f614340b49f9f7c80ec28e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24945147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5299c0f2d2490d7c8626c01b40f5a6ee44e965f2c32aa5264c8c495b802fde4d`

```dockerfile
```

-	Layers:
	-	`sha256:622a77459ed34f8f029c8d8678cdf7b8f1fdba02a32940984416fa8f82320efc`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 24.9 MB (24928818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e0e7b9d8acc64fbef9b35c76c5d4376045a3e30d91f92005af8f05e408bcace`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b82a5ba3869a81196414cf34e4fc25c7935aab78b1f5187570ca9362c478cdbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287185552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6730561cd2fb34906a1cfdaded7fd626731b2d7a0f6a3d0e1b81047416729cc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:32:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b001be89164fbb02046ce9af9a2b7a5e0ad66978cfd22cfc1a2af4afba139ec`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 684.3 KB (684294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b69745571df31a23d05d59e00c84a01fb55ea25cc70ac9db801a4161a8a496`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 6.7 MB (6723385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaf1cbc06198a6c4d09cd2a67be7330dc025946904d5784217b83868ac5b41c`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 94.5 KB (94457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487f32191c358370f99adeaa860e1e16c228d3e02e484944034e92a993c9e560`  
		Last Modified: Thu, 02 Jul 2026 02:32:56 GMT  
		Size: 115.2 MB (115198099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be12ddbce7dbf598809dea14321a507e41918ee0e828bebc005dc0ae2d74920`  
		Last Modified: Thu, 02 Jul 2026 02:32:54 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a034566d651887ddb5f1ba722bae84badf0a5b63f948ddd21c8de7249aadd41a`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 108.0 MB (107990393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823ee0b2bfbfd0b14f177f88619491f094f0c281ad9a9a240301b9c363e665d6`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 414.7 KB (414729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f41f715663ade9fabed14840bc547a494e66fa82dc8f68c4625a23b0bb04b`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f793b6e6ba6b9852847a264d05964b92acf49dc155594ef3e44532e2d9246b`  
		Last Modified: Thu, 02 Jul 2026 05:36:12 GMT  
		Size: 27.2 MB (27193313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:c5ce1f2a71dcb249fe223d64d1d435d2f0a736f41ee21bd0f2388b2411d3d94c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24967539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b549a46881ff59383454925cb624ef28e180500edb5801a6b53347c84e9104df`

```dockerfile
```

-	Layers:
	-	`sha256:4534bbb6a3f0446737e6313b7febb49d2add0110e446369ded8af259d6edbfa7`  
		Last Modified: Thu, 02 Jul 2026 05:36:12 GMT  
		Size: 25.0 MB (24951073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f24ba7c3c5da865d4aadf8f7c76b2ee8d2a5abb6a6187e6b4ebef74be4e802f0`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:a42c46fbef4fe7958828d65c15a732f6dd6e88a497bdf09b80ba524f02956bcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:102787deba38fa7192935803040ffa69180c86cc0f367b40552e11d7fe96f02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083681611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830e4913bdc34e01f2829e063e4d2e10ea3c9857d730da50c21024744c7ca232`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:44 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ec5d30dd29345c308d8507834e994d821e91f1749c1ac7958502e231090ec4`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 684.2 KB (684193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc413446526c4a9a6c8774bdf798b65fb081d14042dd70a6be89dbfd3b4bb193`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 6.7 MB (6708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e390d12fb0c45fae46cc949fb764a27a89c375c37963026a6c875b78f9db09`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b6480ddb72f7be1cdf283ed626b65300ee3d7119358a0b0544eea741ebc55`  
		Last Modified: Thu, 02 Jul 2026 02:33:57 GMT  
		Size: 120.4 MB (120428831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59f3ab4923f905af5dea336ca191c3f4c0c7c10a5e94f43a32ed912bec67673`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c326db035d9eb5aa90e9726289ba5e4311379dc6c722880a29ef7d82f5f4ad2d`  
		Last Modified: Thu, 02 Jul 2026 05:34:57 GMT  
		Size: 112.6 MB (112594631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefb7a120a666708d4085d040bd3f07dae7ca8983e730492712e75edeeb29583`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 414.7 KB (414727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d99980f253ed18985e9911895670463ad5d198b79c3e5b456f91ee431fa7b0`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 2.5 KB (2496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9aeff93a83ede0fd7c1d946cc042112fceabf93b95edbb17eac495a6022320b`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 28.1 MB (28077976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22664bc228f876c9bcff551a4adfd0c5827ad997157663ca207074c34f54fc66`  
		Last Modified: Thu, 02 Jul 2026 06:26:27 GMT  
		Size: 784.9 MB (784940088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:6b57ddbeb0a0607834aab71e3be86eb0854efc7d1aeb66fe8abdc31fcbdd80bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61118031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f435881bb3a013baa5097cee1cacadc3d14e04497aa9f2a3b062085b2c0b602`

```dockerfile
```

-	Layers:
	-	`sha256:6b60bbcace025ca1720ee5d0d3229207760d49b37a9402fe4b7720677fbef65d`  
		Last Modified: Thu, 02 Jul 2026 06:26:13 GMT  
		Size: 61.1 MB (61108692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b8beb39d4147af44ebb260876d3661bd6a98d624f317a496629827a90f4eae3`  
		Last Modified: Thu, 02 Jul 2026 06:26:10 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:40118d7fe77c0fc3d471db76ba0c802f123a7bd87ca43c11edb59562a7dfa61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.2 MB (986243724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aabf027e5e85cd4903ccd57563ebb31a8a4c09d0da45acb4f789cc54617411`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:32:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b001be89164fbb02046ce9af9a2b7a5e0ad66978cfd22cfc1a2af4afba139ec`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 684.3 KB (684294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b69745571df31a23d05d59e00c84a01fb55ea25cc70ac9db801a4161a8a496`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 6.7 MB (6723385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaf1cbc06198a6c4d09cd2a67be7330dc025946904d5784217b83868ac5b41c`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 94.5 KB (94457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487f32191c358370f99adeaa860e1e16c228d3e02e484944034e92a993c9e560`  
		Last Modified: Thu, 02 Jul 2026 02:32:56 GMT  
		Size: 115.2 MB (115198099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be12ddbce7dbf598809dea14321a507e41918ee0e828bebc005dc0ae2d74920`  
		Last Modified: Thu, 02 Jul 2026 02:32:54 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a034566d651887ddb5f1ba722bae84badf0a5b63f948ddd21c8de7249aadd41a`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 108.0 MB (107990393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823ee0b2bfbfd0b14f177f88619491f094f0c281ad9a9a240301b9c363e665d6`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 414.7 KB (414729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f41f715663ade9fabed14840bc547a494e66fa82dc8f68c4625a23b0bb04b`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f793b6e6ba6b9852847a264d05964b92acf49dc155594ef3e44532e2d9246b`  
		Last Modified: Thu, 02 Jul 2026 05:36:12 GMT  
		Size: 27.2 MB (27193313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7211f42d172680c1cf170115ede93b90504876a5b505f94f91464886f6a835e5`  
		Last Modified: Thu, 02 Jul 2026 06:24:15 GMT  
		Size: 699.1 MB (699058172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:4e0ced6e440dd8d4fcbb12e5bc1c052015db0a580605f4887baa533ba654bb0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61048630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66ef0d777b15cab013ae48d4ca453a33cc3c2fe0ca27bdadff3fdbd45743255`

```dockerfile
```

-	Layers:
	-	`sha256:dadb321b3860561f151b17b9bce6948b1fd486b5b0516ebdbb8da5a8fe7bad4a`  
		Last Modified: Thu, 02 Jul 2026 06:24:04 GMT  
		Size: 61.0 MB (61039211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:192b7b75607dbdaa42e6286fb37de031b6212cf388c9940ce19892ec196fea2e`  
		Last Modified: Thu, 02 Jul 2026 06:24:01 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:a42c46fbef4fe7958828d65c15a732f6dd6e88a497bdf09b80ba524f02956bcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:102787deba38fa7192935803040ffa69180c86cc0f367b40552e11d7fe96f02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083681611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830e4913bdc34e01f2829e063e4d2e10ea3c9857d730da50c21024744c7ca232`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:44 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ec5d30dd29345c308d8507834e994d821e91f1749c1ac7958502e231090ec4`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 684.2 KB (684193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc413446526c4a9a6c8774bdf798b65fb081d14042dd70a6be89dbfd3b4bb193`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 6.7 MB (6708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e390d12fb0c45fae46cc949fb764a27a89c375c37963026a6c875b78f9db09`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b6480ddb72f7be1cdf283ed626b65300ee3d7119358a0b0544eea741ebc55`  
		Last Modified: Thu, 02 Jul 2026 02:33:57 GMT  
		Size: 120.4 MB (120428831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59f3ab4923f905af5dea336ca191c3f4c0c7c10a5e94f43a32ed912bec67673`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c326db035d9eb5aa90e9726289ba5e4311379dc6c722880a29ef7d82f5f4ad2d`  
		Last Modified: Thu, 02 Jul 2026 05:34:57 GMT  
		Size: 112.6 MB (112594631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefb7a120a666708d4085d040bd3f07dae7ca8983e730492712e75edeeb29583`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 414.7 KB (414727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d99980f253ed18985e9911895670463ad5d198b79c3e5b456f91ee431fa7b0`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 2.5 KB (2496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9aeff93a83ede0fd7c1d946cc042112fceabf93b95edbb17eac495a6022320b`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 28.1 MB (28077976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22664bc228f876c9bcff551a4adfd0c5827ad997157663ca207074c34f54fc66`  
		Last Modified: Thu, 02 Jul 2026 06:26:27 GMT  
		Size: 784.9 MB (784940088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6b57ddbeb0a0607834aab71e3be86eb0854efc7d1aeb66fe8abdc31fcbdd80bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61118031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f435881bb3a013baa5097cee1cacadc3d14e04497aa9f2a3b062085b2c0b602`

```dockerfile
```

-	Layers:
	-	`sha256:6b60bbcace025ca1720ee5d0d3229207760d49b37a9402fe4b7720677fbef65d`  
		Last Modified: Thu, 02 Jul 2026 06:26:13 GMT  
		Size: 61.1 MB (61108692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b8beb39d4147af44ebb260876d3661bd6a98d624f317a496629827a90f4eae3`  
		Last Modified: Thu, 02 Jul 2026 06:26:10 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:40118d7fe77c0fc3d471db76ba0c802f123a7bd87ca43c11edb59562a7dfa61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.2 MB (986243724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aabf027e5e85cd4903ccd57563ebb31a8a4c09d0da45acb4f789cc54617411`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:32:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b001be89164fbb02046ce9af9a2b7a5e0ad66978cfd22cfc1a2af4afba139ec`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 684.3 KB (684294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b69745571df31a23d05d59e00c84a01fb55ea25cc70ac9db801a4161a8a496`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 6.7 MB (6723385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaf1cbc06198a6c4d09cd2a67be7330dc025946904d5784217b83868ac5b41c`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 94.5 KB (94457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487f32191c358370f99adeaa860e1e16c228d3e02e484944034e92a993c9e560`  
		Last Modified: Thu, 02 Jul 2026 02:32:56 GMT  
		Size: 115.2 MB (115198099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be12ddbce7dbf598809dea14321a507e41918ee0e828bebc005dc0ae2d74920`  
		Last Modified: Thu, 02 Jul 2026 02:32:54 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a034566d651887ddb5f1ba722bae84badf0a5b63f948ddd21c8de7249aadd41a`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 108.0 MB (107990393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823ee0b2bfbfd0b14f177f88619491f094f0c281ad9a9a240301b9c363e665d6`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 414.7 KB (414729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f41f715663ade9fabed14840bc547a494e66fa82dc8f68c4625a23b0bb04b`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f793b6e6ba6b9852847a264d05964b92acf49dc155594ef3e44532e2d9246b`  
		Last Modified: Thu, 02 Jul 2026 05:36:12 GMT  
		Size: 27.2 MB (27193313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7211f42d172680c1cf170115ede93b90504876a5b505f94f91464886f6a835e5`  
		Last Modified: Thu, 02 Jul 2026 06:24:15 GMT  
		Size: 699.1 MB (699058172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:4e0ced6e440dd8d4fcbb12e5bc1c052015db0a580605f4887baa533ba654bb0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61048630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66ef0d777b15cab013ae48d4ca453a33cc3c2fe0ca27bdadff3fdbd45743255`

```dockerfile
```

-	Layers:
	-	`sha256:dadb321b3860561f151b17b9bce6948b1fd486b5b0516ebdbb8da5a8fe7bad4a`  
		Last Modified: Thu, 02 Jul 2026 06:24:04 GMT  
		Size: 61.0 MB (61039211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:192b7b75607dbdaa42e6286fb37de031b6212cf388c9940ce19892ec196fea2e`  
		Last Modified: Thu, 02 Jul 2026 06:24:01 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:31daab66eef9139933379fb67159449944f4e2dcf2e22c2d12cc715f29873e0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:567b81bc54f44479e16ef1b75e4984d132f154b6511ea4fc851ee6bde76c30f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.7 MB (298741523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e8dbd844e2c4800938c4b5333af969282356d1382b82fca4276fbb5af90b65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:44 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ec5d30dd29345c308d8507834e994d821e91f1749c1ac7958502e231090ec4`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 684.2 KB (684193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc413446526c4a9a6c8774bdf798b65fb081d14042dd70a6be89dbfd3b4bb193`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 6.7 MB (6708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e390d12fb0c45fae46cc949fb764a27a89c375c37963026a6c875b78f9db09`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b6480ddb72f7be1cdf283ed626b65300ee3d7119358a0b0544eea741ebc55`  
		Last Modified: Thu, 02 Jul 2026 02:33:57 GMT  
		Size: 120.4 MB (120428831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59f3ab4923f905af5dea336ca191c3f4c0c7c10a5e94f43a32ed912bec67673`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c326db035d9eb5aa90e9726289ba5e4311379dc6c722880a29ef7d82f5f4ad2d`  
		Last Modified: Thu, 02 Jul 2026 05:34:57 GMT  
		Size: 112.6 MB (112594631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefb7a120a666708d4085d040bd3f07dae7ca8983e730492712e75edeeb29583`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 414.7 KB (414727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d99980f253ed18985e9911895670463ad5d198b79c3e5b456f91ee431fa7b0`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 2.5 KB (2496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9aeff93a83ede0fd7c1d946cc042112fceabf93b95edbb17eac495a6022320b`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 28.1 MB (28077976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1d20ff31ee13c5436fd72686b025c2834d130116f614340b49f9f7c80ec28e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24945147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5299c0f2d2490d7c8626c01b40f5a6ee44e965f2c32aa5264c8c495b802fde4d`

```dockerfile
```

-	Layers:
	-	`sha256:622a77459ed34f8f029c8d8678cdf7b8f1fdba02a32940984416fa8f82320efc`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 24.9 MB (24928818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e0e7b9d8acc64fbef9b35c76c5d4376045a3e30d91f92005af8f05e408bcace`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b82a5ba3869a81196414cf34e4fc25c7935aab78b1f5187570ca9362c478cdbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287185552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6730561cd2fb34906a1cfdaded7fd626731b2d7a0f6a3d0e1b81047416729cc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:32:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b001be89164fbb02046ce9af9a2b7a5e0ad66978cfd22cfc1a2af4afba139ec`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 684.3 KB (684294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b69745571df31a23d05d59e00c84a01fb55ea25cc70ac9db801a4161a8a496`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 6.7 MB (6723385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaf1cbc06198a6c4d09cd2a67be7330dc025946904d5784217b83868ac5b41c`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 94.5 KB (94457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487f32191c358370f99adeaa860e1e16c228d3e02e484944034e92a993c9e560`  
		Last Modified: Thu, 02 Jul 2026 02:32:56 GMT  
		Size: 115.2 MB (115198099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be12ddbce7dbf598809dea14321a507e41918ee0e828bebc005dc0ae2d74920`  
		Last Modified: Thu, 02 Jul 2026 02:32:54 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a034566d651887ddb5f1ba722bae84badf0a5b63f948ddd21c8de7249aadd41a`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 108.0 MB (107990393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823ee0b2bfbfd0b14f177f88619491f094f0c281ad9a9a240301b9c363e665d6`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 414.7 KB (414729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f41f715663ade9fabed14840bc547a494e66fa82dc8f68c4625a23b0bb04b`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f793b6e6ba6b9852847a264d05964b92acf49dc155594ef3e44532e2d9246b`  
		Last Modified: Thu, 02 Jul 2026 05:36:12 GMT  
		Size: 27.2 MB (27193313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:c5ce1f2a71dcb249fe223d64d1d435d2f0a736f41ee21bd0f2388b2411d3d94c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24967539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b549a46881ff59383454925cb624ef28e180500edb5801a6b53347c84e9104df`

```dockerfile
```

-	Layers:
	-	`sha256:4534bbb6a3f0446737e6313b7febb49d2add0110e446369ded8af259d6edbfa7`  
		Last Modified: Thu, 02 Jul 2026 05:36:12 GMT  
		Size: 25.0 MB (24951073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f24ba7c3c5da865d4aadf8f7c76b2ee8d2a5abb6a6187e6b4ebef74be4e802f0`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:31daab66eef9139933379fb67159449944f4e2dcf2e22c2d12cc715f29873e0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:567b81bc54f44479e16ef1b75e4984d132f154b6511ea4fc851ee6bde76c30f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.7 MB (298741523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e8dbd844e2c4800938c4b5333af969282356d1382b82fca4276fbb5af90b65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:44 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ec5d30dd29345c308d8507834e994d821e91f1749c1ac7958502e231090ec4`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 684.2 KB (684193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc413446526c4a9a6c8774bdf798b65fb081d14042dd70a6be89dbfd3b4bb193`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 6.7 MB (6708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e390d12fb0c45fae46cc949fb764a27a89c375c37963026a6c875b78f9db09`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b6480ddb72f7be1cdf283ed626b65300ee3d7119358a0b0544eea741ebc55`  
		Last Modified: Thu, 02 Jul 2026 02:33:57 GMT  
		Size: 120.4 MB (120428831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59f3ab4923f905af5dea336ca191c3f4c0c7c10a5e94f43a32ed912bec67673`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c326db035d9eb5aa90e9726289ba5e4311379dc6c722880a29ef7d82f5f4ad2d`  
		Last Modified: Thu, 02 Jul 2026 05:34:57 GMT  
		Size: 112.6 MB (112594631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefb7a120a666708d4085d040bd3f07dae7ca8983e730492712e75edeeb29583`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 414.7 KB (414727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d99980f253ed18985e9911895670463ad5d198b79c3e5b456f91ee431fa7b0`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 2.5 KB (2496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9aeff93a83ede0fd7c1d946cc042112fceabf93b95edbb17eac495a6022320b`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 28.1 MB (28077976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:1d20ff31ee13c5436fd72686b025c2834d130116f614340b49f9f7c80ec28e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24945147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5299c0f2d2490d7c8626c01b40f5a6ee44e965f2c32aa5264c8c495b802fde4d`

```dockerfile
```

-	Layers:
	-	`sha256:622a77459ed34f8f029c8d8678cdf7b8f1fdba02a32940984416fa8f82320efc`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 24.9 MB (24928818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e0e7b9d8acc64fbef9b35c76c5d4376045a3e30d91f92005af8f05e408bcace`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b82a5ba3869a81196414cf34e4fc25c7935aab78b1f5187570ca9362c478cdbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287185552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6730561cd2fb34906a1cfdaded7fd626731b2d7a0f6a3d0e1b81047416729cc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:32:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b001be89164fbb02046ce9af9a2b7a5e0ad66978cfd22cfc1a2af4afba139ec`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 684.3 KB (684294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b69745571df31a23d05d59e00c84a01fb55ea25cc70ac9db801a4161a8a496`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 6.7 MB (6723385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaf1cbc06198a6c4d09cd2a67be7330dc025946904d5784217b83868ac5b41c`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 94.5 KB (94457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487f32191c358370f99adeaa860e1e16c228d3e02e484944034e92a993c9e560`  
		Last Modified: Thu, 02 Jul 2026 02:32:56 GMT  
		Size: 115.2 MB (115198099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be12ddbce7dbf598809dea14321a507e41918ee0e828bebc005dc0ae2d74920`  
		Last Modified: Thu, 02 Jul 2026 02:32:54 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a034566d651887ddb5f1ba722bae84badf0a5b63f948ddd21c8de7249aadd41a`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 108.0 MB (107990393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823ee0b2bfbfd0b14f177f88619491f094f0c281ad9a9a240301b9c363e665d6`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 414.7 KB (414729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f41f715663ade9fabed14840bc547a494e66fa82dc8f68c4625a23b0bb04b`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f793b6e6ba6b9852847a264d05964b92acf49dc155594ef3e44532e2d9246b`  
		Last Modified: Thu, 02 Jul 2026 05:36:12 GMT  
		Size: 27.2 MB (27193313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c5ce1f2a71dcb249fe223d64d1d435d2f0a736f41ee21bd0f2388b2411d3d94c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24967539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b549a46881ff59383454925cb624ef28e180500edb5801a6b53347c84e9104df`

```dockerfile
```

-	Layers:
	-	`sha256:4534bbb6a3f0446737e6313b7febb49d2add0110e446369ded8af259d6edbfa7`  
		Last Modified: Thu, 02 Jul 2026 05:36:12 GMT  
		Size: 25.0 MB (24951073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f24ba7c3c5da865d4aadf8f7c76b2ee8d2a5abb6a6187e6b4ebef74be4e802f0`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:17142ce4cb561d70d61f4fb485177caf0d6cceca4ccc418704168ff45f3713e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:e085b6ebaf20ecf676cb0c5577d7d10f0029ecfe1bc5409d4a1a5363a2dff972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157651693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bc0691dd3e5506cbd65c7b7467e3edf6aade3955b6a8d5cc588eb7a130a9b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:44 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ec5d30dd29345c308d8507834e994d821e91f1749c1ac7958502e231090ec4`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 684.2 KB (684193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc413446526c4a9a6c8774bdf798b65fb081d14042dd70a6be89dbfd3b4bb193`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 6.7 MB (6708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e390d12fb0c45fae46cc949fb764a27a89c375c37963026a6c875b78f9db09`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b6480ddb72f7be1cdf283ed626b65300ee3d7119358a0b0544eea741ebc55`  
		Last Modified: Thu, 02 Jul 2026 02:33:57 GMT  
		Size: 120.4 MB (120428831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59f3ab4923f905af5dea336ca191c3f4c0c7c10a5e94f43a32ed912bec67673`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:94da4efa27092efff103d4fd7a85d7a40a6b918bef3fcdf247268d4e2fcb1bd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18634808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e38f13187c8f7ba486f6ef4db5fb31728c828c9ff86f3f1b03f855b91f977ac`

```dockerfile
```

-	Layers:
	-	`sha256:129a4f1e310393ae04c6ebe7d8cc637350a6246e2b327408fab6aa56163e0219`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 18.6 MB (18620201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b415344d70bd9a90d9b08a5c64765144fec94e275020ba9f6290b23e3ee8c77`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 14.6 KB (14607 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cce62bcc87be91e29c6a022a1da0c716975dc149b7404680e66a5d60402a9948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151584613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dda1d606afcfb735c715584601eacbf904585720f0ef17928fefe401764d903`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:32:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b001be89164fbb02046ce9af9a2b7a5e0ad66978cfd22cfc1a2af4afba139ec`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 684.3 KB (684294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b69745571df31a23d05d59e00c84a01fb55ea25cc70ac9db801a4161a8a496`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 6.7 MB (6723385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaf1cbc06198a6c4d09cd2a67be7330dc025946904d5784217b83868ac5b41c`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 94.5 KB (94457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487f32191c358370f99adeaa860e1e16c228d3e02e484944034e92a993c9e560`  
		Last Modified: Thu, 02 Jul 2026 02:32:56 GMT  
		Size: 115.2 MB (115198099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be12ddbce7dbf598809dea14321a507e41918ee0e828bebc005dc0ae2d74920`  
		Last Modified: Thu, 02 Jul 2026 02:32:54 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:46dc1aee6484436aa84a6ce8c5cbd3347b5f076ca4b17e311f5bb709ea420170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18608940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f501f129db97ffa1b89bcc003472eea93c3054e8637f000e87c2d39dd1b7aee`

```dockerfile
```

-	Layers:
	-	`sha256:04bbdb87178f84cf2cf41a526365a97c2616fec5290afa1e04199ee4e54499aa`  
		Last Modified: Thu, 02 Jul 2026 02:32:53 GMT  
		Size: 18.6 MB (18594207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:935920c2611e09555f60f535878ab3e2e39251d2a492ea9bff0cfca9082376e8`  
		Last Modified: Thu, 02 Jul 2026 02:32:51 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:17142ce4cb561d70d61f4fb485177caf0d6cceca4ccc418704168ff45f3713e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:e085b6ebaf20ecf676cb0c5577d7d10f0029ecfe1bc5409d4a1a5363a2dff972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157651693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bc0691dd3e5506cbd65c7b7467e3edf6aade3955b6a8d5cc588eb7a130a9b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:44 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:33:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ec5d30dd29345c308d8507834e994d821e91f1749c1ac7958502e231090ec4`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 684.2 KB (684193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc413446526c4a9a6c8774bdf798b65fb081d14042dd70a6be89dbfd3b4bb193`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 6.7 MB (6708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e390d12fb0c45fae46cc949fb764a27a89c375c37963026a6c875b78f9db09`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b6480ddb72f7be1cdf283ed626b65300ee3d7119358a0b0544eea741ebc55`  
		Last Modified: Thu, 02 Jul 2026 02:33:57 GMT  
		Size: 120.4 MB (120428831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59f3ab4923f905af5dea336ca191c3f4c0c7c10a5e94f43a32ed912bec67673`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:94da4efa27092efff103d4fd7a85d7a40a6b918bef3fcdf247268d4e2fcb1bd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18634808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e38f13187c8f7ba486f6ef4db5fb31728c828c9ff86f3f1b03f855b91f977ac`

```dockerfile
```

-	Layers:
	-	`sha256:129a4f1e310393ae04c6ebe7d8cc637350a6246e2b327408fab6aa56163e0219`  
		Last Modified: Thu, 02 Jul 2026 02:33:55 GMT  
		Size: 18.6 MB (18620201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b415344d70bd9a90d9b08a5c64765144fec94e275020ba9f6290b23e3ee8c77`  
		Last Modified: Thu, 02 Jul 2026 02:33:54 GMT  
		Size: 14.6 KB (14607 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cce62bcc87be91e29c6a022a1da0c716975dc149b7404680e66a5d60402a9948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151584613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dda1d606afcfb735c715584601eacbf904585720f0ef17928fefe401764d903`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:24 GMT
ENV ROS_DISTRO=jazzy
# Thu, 02 Jul 2026 02:32:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b001be89164fbb02046ce9af9a2b7a5e0ad66978cfd22cfc1a2af4afba139ec`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 684.3 KB (684294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b69745571df31a23d05d59e00c84a01fb55ea25cc70ac9db801a4161a8a496`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 6.7 MB (6723385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaf1cbc06198a6c4d09cd2a67be7330dc025946904d5784217b83868ac5b41c`  
		Last Modified: Thu, 02 Jul 2026 02:32:52 GMT  
		Size: 94.5 KB (94457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487f32191c358370f99adeaa860e1e16c228d3e02e484944034e92a993c9e560`  
		Last Modified: Thu, 02 Jul 2026 02:32:56 GMT  
		Size: 115.2 MB (115198099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be12ddbce7dbf598809dea14321a507e41918ee0e828bebc005dc0ae2d74920`  
		Last Modified: Thu, 02 Jul 2026 02:32:54 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:46dc1aee6484436aa84a6ce8c5cbd3347b5f076ca4b17e311f5bb709ea420170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18608940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f501f129db97ffa1b89bcc003472eea93c3054e8637f000e87c2d39dd1b7aee`

```dockerfile
```

-	Layers:
	-	`sha256:04bbdb87178f84cf2cf41a526365a97c2616fec5290afa1e04199ee4e54499aa`  
		Last Modified: Thu, 02 Jul 2026 02:32:53 GMT  
		Size: 18.6 MB (18594207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:935920c2611e09555f60f535878ab3e2e39251d2a492ea9bff0cfca9082376e8`  
		Last Modified: Thu, 02 Jul 2026 02:32:51 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:5a91562b35fe8ce33082df7221ec564c0172ae9b242352a45562deb1ddbf2702
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:5a2393bf8fccb1b3621697f8741c1349bccdcb15e08ef6806c5e1259c1eb9a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299081124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaeedfee045864351837da404e8e1be45318b8ed94666349b5fe0e74bbfb077d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc621ca26f7ca93b0e67ec42931619f6f4a840f02bec94059c6284748bcc05a1`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 94.4 KB (94397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362425c4502b31b871a17760dfa3c0522ab6ddda11fec1f17362fb5d3f0c7fa4`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 121.0 MB (120987274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdbc569c9ef1d656828a3f7861334e730d4d0a84c203ff82b8016aa8680e102`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062710a1d69617df74a1e4686d85b78c8a2a790e4ceb4a1aab67566efedeccff`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 112.6 MB (112596657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6605c43fc23601f1c7601bc33bdc058c656d5686139bca17e39a96af5a6e984`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 380.8 KB (380800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097d4dbe984af77c9b21f47558efb2c9707d56b39543795af15094e22bb3bd6c`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e73fd0223ea3083b9e9d6be3ce36976a3ca787a13700d263537179933c708e`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 27.9 MB (27891085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:4fb06024f919998ce9ad01740ef43ecc3594f4b102f74a198c3c93f599415f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24862758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3167dd510b38475d922aa139c898a5684f050bdb7c77bc6941e960d1098f61`

```dockerfile
```

-	Layers:
	-	`sha256:9aa8a2f97b5656b5afaa4f11130eb434c6353c1329f326b9bdb22fe23df54c33`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 24.8 MB (24846411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6e0a3f4a8f3c7bdc363632e473eb4fb8b612c62509b149118b7475dce039f0`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d09c4bcb497daddbf65893c8708565fa985f9bb321e90838231267e0e3a60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287485541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f478a40c360ded857c997c63d18b3ca8b2892a0e7109ea09b9792ca0b88fd0e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:45 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d85673ed3b6ede30853b78cf9b200a12ed710093528bc7ea97cc227d7968fdc`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 684.3 KB (684305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc3cbee59d5058a41df39064360641f3a3895380215eb1e76cc181aa211071`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 6.7 MB (6723379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505279984ca7f23d65c578350e6e62883e47445ca63c893737b394d3c0e92997`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 94.5 KB (94459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74c9925d3c2a789e8f8fb895af2bdbeae4cb3f738c69e358f51c06affcc5935`  
		Last Modified: Thu, 02 Jul 2026 02:34:16 GMT  
		Size: 115.7 MB (115724685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd1673b464c80ff2a0b9b11c6693b405c75a35b5fd83a783241cb2a92ac7f5`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dc595c48d00c55a57d9cb0f8f63cdcb00f5d44aa236feff075bb97ba3e2bcc`  
		Last Modified: Thu, 02 Jul 2026 05:36:23 GMT  
		Size: 108.0 MB (107991838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e7a54b2f77825ff3bebdcb4b0b68439dc057c020c48ee27ba47d128d146dce`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 380.8 KB (380797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee37d58b5225cb3250e94f7286c1bc73e05361badccb5d8fb5726777f984efbc`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b41f98af63370ec197291f16ec97f10104e6320e4ba7fae828e988b2dc7615`  
		Last Modified: Thu, 02 Jul 2026 05:36:21 GMT  
		Size: 27.0 MB (26999205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:ab16410d3c936f81df4b3bdd6efaefa6a17f61789c2af88be0506d5bcf99a1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24885155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f036136e144e03c4b65189e1ac9d0cfd571d45a3735f7813b789468c50b368d2`

```dockerfile
```

-	Layers:
	-	`sha256:65cea4e5ab27eecebd2df8a4c37b9addc1f4ba6c847863b500ce99ae37401280`  
		Last Modified: Thu, 02 Jul 2026 05:36:20 GMT  
		Size: 24.9 MB (24868671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4701413a437949dadda7fbce4f312c78e28da874db616e43d163f6ab3c309a2e`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:cab73288722ca0159cd4b69194b8e1a96ec6476f642e7c4506fad6c8e3fe1540
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:59e13b8ecf0d7522e7ceb14485368c95bf268d0c0a94072bd79a955e8a99b756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084020106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f7cad46307a23194d4b7f5fd9b190dfda448732ea7a2339d0349dac94243e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc621ca26f7ca93b0e67ec42931619f6f4a840f02bec94059c6284748bcc05a1`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 94.4 KB (94397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362425c4502b31b871a17760dfa3c0522ab6ddda11fec1f17362fb5d3f0c7fa4`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 121.0 MB (120987274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdbc569c9ef1d656828a3f7861334e730d4d0a84c203ff82b8016aa8680e102`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062710a1d69617df74a1e4686d85b78c8a2a790e4ceb4a1aab67566efedeccff`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 112.6 MB (112596657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6605c43fc23601f1c7601bc33bdc058c656d5686139bca17e39a96af5a6e984`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 380.8 KB (380800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097d4dbe984af77c9b21f47558efb2c9707d56b39543795af15094e22bb3bd6c`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e73fd0223ea3083b9e9d6be3ce36976a3ca787a13700d263537179933c708e`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 27.9 MB (27891085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b9a6aa04c031181f6d37453d989520f8dee297018681eaabe6f7c50535fc7a`  
		Last Modified: Thu, 02 Jul 2026 06:26:33 GMT  
		Size: 784.9 MB (784938982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:ad051ec4d836590af5d053f3d91b97d29f781f1b5e74ae03b1ca947bc95c384a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61042810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304912d76b4938f3476a9f06f3a640dd59be1d26729061030c7c980bb409c25b`

```dockerfile
```

-	Layers:
	-	`sha256:a0c30f7fc69f7f7de5c18a59fe95dee2dc749eb8291699150acb41d2eb4cc183`  
		Last Modified: Thu, 02 Jul 2026 06:26:16 GMT  
		Size: 61.0 MB (61033458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f704cd6ff27fce4dfe2c49b7068559140b8bde8a71d454cab5f25c22f1df99ee`  
		Last Modified: Thu, 02 Jul 2026 06:26:12 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:42a7d206a04940014b3886a42791cbc78f36b5fe3878dd5e33f59797c991ff42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.6 MB (986581344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf2ab4b6f82c1ff7d8d2af8877030b89d87f28b6ffeb762d980ac6daa204329`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:45 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d85673ed3b6ede30853b78cf9b200a12ed710093528bc7ea97cc227d7968fdc`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 684.3 KB (684305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc3cbee59d5058a41df39064360641f3a3895380215eb1e76cc181aa211071`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 6.7 MB (6723379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505279984ca7f23d65c578350e6e62883e47445ca63c893737b394d3c0e92997`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 94.5 KB (94459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74c9925d3c2a789e8f8fb895af2bdbeae4cb3f738c69e358f51c06affcc5935`  
		Last Modified: Thu, 02 Jul 2026 02:34:16 GMT  
		Size: 115.7 MB (115724685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd1673b464c80ff2a0b9b11c6693b405c75a35b5fd83a783241cb2a92ac7f5`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dc595c48d00c55a57d9cb0f8f63cdcb00f5d44aa236feff075bb97ba3e2bcc`  
		Last Modified: Thu, 02 Jul 2026 05:36:23 GMT  
		Size: 108.0 MB (107991838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e7a54b2f77825ff3bebdcb4b0b68439dc057c020c48ee27ba47d128d146dce`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 380.8 KB (380797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee37d58b5225cb3250e94f7286c1bc73e05361badccb5d8fb5726777f984efbc`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b41f98af63370ec197291f16ec97f10104e6320e4ba7fae828e988b2dc7615`  
		Last Modified: Thu, 02 Jul 2026 05:36:21 GMT  
		Size: 27.0 MB (26999205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904b8acebc13a68578c63d66f0cacf5cd856906cf2524d95f4b3a31fed218219`  
		Last Modified: Thu, 02 Jul 2026 06:24:14 GMT  
		Size: 699.1 MB (699095803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:d4d5b7a8f065258c0febfd9167c8ac150df73296e627952f4d4a29589be398b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60973413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069923bccee5375a4f620cb88195f8064e9b6aa4d67dc8a16db1c1850476287b`

```dockerfile
```

-	Layers:
	-	`sha256:223d65925a3a24aee7595ac5ad25f5dce925b3657f8f7f47bc8ed4ddd4eb5f08`  
		Last Modified: Thu, 02 Jul 2026 06:24:02 GMT  
		Size: 61.0 MB (60963982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6d82d34045359785763727fdeff1579a44030b0ec67a00bd7acf87502046bb4`  
		Last Modified: Thu, 02 Jul 2026 06:23:59 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:cab73288722ca0159cd4b69194b8e1a96ec6476f642e7c4506fad6c8e3fe1540
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:59e13b8ecf0d7522e7ceb14485368c95bf268d0c0a94072bd79a955e8a99b756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084020106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f7cad46307a23194d4b7f5fd9b190dfda448732ea7a2339d0349dac94243e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc621ca26f7ca93b0e67ec42931619f6f4a840f02bec94059c6284748bcc05a1`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 94.4 KB (94397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362425c4502b31b871a17760dfa3c0522ab6ddda11fec1f17362fb5d3f0c7fa4`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 121.0 MB (120987274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdbc569c9ef1d656828a3f7861334e730d4d0a84c203ff82b8016aa8680e102`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062710a1d69617df74a1e4686d85b78c8a2a790e4ceb4a1aab67566efedeccff`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 112.6 MB (112596657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6605c43fc23601f1c7601bc33bdc058c656d5686139bca17e39a96af5a6e984`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 380.8 KB (380800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097d4dbe984af77c9b21f47558efb2c9707d56b39543795af15094e22bb3bd6c`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e73fd0223ea3083b9e9d6be3ce36976a3ca787a13700d263537179933c708e`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 27.9 MB (27891085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b9a6aa04c031181f6d37453d989520f8dee297018681eaabe6f7c50535fc7a`  
		Last Modified: Thu, 02 Jul 2026 06:26:33 GMT  
		Size: 784.9 MB (784938982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:ad051ec4d836590af5d053f3d91b97d29f781f1b5e74ae03b1ca947bc95c384a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61042810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304912d76b4938f3476a9f06f3a640dd59be1d26729061030c7c980bb409c25b`

```dockerfile
```

-	Layers:
	-	`sha256:a0c30f7fc69f7f7de5c18a59fe95dee2dc749eb8291699150acb41d2eb4cc183`  
		Last Modified: Thu, 02 Jul 2026 06:26:16 GMT  
		Size: 61.0 MB (61033458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f704cd6ff27fce4dfe2c49b7068559140b8bde8a71d454cab5f25c22f1df99ee`  
		Last Modified: Thu, 02 Jul 2026 06:26:12 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:42a7d206a04940014b3886a42791cbc78f36b5fe3878dd5e33f59797c991ff42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.6 MB (986581344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf2ab4b6f82c1ff7d8d2af8877030b89d87f28b6ffeb762d980ac6daa204329`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:45 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d85673ed3b6ede30853b78cf9b200a12ed710093528bc7ea97cc227d7968fdc`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 684.3 KB (684305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc3cbee59d5058a41df39064360641f3a3895380215eb1e76cc181aa211071`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 6.7 MB (6723379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505279984ca7f23d65c578350e6e62883e47445ca63c893737b394d3c0e92997`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 94.5 KB (94459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74c9925d3c2a789e8f8fb895af2bdbeae4cb3f738c69e358f51c06affcc5935`  
		Last Modified: Thu, 02 Jul 2026 02:34:16 GMT  
		Size: 115.7 MB (115724685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd1673b464c80ff2a0b9b11c6693b405c75a35b5fd83a783241cb2a92ac7f5`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dc595c48d00c55a57d9cb0f8f63cdcb00f5d44aa236feff075bb97ba3e2bcc`  
		Last Modified: Thu, 02 Jul 2026 05:36:23 GMT  
		Size: 108.0 MB (107991838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e7a54b2f77825ff3bebdcb4b0b68439dc057c020c48ee27ba47d128d146dce`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 380.8 KB (380797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee37d58b5225cb3250e94f7286c1bc73e05361badccb5d8fb5726777f984efbc`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b41f98af63370ec197291f16ec97f10104e6320e4ba7fae828e988b2dc7615`  
		Last Modified: Thu, 02 Jul 2026 05:36:21 GMT  
		Size: 27.0 MB (26999205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904b8acebc13a68578c63d66f0cacf5cd856906cf2524d95f4b3a31fed218219`  
		Last Modified: Thu, 02 Jul 2026 06:24:14 GMT  
		Size: 699.1 MB (699095803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:d4d5b7a8f065258c0febfd9167c8ac150df73296e627952f4d4a29589be398b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60973413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069923bccee5375a4f620cb88195f8064e9b6aa4d67dc8a16db1c1850476287b`

```dockerfile
```

-	Layers:
	-	`sha256:223d65925a3a24aee7595ac5ad25f5dce925b3657f8f7f47bc8ed4ddd4eb5f08`  
		Last Modified: Thu, 02 Jul 2026 06:24:02 GMT  
		Size: 61.0 MB (60963982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6d82d34045359785763727fdeff1579a44030b0ec67a00bd7acf87502046bb4`  
		Last Modified: Thu, 02 Jul 2026 06:23:59 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:5a91562b35fe8ce33082df7221ec564c0172ae9b242352a45562deb1ddbf2702
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:5a2393bf8fccb1b3621697f8741c1349bccdcb15e08ef6806c5e1259c1eb9a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299081124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaeedfee045864351837da404e8e1be45318b8ed94666349b5fe0e74bbfb077d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc621ca26f7ca93b0e67ec42931619f6f4a840f02bec94059c6284748bcc05a1`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 94.4 KB (94397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362425c4502b31b871a17760dfa3c0522ab6ddda11fec1f17362fb5d3f0c7fa4`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 121.0 MB (120987274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdbc569c9ef1d656828a3f7861334e730d4d0a84c203ff82b8016aa8680e102`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062710a1d69617df74a1e4686d85b78c8a2a790e4ceb4a1aab67566efedeccff`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 112.6 MB (112596657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6605c43fc23601f1c7601bc33bdc058c656d5686139bca17e39a96af5a6e984`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 380.8 KB (380800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097d4dbe984af77c9b21f47558efb2c9707d56b39543795af15094e22bb3bd6c`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e73fd0223ea3083b9e9d6be3ce36976a3ca787a13700d263537179933c708e`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 27.9 MB (27891085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:4fb06024f919998ce9ad01740ef43ecc3594f4b102f74a198c3c93f599415f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24862758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3167dd510b38475d922aa139c898a5684f050bdb7c77bc6941e960d1098f61`

```dockerfile
```

-	Layers:
	-	`sha256:9aa8a2f97b5656b5afaa4f11130eb434c6353c1329f326b9bdb22fe23df54c33`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 24.8 MB (24846411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6e0a3f4a8f3c7bdc363632e473eb4fb8b612c62509b149118b7475dce039f0`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d09c4bcb497daddbf65893c8708565fa985f9bb321e90838231267e0e3a60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287485541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f478a40c360ded857c997c63d18b3ca8b2892a0e7109ea09b9792ca0b88fd0e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:45 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d85673ed3b6ede30853b78cf9b200a12ed710093528bc7ea97cc227d7968fdc`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 684.3 KB (684305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc3cbee59d5058a41df39064360641f3a3895380215eb1e76cc181aa211071`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 6.7 MB (6723379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505279984ca7f23d65c578350e6e62883e47445ca63c893737b394d3c0e92997`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 94.5 KB (94459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74c9925d3c2a789e8f8fb895af2bdbeae4cb3f738c69e358f51c06affcc5935`  
		Last Modified: Thu, 02 Jul 2026 02:34:16 GMT  
		Size: 115.7 MB (115724685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd1673b464c80ff2a0b9b11c6693b405c75a35b5fd83a783241cb2a92ac7f5`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dc595c48d00c55a57d9cb0f8f63cdcb00f5d44aa236feff075bb97ba3e2bcc`  
		Last Modified: Thu, 02 Jul 2026 05:36:23 GMT  
		Size: 108.0 MB (107991838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e7a54b2f77825ff3bebdcb4b0b68439dc057c020c48ee27ba47d128d146dce`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 380.8 KB (380797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee37d58b5225cb3250e94f7286c1bc73e05361badccb5d8fb5726777f984efbc`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b41f98af63370ec197291f16ec97f10104e6320e4ba7fae828e988b2dc7615`  
		Last Modified: Thu, 02 Jul 2026 05:36:21 GMT  
		Size: 27.0 MB (26999205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:ab16410d3c936f81df4b3bdd6efaefa6a17f61789c2af88be0506d5bcf99a1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24885155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f036136e144e03c4b65189e1ac9d0cfd571d45a3735f7813b789468c50b368d2`

```dockerfile
```

-	Layers:
	-	`sha256:65cea4e5ab27eecebd2df8a4c37b9addc1f4ba6c847863b500ce99ae37401280`  
		Last Modified: Thu, 02 Jul 2026 05:36:20 GMT  
		Size: 24.9 MB (24868671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4701413a437949dadda7fbce4f312c78e28da874db616e43d163f6ab3c309a2e`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:5a91562b35fe8ce33082df7221ec564c0172ae9b242352a45562deb1ddbf2702
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:5a2393bf8fccb1b3621697f8741c1349bccdcb15e08ef6806c5e1259c1eb9a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299081124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaeedfee045864351837da404e8e1be45318b8ed94666349b5fe0e74bbfb077d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:24 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc621ca26f7ca93b0e67ec42931619f6f4a840f02bec94059c6284748bcc05a1`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 94.4 KB (94397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362425c4502b31b871a17760dfa3c0522ab6ddda11fec1f17362fb5d3f0c7fa4`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 121.0 MB (120987274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdbc569c9ef1d656828a3f7861334e730d4d0a84c203ff82b8016aa8680e102`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062710a1d69617df74a1e4686d85b78c8a2a790e4ceb4a1aab67566efedeccff`  
		Last Modified: Thu, 02 Jul 2026 05:34:55 GMT  
		Size: 112.6 MB (112596657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6605c43fc23601f1c7601bc33bdc058c656d5686139bca17e39a96af5a6e984`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 380.8 KB (380800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097d4dbe984af77c9b21f47558efb2c9707d56b39543795af15094e22bb3bd6c`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e73fd0223ea3083b9e9d6be3ce36976a3ca787a13700d263537179933c708e`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 27.9 MB (27891085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:4fb06024f919998ce9ad01740ef43ecc3594f4b102f74a198c3c93f599415f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24862758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3167dd510b38475d922aa139c898a5684f050bdb7c77bc6941e960d1098f61`

```dockerfile
```

-	Layers:
	-	`sha256:9aa8a2f97b5656b5afaa4f11130eb434c6353c1329f326b9bdb22fe23df54c33`  
		Last Modified: Thu, 02 Jul 2026 05:34:53 GMT  
		Size: 24.8 MB (24846411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6e0a3f4a8f3c7bdc363632e473eb4fb8b612c62509b149118b7475dce039f0`  
		Last Modified: Thu, 02 Jul 2026 05:34:51 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d09c4bcb497daddbf65893c8708565fa985f9bb321e90838231267e0e3a60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287485541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f478a40c360ded857c997c63d18b3ca8b2892a0e7109ea09b9792ca0b88fd0e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:45 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d85673ed3b6ede30853b78cf9b200a12ed710093528bc7ea97cc227d7968fdc`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 684.3 KB (684305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc3cbee59d5058a41df39064360641f3a3895380215eb1e76cc181aa211071`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 6.7 MB (6723379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505279984ca7f23d65c578350e6e62883e47445ca63c893737b394d3c0e92997`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 94.5 KB (94459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74c9925d3c2a789e8f8fb895af2bdbeae4cb3f738c69e358f51c06affcc5935`  
		Last Modified: Thu, 02 Jul 2026 02:34:16 GMT  
		Size: 115.7 MB (115724685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd1673b464c80ff2a0b9b11c6693b405c75a35b5fd83a783241cb2a92ac7f5`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dc595c48d00c55a57d9cb0f8f63cdcb00f5d44aa236feff075bb97ba3e2bcc`  
		Last Modified: Thu, 02 Jul 2026 05:36:23 GMT  
		Size: 108.0 MB (107991838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e7a54b2f77825ff3bebdcb4b0b68439dc057c020c48ee27ba47d128d146dce`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 380.8 KB (380797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee37d58b5225cb3250e94f7286c1bc73e05361badccb5d8fb5726777f984efbc`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b41f98af63370ec197291f16ec97f10104e6320e4ba7fae828e988b2dc7615`  
		Last Modified: Thu, 02 Jul 2026 05:36:21 GMT  
		Size: 27.0 MB (26999205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:ab16410d3c936f81df4b3bdd6efaefa6a17f61789c2af88be0506d5bcf99a1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24885155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f036136e144e03c4b65189e1ac9d0cfd571d45a3735f7813b789468c50b368d2`

```dockerfile
```

-	Layers:
	-	`sha256:65cea4e5ab27eecebd2df8a4c37b9addc1f4ba6c847863b500ce99ae37401280`  
		Last Modified: Thu, 02 Jul 2026 05:36:20 GMT  
		Size: 24.9 MB (24868671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4701413a437949dadda7fbce4f312c78e28da874db616e43d163f6ab3c309a2e`  
		Last Modified: Thu, 02 Jul 2026 05:36:19 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:f2684c9e383c5cebb950250227ec275fac2c353f45f7fc53b6ebfa5c49698f06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:5356c2a069bf4cbc23b1cb95314a9fa4b77699a38cbb52a5a11eebd9576957db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158210090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b1c2b2d4ced58bef05e7b200cec1824f3f05ea715d75737007add5af39fce5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc621ca26f7ca93b0e67ec42931619f6f4a840f02bec94059c6284748bcc05a1`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 94.4 KB (94397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362425c4502b31b871a17760dfa3c0522ab6ddda11fec1f17362fb5d3f0c7fa4`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 121.0 MB (120987274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdbc569c9ef1d656828a3f7861334e730d4d0a84c203ff82b8016aa8680e102`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:ca452bb4c3709d208acf653c93cecfe1df9f24f92801b874051c6bf1314ce42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045bfa1648689a61c4c31600ab7356e0b259caa56a3101a50cd26292bc227967`

```dockerfile
```

-	Layers:
	-	`sha256:7d928d0eca4f92e969cc305c50a53f62b9ebc884e8fcfa222f771f680d89686d`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 18.6 MB (18593248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def5516d7621347766a45a14ed8f71bdd267976f6d4a891518b3de4fc7fb3a1b`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c4ad2926b850cc5f6b74967b153561ead272be6141e0eadee3b998118fcf9b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.1 MB (152111203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403af768c852df0c70835cf4b8361ab86a46a82e886c01e5116a36bdbab23abb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d85673ed3b6ede30853b78cf9b200a12ed710093528bc7ea97cc227d7968fdc`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 684.3 KB (684305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc3cbee59d5058a41df39064360641f3a3895380215eb1e76cc181aa211071`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 6.7 MB (6723379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505279984ca7f23d65c578350e6e62883e47445ca63c893737b394d3c0e92997`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 94.5 KB (94459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74c9925d3c2a789e8f8fb895af2bdbeae4cb3f738c69e358f51c06affcc5935`  
		Last Modified: Thu, 02 Jul 2026 02:34:16 GMT  
		Size: 115.7 MB (115724685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd1673b464c80ff2a0b9b11c6693b405c75a35b5fd83a783241cb2a92ac7f5`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:e010e23ef0df33115afa8e9d6ab85893a475daf79fabdd2a357cd49ce9a5c957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18582004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e309ab4e00240aea4b5639a9475d129159d675985b01bd150ca2653c828293cd`

```dockerfile
```

-	Layers:
	-	`sha256:b28488cd738985a6bb468aa7d5bbc19c133511c6df94e1479f4afb128aecb8b7`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 18.6 MB (18567259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a3c1b9839596a105e69e6a64f33f2f429593ff4eccdd09bd131917e2447f94e`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 14.7 KB (14745 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:f2684c9e383c5cebb950250227ec275fac2c353f45f7fc53b6ebfa5c49698f06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:5356c2a069bf4cbc23b1cb95314a9fa4b77699a38cbb52a5a11eebd9576957db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158210090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b1c2b2d4ced58bef05e7b200cec1824f3f05ea715d75737007add5af39fce5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:33:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:24 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d19762b182a49ab0994b35d750697254a3b742ff8927291ac49b68edb9b5ac`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 684.2 KB (684190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40f630f7895264cadcef82226739a2dcc268702646bdbd37b5e8218b8a49333`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 6.7 MB (6708430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc621ca26f7ca93b0e67ec42931619f6f4a840f02bec94059c6284748bcc05a1`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 94.4 KB (94397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362425c4502b31b871a17760dfa3c0522ab6ddda11fec1f17362fb5d3f0c7fa4`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 121.0 MB (120987274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdbc569c9ef1d656828a3f7861334e730d4d0a84c203ff82b8016aa8680e102`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:ca452bb4c3709d208acf653c93cecfe1df9f24f92801b874051c6bf1314ce42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18607869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045bfa1648689a61c4c31600ab7356e0b259caa56a3101a50cd26292bc227967`

```dockerfile
```

-	Layers:
	-	`sha256:7d928d0eca4f92e969cc305c50a53f62b9ebc884e8fcfa222f771f680d89686d`  
		Last Modified: Thu, 02 Jul 2026 02:34:51 GMT  
		Size: 18.6 MB (18593248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def5516d7621347766a45a14ed8f71bdd267976f6d4a891518b3de4fc7fb3a1b`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c4ad2926b850cc5f6b74967b153561ead272be6141e0eadee3b998118fcf9b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.1 MB (152111203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403af768c852df0c70835cf4b8361ab86a46a82e886c01e5116a36bdbab23abb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:06 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:45 GMT
ENV ROS_DISTRO=kilted
# Thu, 02 Jul 2026 02:33:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d85673ed3b6ede30853b78cf9b200a12ed710093528bc7ea97cc227d7968fdc`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 684.3 KB (684305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc3cbee59d5058a41df39064360641f3a3895380215eb1e76cc181aa211071`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 6.7 MB (6723379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505279984ca7f23d65c578350e6e62883e47445ca63c893737b394d3c0e92997`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 94.5 KB (94459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74c9925d3c2a789e8f8fb895af2bdbeae4cb3f738c69e358f51c06affcc5935`  
		Last Modified: Thu, 02 Jul 2026 02:34:16 GMT  
		Size: 115.7 MB (115724685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbd1673b464c80ff2a0b9b11c6693b405c75a35b5fd83a783241cb2a92ac7f5`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:e010e23ef0df33115afa8e9d6ab85893a475daf79fabdd2a357cd49ce9a5c957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18582004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e309ab4e00240aea4b5639a9475d129159d675985b01bd150ca2653c828293cd`

```dockerfile
```

-	Layers:
	-	`sha256:b28488cd738985a6bb468aa7d5bbc19c133511c6df94e1479f4afb128aecb8b7`  
		Last Modified: Thu, 02 Jul 2026 02:34:14 GMT  
		Size: 18.6 MB (18567259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a3c1b9839596a105e69e6a64f33f2f429593ff4eccdd09bd131917e2447f94e`  
		Last Modified: Thu, 02 Jul 2026 02:34:13 GMT  
		Size: 14.7 KB (14745 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:2f1b98f3e2cc3beaefd6330105523db9192aef4a3b11e6a81cfb9d98e2560cb9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:8734a98f31c79c28e103cc6c254cb300d412db72932eca137cb66ea5376a5228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339771584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060b51a37c5d4be5aef89c58213618af6cfae2bfa55b7c883f599f48430aaa5e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:34:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:12 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdb96c607eac0d6142ca3293ab5b7bed4eb6ce7de067271e60f09dbf77680b`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 741.0 KB (740957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ed28f72b597692a4c25bb0e01952a3a5b1d761dc36755a19e9140bf057945`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 9.8 MB (9783212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3893258956ed7714133a447501ba84aed413e2eca404510bba0506aceb7efb4`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 90.1 KB (90088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c7f634d4e52771282e5f1623ac87c298623d077d9f8d214c06883574a2fd4`  
		Last Modified: Thu, 02 Jul 2026 02:36:00 GMT  
		Size: 136.5 MB (136512200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d82950ecf712510c8b60126d5613094eab79772ff0328f317b326350f9ce96`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5045a50b28acc24ff1fd9719557c7125a47f9d7dd02b91f3b13d06757bddff63`  
		Last Modified: Thu, 02 Jul 2026 05:35:28 GMT  
		Size: 124.9 MB (124865475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d360de545e47fba20218064a02828ece63fa1963783d9cba66a488dfa3730db2`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 375.0 KB (374994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170ec38f9401b18dac1d65c392b8f0e63e95dbc5744cf90e5ba26e1f9e53119a`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 130.8 KB (130816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4608a862f55c862233471abcf262b88e730922e8aa60b228fef22ab17a5a4428`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 25.7 MB (25710998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:8d33c17efcf47fd2810cf98f727dbd63ce772805ac519990756c8dd2294b26c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6823de028383bb3cfb931e5e34a9f9868677233bb0933f732f6d4f9ff3c367`

```dockerfile
```

-	Layers:
	-	`sha256:68d8d0c7b1d210ee4325683215aad68f66e8a97b3d1f67cf7cc167e726898221`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 29.1 MB (29124291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:981d694f00d5c42a978c6cf02f48667425ec1834c6f54882ae86eee5eb71ffc1`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2c9f84f83aad5b8bb9d773d31911e66eea5433c029271e4a03156d296121b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324525209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93972f32b489a7887de6c6b08da82d8b039ae265478c5319007293e0b86c9431`
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
# Thu, 02 Jul 2026 02:33:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:17 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:21 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:10 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:626696581b38b06089ee1ec6cc19090ab5ac43f51f8200d35a7b349ec56dc571`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 741.9 KB (741892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1dd0c484f6c03140c2e73d372209870603319f4cb8f3ce1adf34f57a367d5`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 9.6 MB (9606695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab401800088f8c10040799e4cf1f4aba94479b449535f15a179602a3b7a5dc`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 91.1 KB (91053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3697155616b70d3ff57250048b2f9f702bca81ee2f113bbae86e90a1917d7f`  
		Last Modified: Thu, 02 Jul 2026 02:34:52 GMT  
		Size: 129.9 MB (129930248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd523b26db897d76251972357d5637968b7855e7c28c5bf4f2d420ed056664`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10bdc05f8dee4859396ad34c1ba71452757d3e183d1fb754b37514b6cbd524e`  
		Last Modified: Thu, 02 Jul 2026 05:36:43 GMT  
		Size: 118.3 MB (118275970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579d74dff0b1b79bee886bb2b9d254de352998e0ed3639f054ad91c704645f8`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 375.0 KB (374998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bc3b1911f7dde1a0bab867acedc8fe7924b59f4a4cc32756b904bb076e9155`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d248b91dadfad51e26c99d47ad8dc07da6b9676e293ad5d837070094f9d9aacb`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 24.7 MB (24661200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:182e1ff2a198b590f9157f99c50c15d7200f55fae1b35c6c752b7216c8205381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c119c7e41f1e64c3313473a29fefd7a0042ac59102d3cf4f87c9af2be8d801`

```dockerfile
```

-	Layers:
	-	`sha256:6db621d90e222157f2f25bfdb6105ed14abd0169a2e5795b7b4f93662fbbf306`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 29.2 MB (29188923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05407da8fab978b6c25e008fccf91b4a5df2b6a9c3eb8e5db3b8ae907b37a873`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:2f1b98f3e2cc3beaefd6330105523db9192aef4a3b11e6a81cfb9d98e2560cb9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:8734a98f31c79c28e103cc6c254cb300d412db72932eca137cb66ea5376a5228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339771584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060b51a37c5d4be5aef89c58213618af6cfae2bfa55b7c883f599f48430aaa5e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:34:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:12 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdb96c607eac0d6142ca3293ab5b7bed4eb6ce7de067271e60f09dbf77680b`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 741.0 KB (740957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ed28f72b597692a4c25bb0e01952a3a5b1d761dc36755a19e9140bf057945`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 9.8 MB (9783212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3893258956ed7714133a447501ba84aed413e2eca404510bba0506aceb7efb4`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 90.1 KB (90088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c7f634d4e52771282e5f1623ac87c298623d077d9f8d214c06883574a2fd4`  
		Last Modified: Thu, 02 Jul 2026 02:36:00 GMT  
		Size: 136.5 MB (136512200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d82950ecf712510c8b60126d5613094eab79772ff0328f317b326350f9ce96`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5045a50b28acc24ff1fd9719557c7125a47f9d7dd02b91f3b13d06757bddff63`  
		Last Modified: Thu, 02 Jul 2026 05:35:28 GMT  
		Size: 124.9 MB (124865475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d360de545e47fba20218064a02828ece63fa1963783d9cba66a488dfa3730db2`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 375.0 KB (374994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170ec38f9401b18dac1d65c392b8f0e63e95dbc5744cf90e5ba26e1f9e53119a`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 130.8 KB (130816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4608a862f55c862233471abcf262b88e730922e8aa60b228fef22ab17a5a4428`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 25.7 MB (25710998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:8d33c17efcf47fd2810cf98f727dbd63ce772805ac519990756c8dd2294b26c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6823de028383bb3cfb931e5e34a9f9868677233bb0933f732f6d4f9ff3c367`

```dockerfile
```

-	Layers:
	-	`sha256:68d8d0c7b1d210ee4325683215aad68f66e8a97b3d1f67cf7cc167e726898221`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 29.1 MB (29124291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:981d694f00d5c42a978c6cf02f48667425ec1834c6f54882ae86eee5eb71ffc1`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2c9f84f83aad5b8bb9d773d31911e66eea5433c029271e4a03156d296121b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324525209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93972f32b489a7887de6c6b08da82d8b039ae265478c5319007293e0b86c9431`
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
# Thu, 02 Jul 2026 02:33:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:17 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:21 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:10 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:626696581b38b06089ee1ec6cc19090ab5ac43f51f8200d35a7b349ec56dc571`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 741.9 KB (741892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1dd0c484f6c03140c2e73d372209870603319f4cb8f3ce1adf34f57a367d5`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 9.6 MB (9606695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab401800088f8c10040799e4cf1f4aba94479b449535f15a179602a3b7a5dc`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 91.1 KB (91053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3697155616b70d3ff57250048b2f9f702bca81ee2f113bbae86e90a1917d7f`  
		Last Modified: Thu, 02 Jul 2026 02:34:52 GMT  
		Size: 129.9 MB (129930248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd523b26db897d76251972357d5637968b7855e7c28c5bf4f2d420ed056664`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10bdc05f8dee4859396ad34c1ba71452757d3e183d1fb754b37514b6cbd524e`  
		Last Modified: Thu, 02 Jul 2026 05:36:43 GMT  
		Size: 118.3 MB (118275970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579d74dff0b1b79bee886bb2b9d254de352998e0ed3639f054ad91c704645f8`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 375.0 KB (374998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bc3b1911f7dde1a0bab867acedc8fe7924b59f4a4cc32756b904bb076e9155`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d248b91dadfad51e26c99d47ad8dc07da6b9676e293ad5d837070094f9d9aacb`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 24.7 MB (24661200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:182e1ff2a198b590f9157f99c50c15d7200f55fae1b35c6c752b7216c8205381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c119c7e41f1e64c3313473a29fefd7a0042ac59102d3cf4f87c9af2be8d801`

```dockerfile
```

-	Layers:
	-	`sha256:6db621d90e222157f2f25bfdb6105ed14abd0169a2e5795b7b4f93662fbbf306`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 29.2 MB (29188923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05407da8fab978b6c25e008fccf91b4a5df2b6a9c3eb8e5db3b8ae907b37a873`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:49587c8da8434630831ca4963e2cfaeee9d4ffd761541ed57234bf92f7bf11bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:ea7895f1a2246c884967c2f0ccf824a2fb6870eb88fa119156f5a850c890d46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528274721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f096a8dc991ad326e48840c1e3833380598dd5c0e86794208bf9054f4226c90`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:34:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:12 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdb96c607eac0d6142ca3293ab5b7bed4eb6ce7de067271e60f09dbf77680b`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 741.0 KB (740957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ed28f72b597692a4c25bb0e01952a3a5b1d761dc36755a19e9140bf057945`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 9.8 MB (9783212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3893258956ed7714133a447501ba84aed413e2eca404510bba0506aceb7efb4`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 90.1 KB (90088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c7f634d4e52771282e5f1623ac87c298623d077d9f8d214c06883574a2fd4`  
		Last Modified: Thu, 02 Jul 2026 02:36:00 GMT  
		Size: 136.5 MB (136512200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d82950ecf712510c8b60126d5613094eab79772ff0328f317b326350f9ce96`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5045a50b28acc24ff1fd9719557c7125a47f9d7dd02b91f3b13d06757bddff63`  
		Last Modified: Thu, 02 Jul 2026 05:35:28 GMT  
		Size: 124.9 MB (124865475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d360de545e47fba20218064a02828ece63fa1963783d9cba66a488dfa3730db2`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 375.0 KB (374994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170ec38f9401b18dac1d65c392b8f0e63e95dbc5744cf90e5ba26e1f9e53119a`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 130.8 KB (130816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4608a862f55c862233471abcf262b88e730922e8aa60b228fef22ab17a5a4428`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 25.7 MB (25710998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e64585dd8d87379f297f597c0c861fa0d45b1d50856a0f77470f3eb133a4695`  
		Last Modified: Thu, 02 Jul 2026 06:28:11 GMT  
		Size: 1.2 GB (1188503137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:3145e7f0b8a1c895fa1ee7aaa51753f7126ab7c53933212e97adf7eaaf2a49c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304fa5b9e49e7f5e342346f6ee56b6f203fb51050f61f5eab6663235b4ff29f7`

```dockerfile
```

-	Layers:
	-	`sha256:ae10523d3a8452cc1097cd312c9f7b42409ab3540250fdba2c22f9abab970bca`  
		Last Modified: Thu, 02 Jul 2026 06:27:51 GMT  
		Size: 64.3 MB (64334748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24abff9ef532978a58dc258aeade93742872db4256779bdda31e7ae5e136d887`  
		Last Modified: Thu, 02 Jul 2026 06:27:47 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:93903b153ddd49924dcc898da7bb42e0b7ffd8b516eddf385c262f2ded4314a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471600922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5daf6a0747661d9725eb0b82e6210eb455bb53153d017940646ffda2d60857`
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
# Thu, 02 Jul 2026 02:33:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:17 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:21 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:10 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:626696581b38b06089ee1ec6cc19090ab5ac43f51f8200d35a7b349ec56dc571`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 741.9 KB (741892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1dd0c484f6c03140c2e73d372209870603319f4cb8f3ce1adf34f57a367d5`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 9.6 MB (9606695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab401800088f8c10040799e4cf1f4aba94479b449535f15a179602a3b7a5dc`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 91.1 KB (91053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3697155616b70d3ff57250048b2f9f702bca81ee2f113bbae86e90a1917d7f`  
		Last Modified: Thu, 02 Jul 2026 02:34:52 GMT  
		Size: 129.9 MB (129930248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd523b26db897d76251972357d5637968b7855e7c28c5bf4f2d420ed056664`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10bdc05f8dee4859396ad34c1ba71452757d3e183d1fb754b37514b6cbd524e`  
		Last Modified: Thu, 02 Jul 2026 05:36:43 GMT  
		Size: 118.3 MB (118275970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579d74dff0b1b79bee886bb2b9d254de352998e0ed3639f054ad91c704645f8`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 375.0 KB (374998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bc3b1911f7dde1a0bab867acedc8fe7924b59f4a4cc32756b904bb076e9155`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d248b91dadfad51e26c99d47ad8dc07da6b9676e293ad5d837070094f9d9aacb`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 24.7 MB (24661200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8896831682f26c8bd179c387e69cf15400158b3ec426f130f890f25a2aa85ca7`  
		Last Modified: Thu, 02 Jul 2026 06:26:30 GMT  
		Size: 1.1 GB (1147075713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5037325127bf63435f6cb29a4d63d14d2855aa1a785c1901a9bcae6f89eb39da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64258739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d39f7fb4f58ab5c49c86b072bfe657cb6dda1232e623847f30f8a0859a6d9e`

```dockerfile
```

-	Layers:
	-	`sha256:1ea6d5b576fe561ff6a9810663767e8af12416eb6466f0b42f34fd190abf1525`  
		Last Modified: Thu, 02 Jul 2026 06:26:10 GMT  
		Size: 64.2 MB (64248966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44e503ef0aad335c498cdbb81f120a18a96628945c2c5195d86d8ec9c4bfc3a2`  
		Last Modified: Thu, 02 Jul 2026 06:26:06 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:49587c8da8434630831ca4963e2cfaeee9d4ffd761541ed57234bf92f7bf11bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:ea7895f1a2246c884967c2f0ccf824a2fb6870eb88fa119156f5a850c890d46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528274721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f096a8dc991ad326e48840c1e3833380598dd5c0e86794208bf9054f4226c90`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:34:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:12 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdb96c607eac0d6142ca3293ab5b7bed4eb6ce7de067271e60f09dbf77680b`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 741.0 KB (740957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ed28f72b597692a4c25bb0e01952a3a5b1d761dc36755a19e9140bf057945`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 9.8 MB (9783212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3893258956ed7714133a447501ba84aed413e2eca404510bba0506aceb7efb4`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 90.1 KB (90088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c7f634d4e52771282e5f1623ac87c298623d077d9f8d214c06883574a2fd4`  
		Last Modified: Thu, 02 Jul 2026 02:36:00 GMT  
		Size: 136.5 MB (136512200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d82950ecf712510c8b60126d5613094eab79772ff0328f317b326350f9ce96`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5045a50b28acc24ff1fd9719557c7125a47f9d7dd02b91f3b13d06757bddff63`  
		Last Modified: Thu, 02 Jul 2026 05:35:28 GMT  
		Size: 124.9 MB (124865475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d360de545e47fba20218064a02828ece63fa1963783d9cba66a488dfa3730db2`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 375.0 KB (374994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170ec38f9401b18dac1d65c392b8f0e63e95dbc5744cf90e5ba26e1f9e53119a`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 130.8 KB (130816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4608a862f55c862233471abcf262b88e730922e8aa60b228fef22ab17a5a4428`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 25.7 MB (25710998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e64585dd8d87379f297f597c0c861fa0d45b1d50856a0f77470f3eb133a4695`  
		Last Modified: Thu, 02 Jul 2026 06:28:11 GMT  
		Size: 1.2 GB (1188503137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3145e7f0b8a1c895fa1ee7aaa51753f7126ab7c53933212e97adf7eaaf2a49c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304fa5b9e49e7f5e342346f6ee56b6f203fb51050f61f5eab6663235b4ff29f7`

```dockerfile
```

-	Layers:
	-	`sha256:ae10523d3a8452cc1097cd312c9f7b42409ab3540250fdba2c22f9abab970bca`  
		Last Modified: Thu, 02 Jul 2026 06:27:51 GMT  
		Size: 64.3 MB (64334748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24abff9ef532978a58dc258aeade93742872db4256779bdda31e7ae5e136d887`  
		Last Modified: Thu, 02 Jul 2026 06:27:47 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:93903b153ddd49924dcc898da7bb42e0b7ffd8b516eddf385c262f2ded4314a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471600922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5daf6a0747661d9725eb0b82e6210eb455bb53153d017940646ffda2d60857`
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
# Thu, 02 Jul 2026 02:33:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:17 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:21 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:10 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:626696581b38b06089ee1ec6cc19090ab5ac43f51f8200d35a7b349ec56dc571`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 741.9 KB (741892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1dd0c484f6c03140c2e73d372209870603319f4cb8f3ce1adf34f57a367d5`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 9.6 MB (9606695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab401800088f8c10040799e4cf1f4aba94479b449535f15a179602a3b7a5dc`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 91.1 KB (91053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3697155616b70d3ff57250048b2f9f702bca81ee2f113bbae86e90a1917d7f`  
		Last Modified: Thu, 02 Jul 2026 02:34:52 GMT  
		Size: 129.9 MB (129930248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd523b26db897d76251972357d5637968b7855e7c28c5bf4f2d420ed056664`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10bdc05f8dee4859396ad34c1ba71452757d3e183d1fb754b37514b6cbd524e`  
		Last Modified: Thu, 02 Jul 2026 05:36:43 GMT  
		Size: 118.3 MB (118275970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579d74dff0b1b79bee886bb2b9d254de352998e0ed3639f054ad91c704645f8`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 375.0 KB (374998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bc3b1911f7dde1a0bab867acedc8fe7924b59f4a4cc32756b904bb076e9155`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d248b91dadfad51e26c99d47ad8dc07da6b9676e293ad5d837070094f9d9aacb`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 24.7 MB (24661200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8896831682f26c8bd179c387e69cf15400158b3ec426f130f890f25a2aa85ca7`  
		Last Modified: Thu, 02 Jul 2026 06:26:30 GMT  
		Size: 1.1 GB (1147075713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:5037325127bf63435f6cb29a4d63d14d2855aa1a785c1901a9bcae6f89eb39da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64258739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d39f7fb4f58ab5c49c86b072bfe657cb6dda1232e623847f30f8a0859a6d9e`

```dockerfile
```

-	Layers:
	-	`sha256:1ea6d5b576fe561ff6a9810663767e8af12416eb6466f0b42f34fd190abf1525`  
		Last Modified: Thu, 02 Jul 2026 06:26:10 GMT  
		Size: 64.2 MB (64248966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44e503ef0aad335c498cdbb81f120a18a96628945c2c5195d86d8ec9c4bfc3a2`  
		Last Modified: Thu, 02 Jul 2026 06:26:06 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:2f1b98f3e2cc3beaefd6330105523db9192aef4a3b11e6a81cfb9d98e2560cb9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:8734a98f31c79c28e103cc6c254cb300d412db72932eca137cb66ea5376a5228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339771584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060b51a37c5d4be5aef89c58213618af6cfae2bfa55b7c883f599f48430aaa5e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:34:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:12 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdb96c607eac0d6142ca3293ab5b7bed4eb6ce7de067271e60f09dbf77680b`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 741.0 KB (740957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ed28f72b597692a4c25bb0e01952a3a5b1d761dc36755a19e9140bf057945`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 9.8 MB (9783212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3893258956ed7714133a447501ba84aed413e2eca404510bba0506aceb7efb4`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 90.1 KB (90088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c7f634d4e52771282e5f1623ac87c298623d077d9f8d214c06883574a2fd4`  
		Last Modified: Thu, 02 Jul 2026 02:36:00 GMT  
		Size: 136.5 MB (136512200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d82950ecf712510c8b60126d5613094eab79772ff0328f317b326350f9ce96`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5045a50b28acc24ff1fd9719557c7125a47f9d7dd02b91f3b13d06757bddff63`  
		Last Modified: Thu, 02 Jul 2026 05:35:28 GMT  
		Size: 124.9 MB (124865475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d360de545e47fba20218064a02828ece63fa1963783d9cba66a488dfa3730db2`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 375.0 KB (374994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170ec38f9401b18dac1d65c392b8f0e63e95dbc5744cf90e5ba26e1f9e53119a`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 130.8 KB (130816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4608a862f55c862233471abcf262b88e730922e8aa60b228fef22ab17a5a4428`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 25.7 MB (25710998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:8d33c17efcf47fd2810cf98f727dbd63ce772805ac519990756c8dd2294b26c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6823de028383bb3cfb931e5e34a9f9868677233bb0933f732f6d4f9ff3c367`

```dockerfile
```

-	Layers:
	-	`sha256:68d8d0c7b1d210ee4325683215aad68f66e8a97b3d1f67cf7cc167e726898221`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 29.1 MB (29124291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:981d694f00d5c42a978c6cf02f48667425ec1834c6f54882ae86eee5eb71ffc1`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2c9f84f83aad5b8bb9d773d31911e66eea5433c029271e4a03156d296121b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324525209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93972f32b489a7887de6c6b08da82d8b039ae265478c5319007293e0b86c9431`
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
# Thu, 02 Jul 2026 02:33:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:17 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:21 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:10 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:626696581b38b06089ee1ec6cc19090ab5ac43f51f8200d35a7b349ec56dc571`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 741.9 KB (741892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1dd0c484f6c03140c2e73d372209870603319f4cb8f3ce1adf34f57a367d5`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 9.6 MB (9606695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab401800088f8c10040799e4cf1f4aba94479b449535f15a179602a3b7a5dc`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 91.1 KB (91053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3697155616b70d3ff57250048b2f9f702bca81ee2f113bbae86e90a1917d7f`  
		Last Modified: Thu, 02 Jul 2026 02:34:52 GMT  
		Size: 129.9 MB (129930248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd523b26db897d76251972357d5637968b7855e7c28c5bf4f2d420ed056664`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10bdc05f8dee4859396ad34c1ba71452757d3e183d1fb754b37514b6cbd524e`  
		Last Modified: Thu, 02 Jul 2026 05:36:43 GMT  
		Size: 118.3 MB (118275970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579d74dff0b1b79bee886bb2b9d254de352998e0ed3639f054ad91c704645f8`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 375.0 KB (374998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bc3b1911f7dde1a0bab867acedc8fe7924b59f4a4cc32756b904bb076e9155`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d248b91dadfad51e26c99d47ad8dc07da6b9676e293ad5d837070094f9d9aacb`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 24.7 MB (24661200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:182e1ff2a198b590f9157f99c50c15d7200f55fae1b35c6c752b7216c8205381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c119c7e41f1e64c3313473a29fefd7a0042ac59102d3cf4f87c9af2be8d801`

```dockerfile
```

-	Layers:
	-	`sha256:6db621d90e222157f2f25bfdb6105ed14abd0169a2e5795b7b4f93662fbbf306`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 29.2 MB (29188923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05407da8fab978b6c25e008fccf91b4a5df2b6a9c3eb8e5db3b8ae907b37a873`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:2f1b98f3e2cc3beaefd6330105523db9192aef4a3b11e6a81cfb9d98e2560cb9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:8734a98f31c79c28e103cc6c254cb300d412db72932eca137cb66ea5376a5228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339771584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060b51a37c5d4be5aef89c58213618af6cfae2bfa55b7c883f599f48430aaa5e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:34:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:12 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:34:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:34:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdb96c607eac0d6142ca3293ab5b7bed4eb6ce7de067271e60f09dbf77680b`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 741.0 KB (740957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ed28f72b597692a4c25bb0e01952a3a5b1d761dc36755a19e9140bf057945`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 9.8 MB (9783212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3893258956ed7714133a447501ba84aed413e2eca404510bba0506aceb7efb4`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 90.1 KB (90088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c7f634d4e52771282e5f1623ac87c298623d077d9f8d214c06883574a2fd4`  
		Last Modified: Thu, 02 Jul 2026 02:36:00 GMT  
		Size: 136.5 MB (136512200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d82950ecf712510c8b60126d5613094eab79772ff0328f317b326350f9ce96`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5045a50b28acc24ff1fd9719557c7125a47f9d7dd02b91f3b13d06757bddff63`  
		Last Modified: Thu, 02 Jul 2026 05:35:28 GMT  
		Size: 124.9 MB (124865475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d360de545e47fba20218064a02828ece63fa1963783d9cba66a488dfa3730db2`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 375.0 KB (374994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170ec38f9401b18dac1d65c392b8f0e63e95dbc5744cf90e5ba26e1f9e53119a`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 130.8 KB (130816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4608a862f55c862233471abcf262b88e730922e8aa60b228fef22ab17a5a4428`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 25.7 MB (25710998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:8d33c17efcf47fd2810cf98f727dbd63ce772805ac519990756c8dd2294b26c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6823de028383bb3cfb931e5e34a9f9868677233bb0933f732f6d4f9ff3c367`

```dockerfile
```

-	Layers:
	-	`sha256:68d8d0c7b1d210ee4325683215aad68f66e8a97b3d1f67cf7cc167e726898221`  
		Last Modified: Thu, 02 Jul 2026 05:35:26 GMT  
		Size: 29.1 MB (29124291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:981d694f00d5c42a978c6cf02f48667425ec1834c6f54882ae86eee5eb71ffc1`  
		Last Modified: Thu, 02 Jul 2026 05:35:24 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2c9f84f83aad5b8bb9d773d31911e66eea5433c029271e4a03156d296121b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324525209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93972f32b489a7887de6c6b08da82d8b039ae265478c5319007293e0b86c9431`
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
# Thu, 02 Jul 2026 02:33:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:17 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:21 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:10 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:626696581b38b06089ee1ec6cc19090ab5ac43f51f8200d35a7b349ec56dc571`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 741.9 KB (741892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1dd0c484f6c03140c2e73d372209870603319f4cb8f3ce1adf34f57a367d5`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 9.6 MB (9606695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab401800088f8c10040799e4cf1f4aba94479b449535f15a179602a3b7a5dc`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 91.1 KB (91053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3697155616b70d3ff57250048b2f9f702bca81ee2f113bbae86e90a1917d7f`  
		Last Modified: Thu, 02 Jul 2026 02:34:52 GMT  
		Size: 129.9 MB (129930248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd523b26db897d76251972357d5637968b7855e7c28c5bf4f2d420ed056664`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10bdc05f8dee4859396ad34c1ba71452757d3e183d1fb754b37514b6cbd524e`  
		Last Modified: Thu, 02 Jul 2026 05:36:43 GMT  
		Size: 118.3 MB (118275970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579d74dff0b1b79bee886bb2b9d254de352998e0ed3639f054ad91c704645f8`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 375.0 KB (374998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bc3b1911f7dde1a0bab867acedc8fe7924b59f4a4cc32756b904bb076e9155`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 130.8 KB (130805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d248b91dadfad51e26c99d47ad8dc07da6b9676e293ad5d837070094f9d9aacb`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 24.7 MB (24661200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:182e1ff2a198b590f9157f99c50c15d7200f55fae1b35c6c752b7216c8205381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c119c7e41f1e64c3313473a29fefd7a0042ac59102d3cf4f87c9af2be8d801`

```dockerfile
```

-	Layers:
	-	`sha256:6db621d90e222157f2f25bfdb6105ed14abd0169a2e5795b7b4f93662fbbf306`  
		Last Modified: Thu, 02 Jul 2026 05:36:41 GMT  
		Size: 29.2 MB (29188923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05407da8fab978b6c25e008fccf91b4a5df2b6a9c3eb8e5db3b8ae907b37a873`  
		Last Modified: Thu, 02 Jul 2026 05:36:39 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:47d28598fa646e726a9c56dd57094abd0ba062daca114ac271b920a00d95d718
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:70e770ca2b13543c5dce6e9558144fafe245ea875f03e94f42081f58f33b279e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188689301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063712979dbffb31eb481480fd7aa9b1d11bf21c7a4549d15ed4a1efbba53b96`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:34:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdb96c607eac0d6142ca3293ab5b7bed4eb6ce7de067271e60f09dbf77680b`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 741.0 KB (740957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ed28f72b597692a4c25bb0e01952a3a5b1d761dc36755a19e9140bf057945`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 9.8 MB (9783212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3893258956ed7714133a447501ba84aed413e2eca404510bba0506aceb7efb4`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 90.1 KB (90088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c7f634d4e52771282e5f1623ac87c298623d077d9f8d214c06883574a2fd4`  
		Last Modified: Thu, 02 Jul 2026 02:36:00 GMT  
		Size: 136.5 MB (136512200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d82950ecf712510c8b60126d5613094eab79772ff0328f317b326350f9ce96`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:712109dfda8fa386fa884a0a3de348dfdeb73f5cd8f66de6bdd1f2abc9532665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22743835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d042658c2f8c4acb599bb3e472acbfcc659e70e0f565965621ca80c5558f44`

```dockerfile
```

-	Layers:
	-	`sha256:bfe3f637ef26806394b007ee4409db4a132563012fd15d9d113bea5648867af9`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 22.7 MB (22728252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09589f0ba791407a40eec02d7f553d927a6ab6fd977d3f77a3ee6205adb4fc7f`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:55206ef30e3ad960fc2af800c10663f2b44bc86f25a6c428bcfd54a72f1cdba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181082236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faada70a4d0fae1d2d1dc7fefaf2697d90186712f1f2a8e90717593835ee2412`
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
# Thu, 02 Jul 2026 02:33:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:17 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:21 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:10 GMT
CMD ["bash"]
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
	-	`sha256:626696581b38b06089ee1ec6cc19090ab5ac43f51f8200d35a7b349ec56dc571`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 741.9 KB (741892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1dd0c484f6c03140c2e73d372209870603319f4cb8f3ce1adf34f57a367d5`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 9.6 MB (9606695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab401800088f8c10040799e4cf1f4aba94479b449535f15a179602a3b7a5dc`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 91.1 KB (91053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3697155616b70d3ff57250048b2f9f702bca81ee2f113bbae86e90a1917d7f`  
		Last Modified: Thu, 02 Jul 2026 02:34:52 GMT  
		Size: 129.9 MB (129930248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd523b26db897d76251972357d5637968b7855e7c28c5bf4f2d420ed056664`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:e3b654407468fa2e7ac68fdbbdfa042ed3e20b9949e01af70e1734a09955faa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22716651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b814f02be46776d9f21de30cf29a85b02fdfaedd58e46c4201910e979ecb9146`

```dockerfile
```

-	Layers:
	-	`sha256:2eac0f270cb49c0ce9c193fe21285839048393c72e6d75a5739b2fd41b12d4e6`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 22.7 MB (22700944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb69d8a047605fe272d5a1a00bb33889bb9a31175c19662ea0ce0cd212658149`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 15.7 KB (15707 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:47d28598fa646e726a9c56dd57094abd0ba062daca114ac271b920a00d95d718
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:70e770ca2b13543c5dce6e9558144fafe245ea875f03e94f42081f58f33b279e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188689301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063712979dbffb31eb481480fd7aa9b1d11bf21c7a4549d15ed4a1efbba53b96`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 02 Jul 2026 02:34:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:35:12 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:35:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:35:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdb96c607eac0d6142ca3293ab5b7bed4eb6ce7de067271e60f09dbf77680b`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 741.0 KB (740957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ed28f72b597692a4c25bb0e01952a3a5b1d761dc36755a19e9140bf057945`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 9.8 MB (9783212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3893258956ed7714133a447501ba84aed413e2eca404510bba0506aceb7efb4`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 90.1 KB (90088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c7f634d4e52771282e5f1623ac87c298623d077d9f8d214c06883574a2fd4`  
		Last Modified: Thu, 02 Jul 2026 02:36:00 GMT  
		Size: 136.5 MB (136512200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d82950ecf712510c8b60126d5613094eab79772ff0328f317b326350f9ce96`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:712109dfda8fa386fa884a0a3de348dfdeb73f5cd8f66de6bdd1f2abc9532665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22743835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d042658c2f8c4acb599bb3e472acbfcc659e70e0f565965621ca80c5558f44`

```dockerfile
```

-	Layers:
	-	`sha256:bfe3f637ef26806394b007ee4409db4a132563012fd15d9d113bea5648867af9`  
		Last Modified: Thu, 02 Jul 2026 02:35:57 GMT  
		Size: 22.7 MB (22728252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09589f0ba791407a40eec02d7f553d927a6ab6fd977d3f77a3ee6205adb4fc7f`  
		Last Modified: Thu, 02 Jul 2026 02:35:56 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:55206ef30e3ad960fc2af800c10663f2b44bc86f25a6c428bcfd54a72f1cdba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181082236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faada70a4d0fae1d2d1dc7fefaf2697d90186712f1f2a8e90717593835ee2412`
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
# Thu, 02 Jul 2026 02:33:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:17 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:21 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:34:10 GMT
ENV ROS_DISTRO=lyrical
# Thu, 02 Jul 2026 02:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:34:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:34:10 GMT
CMD ["bash"]
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
	-	`sha256:626696581b38b06089ee1ec6cc19090ab5ac43f51f8200d35a7b349ec56dc571`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 741.9 KB (741892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1dd0c484f6c03140c2e73d372209870603319f4cb8f3ce1adf34f57a367d5`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 9.6 MB (9606695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab401800088f8c10040799e4cf1f4aba94479b449535f15a179602a3b7a5dc`  
		Last Modified: Thu, 02 Jul 2026 02:34:49 GMT  
		Size: 91.1 KB (91053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3697155616b70d3ff57250048b2f9f702bca81ee2f113bbae86e90a1917d7f`  
		Last Modified: Thu, 02 Jul 2026 02:34:52 GMT  
		Size: 129.9 MB (129930248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd523b26db897d76251972357d5637968b7855e7c28c5bf4f2d420ed056664`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:e3b654407468fa2e7ac68fdbbdfa042ed3e20b9949e01af70e1734a09955faa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22716651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b814f02be46776d9f21de30cf29a85b02fdfaedd58e46c4201910e979ecb9146`

```dockerfile
```

-	Layers:
	-	`sha256:2eac0f270cb49c0ce9c193fe21285839048393c72e6d75a5739b2fd41b12d4e6`  
		Last Modified: Thu, 02 Jul 2026 02:34:50 GMT  
		Size: 22.7 MB (22700944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb69d8a047605fe272d5a1a00bb33889bb9a31175c19662ea0ce0cd212658149`  
		Last Modified: Thu, 02 Jul 2026 02:34:48 GMT  
		Size: 15.7 KB (15707 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:f8b0c9b0cf1662472fb30ab3908df7a1b0d95118763745df79d2630f5ebef963
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:033db4875c1f0a74fa4196794cc73a415a3753cb6d98c22911e30a655e437b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340173729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a5901d2f01ea04fcd0294d947e4184bfd1118265d58a49a2c1121cb36ff324`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 19:12:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:12:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 19:12:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 19:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5fd9588839ee4bc2f2f7339f4103407b539d441507d36fd83022dd8515fd1c`  
		Last Modified: Thu, 09 Jul 2026 19:14:09 GMT  
		Size: 124.9 MB (124864948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13a8947208478a3d32c53d7b5a1e32f4c350aea678b7178c8a3da1054210046`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 372.6 KB (372570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cbb2ab0adb18621da245c37fa87d097e66ac99bf9d32bb1351619fe5f0f952`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 130.9 KB (130871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fded9120bbd0dc0a4eadbc4e2ab72fb78b35d8eb45dcd7b909ce8870aa57d49f`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 25.8 MB (25793012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:d443d4d984d1d34e7a08ea193c67c958f81fd543ff51b2e3408c93d8943202d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29143019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a39ec3ae0517758a16a3ad5b885b30060c6fbbba6886433ab95d466b5d895`

```dockerfile
```

-	Layers:
	-	`sha256:c52671532078e8f81c64701f99bca12cd84ba4eece353143e2d6c06ebb709ef2`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 29.1 MB (29125861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae134644b1cae3fa877996ed8dbda9cd09c7f018fb9f36f338d4a5b34c6037e6`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4aa114255344f6dfd5313472d53675cb26e06d2589290afaf14c6df2a949a5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324870790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7e1078af623f1de3e08a9a709f3fe6906150fd8358aa48b75b59476293669c`
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

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:3ca6680d8c73661525708b2ff8fea5bb9d3187e5da06cd9ff8434d0b349d2d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29207775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dcfe6118f9110776d08ccbc76db26ae4e0fc8cb77d7c30b75b7ebe96994e11e`

```dockerfile
```

-	Layers:
	-	`sha256:f2b2113d2b124eda4140a4440d79c6a00516e949467e3c194d2fa4d002f4c733`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 29.2 MB (29190481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e802751654f182637a02428a7f64d3de2ea3695de58f6147d864929b405d519`  
		Last Modified: Thu, 09 Jul 2026 18:38:44 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:04a0128a52fe0909f1f3a6dbef81b1614cb3e2aaea1ca488d3ac0c9ef7653d48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:57341a4eee6c11bf96bb029758910310994e76711cf154fdae47e9c7d86130ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528660721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62be935af5ef31415e4d2789a9f1304f311bbceb6ee0cc467027ddff02a28e38`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 19:12:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:12:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 19:12:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 19:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 20:12:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5fd9588839ee4bc2f2f7339f4103407b539d441507d36fd83022dd8515fd1c`  
		Last Modified: Thu, 09 Jul 2026 19:14:09 GMT  
		Size: 124.9 MB (124864948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13a8947208478a3d32c53d7b5a1e32f4c350aea678b7178c8a3da1054210046`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 372.6 KB (372570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cbb2ab0adb18621da245c37fa87d097e66ac99bf9d32bb1351619fe5f0f952`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 130.9 KB (130871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fded9120bbd0dc0a4eadbc4e2ab72fb78b35d8eb45dcd7b909ce8870aa57d49f`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 25.8 MB (25793012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b082a4512306f73031746ec55467babf541fbc6058c04145d84b56de56c6a6f3`  
		Last Modified: Thu, 09 Jul 2026 20:17:17 GMT  
		Size: 1.2 GB (1188486992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:31648d2e500e1131aceca1fae495ab203900030edbe2bf88711b73a520e12523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64346433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8313c5419b2b6c929a4a3f7e25f517bffe39d956e52916d895d7d7fbd202a13`

```dockerfile
```

-	Layers:
	-	`sha256:1e40de53a1a5c00a4fbe1ac1b0b4f4a4e5236f435a7391e87d80fe766a7477ec`  
		Last Modified: Thu, 09 Jul 2026 20:16:59 GMT  
		Size: 64.3 MB (64336740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b2995763e5dff6debfb881dcbe31d9fb1892931fe393577c78b144cde73232e`  
		Last Modified: Thu, 09 Jul 2026 20:16:56 GMT  
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
$ docker pull ros@sha256:04a0128a52fe0909f1f3a6dbef81b1614cb3e2aaea1ca488d3ac0c9ef7653d48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:57341a4eee6c11bf96bb029758910310994e76711cf154fdae47e9c7d86130ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528660721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62be935af5ef31415e4d2789a9f1304f311bbceb6ee0cc467027ddff02a28e38`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 19:12:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:12:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 19:12:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 19:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 20:12:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5fd9588839ee4bc2f2f7339f4103407b539d441507d36fd83022dd8515fd1c`  
		Last Modified: Thu, 09 Jul 2026 19:14:09 GMT  
		Size: 124.9 MB (124864948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13a8947208478a3d32c53d7b5a1e32f4c350aea678b7178c8a3da1054210046`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 372.6 KB (372570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cbb2ab0adb18621da245c37fa87d097e66ac99bf9d32bb1351619fe5f0f952`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 130.9 KB (130871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fded9120bbd0dc0a4eadbc4e2ab72fb78b35d8eb45dcd7b909ce8870aa57d49f`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 25.8 MB (25793012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b082a4512306f73031746ec55467babf541fbc6058c04145d84b56de56c6a6f3`  
		Last Modified: Thu, 09 Jul 2026 20:17:17 GMT  
		Size: 1.2 GB (1188486992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:31648d2e500e1131aceca1fae495ab203900030edbe2bf88711b73a520e12523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64346433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8313c5419b2b6c929a4a3f7e25f517bffe39d956e52916d895d7d7fbd202a13`

```dockerfile
```

-	Layers:
	-	`sha256:1e40de53a1a5c00a4fbe1ac1b0b4f4a4e5236f435a7391e87d80fe766a7477ec`  
		Last Modified: Thu, 09 Jul 2026 20:16:59 GMT  
		Size: 64.3 MB (64336740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b2995763e5dff6debfb881dcbe31d9fb1892931fe393577c78b144cde73232e`  
		Last Modified: Thu, 09 Jul 2026 20:16:56 GMT  
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
$ docker pull ros@sha256:f8b0c9b0cf1662472fb30ab3908df7a1b0d95118763745df79d2630f5ebef963
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:033db4875c1f0a74fa4196794cc73a415a3753cb6d98c22911e30a655e437b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340173729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a5901d2f01ea04fcd0294d947e4184bfd1118265d58a49a2c1121cb36ff324`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 19:12:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:12:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 19:12:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 19:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5fd9588839ee4bc2f2f7339f4103407b539d441507d36fd83022dd8515fd1c`  
		Last Modified: Thu, 09 Jul 2026 19:14:09 GMT  
		Size: 124.9 MB (124864948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13a8947208478a3d32c53d7b5a1e32f4c350aea678b7178c8a3da1054210046`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 372.6 KB (372570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cbb2ab0adb18621da245c37fa87d097e66ac99bf9d32bb1351619fe5f0f952`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 130.9 KB (130871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fded9120bbd0dc0a4eadbc4e2ab72fb78b35d8eb45dcd7b909ce8870aa57d49f`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 25.8 MB (25793012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:d443d4d984d1d34e7a08ea193c67c958f81fd543ff51b2e3408c93d8943202d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29143019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a39ec3ae0517758a16a3ad5b885b30060c6fbbba6886433ab95d466b5d895`

```dockerfile
```

-	Layers:
	-	`sha256:c52671532078e8f81c64701f99bca12cd84ba4eece353143e2d6c06ebb709ef2`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 29.1 MB (29125861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae134644b1cae3fa877996ed8dbda9cd09c7f018fb9f36f338d4a5b34c6037e6`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4aa114255344f6dfd5313472d53675cb26e06d2589290afaf14c6df2a949a5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324870790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7e1078af623f1de3e08a9a709f3fe6906150fd8358aa48b75b59476293669c`
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

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:3ca6680d8c73661525708b2ff8fea5bb9d3187e5da06cd9ff8434d0b349d2d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29207775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dcfe6118f9110776d08ccbc76db26ae4e0fc8cb77d7c30b75b7ebe96994e11e`

```dockerfile
```

-	Layers:
	-	`sha256:f2b2113d2b124eda4140a4440d79c6a00516e949467e3c194d2fa4d002f4c733`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 29.2 MB (29190481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e802751654f182637a02428a7f64d3de2ea3695de58f6147d864929b405d519`  
		Last Modified: Thu, 09 Jul 2026 18:38:44 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:f8b0c9b0cf1662472fb30ab3908df7a1b0d95118763745df79d2630f5ebef963
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:033db4875c1f0a74fa4196794cc73a415a3753cb6d98c22911e30a655e437b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340173729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a5901d2f01ea04fcd0294d947e4184bfd1118265d58a49a2c1121cb36ff324`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 19:12:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:12:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 19:12:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 19:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5fd9588839ee4bc2f2f7339f4103407b539d441507d36fd83022dd8515fd1c`  
		Last Modified: Thu, 09 Jul 2026 19:14:09 GMT  
		Size: 124.9 MB (124864948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13a8947208478a3d32c53d7b5a1e32f4c350aea678b7178c8a3da1054210046`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 372.6 KB (372570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cbb2ab0adb18621da245c37fa87d097e66ac99bf9d32bb1351619fe5f0f952`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 130.9 KB (130871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fded9120bbd0dc0a4eadbc4e2ab72fb78b35d8eb45dcd7b909ce8870aa57d49f`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 25.8 MB (25793012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:d443d4d984d1d34e7a08ea193c67c958f81fd543ff51b2e3408c93d8943202d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29143019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a39ec3ae0517758a16a3ad5b885b30060c6fbbba6886433ab95d466b5d895`

```dockerfile
```

-	Layers:
	-	`sha256:c52671532078e8f81c64701f99bca12cd84ba4eece353143e2d6c06ebb709ef2`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 29.1 MB (29125861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae134644b1cae3fa877996ed8dbda9cd09c7f018fb9f36f338d4a5b34c6037e6`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4aa114255344f6dfd5313472d53675cb26e06d2589290afaf14c6df2a949a5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324870790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7e1078af623f1de3e08a9a709f3fe6906150fd8358aa48b75b59476293669c`
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

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3ca6680d8c73661525708b2ff8fea5bb9d3187e5da06cd9ff8434d0b349d2d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29207775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dcfe6118f9110776d08ccbc76db26ae4e0fc8cb77d7c30b75b7ebe96994e11e`

```dockerfile
```

-	Layers:
	-	`sha256:f2b2113d2b124eda4140a4440d79c6a00516e949467e3c194d2fa4d002f4c733`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 29.2 MB (29190481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e802751654f182637a02428a7f64d3de2ea3695de58f6147d864929b405d519`  
		Last Modified: Thu, 09 Jul 2026 18:38:44 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:94142b69faa4f681e8bf91e57c67627847a3c184bf7e68be7d89940e5732f582
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:383236b86d3744df5b5d9ee50602349013894eefa6fae14bfdf96c55d69df125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189012328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5952b0c35cb72dc578748f6c5cdee9f7d4534db0f9d4edfb9f113056037589`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:a72dfaa5e0feaaca146bed20a548266f8c71f3a4ab1372877075c1960e4d78a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22745448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a617106c3f643ed6ef7ff57f4755eb9c2d501e9f9ae795e13d857b1dd4a69a5`

```dockerfile
```

-	Layers:
	-	`sha256:9c280c15490fb72ac6b78441b55091c7144dcc20fddd9753973c296b213c1256`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 22.7 MB (22729769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a4d6224b58c1e38ad1108251d82a7ab8bf7b01d727a764181371cf11a2025b5`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3e8046cd2162ef4ecb07130e6728e9033076bf5a125b701acd3e7c4bf62109e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181352537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1ce973cd9b215acfb17102a32ce41965fd5b8acaf2c88b7ed181cda29b66c3`
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

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:0a248915ba5c99ca68fc4efeaa87b57d134cc380575e2963d0e1d21794481a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22718265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4190fc093b1b2abea7d7048084de4cfdc116e9b5c2e750bd286af2836237a6bd`

```dockerfile
```

-	Layers:
	-	`sha256:0006b207e6f1a1b333926df1328b8dc28fed7cda9437cf54b4f5caeb0c08ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 22.7 MB (22702461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eb081232de26357880948db0da8711234f2839183f88b4f1431c06398008656`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:94142b69faa4f681e8bf91e57c67627847a3c184bf7e68be7d89940e5732f582
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:383236b86d3744df5b5d9ee50602349013894eefa6fae14bfdf96c55d69df125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189012328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5952b0c35cb72dc578748f6c5cdee9f7d4534db0f9d4edfb9f113056037589`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:a72dfaa5e0feaaca146bed20a548266f8c71f3a4ab1372877075c1960e4d78a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22745448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a617106c3f643ed6ef7ff57f4755eb9c2d501e9f9ae795e13d857b1dd4a69a5`

```dockerfile
```

-	Layers:
	-	`sha256:9c280c15490fb72ac6b78441b55091c7144dcc20fddd9753973c296b213c1256`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 22.7 MB (22729769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a4d6224b58c1e38ad1108251d82a7ab8bf7b01d727a764181371cf11a2025b5`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3e8046cd2162ef4ecb07130e6728e9033076bf5a125b701acd3e7c4bf62109e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181352537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1ce973cd9b215acfb17102a32ce41965fd5b8acaf2c88b7ed181cda29b66c3`
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

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:0a248915ba5c99ca68fc4efeaa87b57d134cc380575e2963d0e1d21794481a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22718265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4190fc093b1b2abea7d7048084de4cfdc116e9b5c2e750bd286af2836237a6bd`

```dockerfile
```

-	Layers:
	-	`sha256:0006b207e6f1a1b333926df1328b8dc28fed7cda9437cf54b4f5caeb0c08ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 22.7 MB (22702461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eb081232de26357880948db0da8711234f2839183f88b4f1431c06398008656`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json
