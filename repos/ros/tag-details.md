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
$ docker pull ros@sha256:728bd3a5acfb689b5c80d9ba13e35b0bddbf2219ec880071304237a11447fe7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:9c352f94edd44a63949fa2747a2286eec49edbfa3b1a9bfa5b12ab690e5aa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339811879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cb9f7dfb6540ed42496008d9f02fc5d8ba79614e54e719761e9d26fc2654a0`
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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:19:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:19:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:19:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:19:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cf76b7ff8aaef0513feabd52dd289201e123cc53d4339a447b81f786488c2f`  
		Last Modified: Thu, 16 Jul 2026 01:20:46 GMT  
		Size: 124.9 MB (124863741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e81414aecf88ca4856dd2b7dd480b9e1360130b91dcfa8b15936a192b3c4b`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 376.0 KB (376000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24452bcceffb7d357947847cb9735fc1f1ce01a9fd169fdee379df6d324d10f7`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 130.9 KB (130854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c41d1b9b04734ec716f1d9e2f826bd2c97494e32694eb74cf236ad0939ba2`  
		Last Modified: Thu, 16 Jul 2026 01:20:44 GMT  
		Size: 25.7 MB (25712406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:c3d8d35677d2808ef3568f60ba8f423e9f615139cdd025ce3ddaf2e8c1f13563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de6ec80b0cacc46394591c2a11aa07049b3ee293ddb2e239bf4079a82d2dfdd`

```dockerfile
```

-	Layers:
	-	`sha256:ce2b330c377648d906056040db534e1640be65231976aacaacc5f4f0f083e2a1`  
		Last Modified: Thu, 16 Jul 2026 01:20:45 GMT  
		Size: 29.1 MB (29124503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c379a5bf1d80c2fcea2624a6b6b0507e2db5e8d73c555e10d1ae4ea1ba375bf5`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:714c24a5f4dbabe7293acf0a3a9ebcc430dcadee3503319b85e00cc91a850d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324536224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386c6df74a00707dce48a6675e7955f5b5437e754ef64b67365f0faa49f6034a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee060338a776bb1b42a935af177e6d2d3d59c58157ba9ddae0a069d9f8a200`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 118.3 MB (118275883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea495bfad46cf667a56f31891f1f2eab7c81710f5be7ac6c5b11d22be7f8ec1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 376.0 KB (376018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc8f18ff36afd6a96884df1811d7b657ec9f2f1e9c2c9ef8af6f79123bb8bf1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 130.8 KB (130835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99dcf7458e3d92c59079fdaaea6e075597547c389de804e17c1ce9801cb69f4d`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 24.7 MB (24661204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:7196538de1089a828cffd43287606e241b69b3abafd2295425cb70353bef3b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8634d661c3035bc1963378a5ac29afa7083bda1700d493effd044c31794cf020`

```dockerfile
```

-	Layers:
	-	`sha256:38bd13d00d5eb7648e480e2f646d166a97fb25ca9c954e3a3201f9f3e2eb185c`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 29.2 MB (29189135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d72c113e1982011935dc46351bcb7d1416251b131dbc433145c2de832e14b541`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:728bd3a5acfb689b5c80d9ba13e35b0bddbf2219ec880071304237a11447fe7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:9c352f94edd44a63949fa2747a2286eec49edbfa3b1a9bfa5b12ab690e5aa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339811879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cb9f7dfb6540ed42496008d9f02fc5d8ba79614e54e719761e9d26fc2654a0`
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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:19:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:19:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:19:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:19:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cf76b7ff8aaef0513feabd52dd289201e123cc53d4339a447b81f786488c2f`  
		Last Modified: Thu, 16 Jul 2026 01:20:46 GMT  
		Size: 124.9 MB (124863741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e81414aecf88ca4856dd2b7dd480b9e1360130b91dcfa8b15936a192b3c4b`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 376.0 KB (376000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24452bcceffb7d357947847cb9735fc1f1ce01a9fd169fdee379df6d324d10f7`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 130.9 KB (130854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c41d1b9b04734ec716f1d9e2f826bd2c97494e32694eb74cf236ad0939ba2`  
		Last Modified: Thu, 16 Jul 2026 01:20:44 GMT  
		Size: 25.7 MB (25712406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:c3d8d35677d2808ef3568f60ba8f423e9f615139cdd025ce3ddaf2e8c1f13563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de6ec80b0cacc46394591c2a11aa07049b3ee293ddb2e239bf4079a82d2dfdd`

```dockerfile
```

-	Layers:
	-	`sha256:ce2b330c377648d906056040db534e1640be65231976aacaacc5f4f0f083e2a1`  
		Last Modified: Thu, 16 Jul 2026 01:20:45 GMT  
		Size: 29.1 MB (29124503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c379a5bf1d80c2fcea2624a6b6b0507e2db5e8d73c555e10d1ae4ea1ba375bf5`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:714c24a5f4dbabe7293acf0a3a9ebcc430dcadee3503319b85e00cc91a850d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324536224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386c6df74a00707dce48a6675e7955f5b5437e754ef64b67365f0faa49f6034a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee060338a776bb1b42a935af177e6d2d3d59c58157ba9ddae0a069d9f8a200`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 118.3 MB (118275883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea495bfad46cf667a56f31891f1f2eab7c81710f5be7ac6c5b11d22be7f8ec1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 376.0 KB (376018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc8f18ff36afd6a96884df1811d7b657ec9f2f1e9c2c9ef8af6f79123bb8bf1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 130.8 KB (130835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99dcf7458e3d92c59079fdaaea6e075597547c389de804e17c1ce9801cb69f4d`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 24.7 MB (24661204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:7196538de1089a828cffd43287606e241b69b3abafd2295425cb70353bef3b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8634d661c3035bc1963378a5ac29afa7083bda1700d493effd044c31794cf020`

```dockerfile
```

-	Layers:
	-	`sha256:38bd13d00d5eb7648e480e2f646d166a97fb25ca9c954e3a3201f9f3e2eb185c`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 29.2 MB (29189135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d72c113e1982011935dc46351bcb7d1416251b131dbc433145c2de832e14b541`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:62254158de5679185590e37df85b4a4792c0044dabc13e553c982f6040ee039c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:027d3e47642e7607141ec7ebd04a8040a8ae8d22a45e3dfcd6213257e1c46677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528317973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208c589739d80b77a06c47b6b81d63332119a4f6463f73ee0d43ad4fd6ab3e72`
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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:19:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:19:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:19:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:19:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:15:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cf76b7ff8aaef0513feabd52dd289201e123cc53d4339a447b81f786488c2f`  
		Last Modified: Thu, 16 Jul 2026 01:20:46 GMT  
		Size: 124.9 MB (124863741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e81414aecf88ca4856dd2b7dd480b9e1360130b91dcfa8b15936a192b3c4b`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 376.0 KB (376000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24452bcceffb7d357947847cb9735fc1f1ce01a9fd169fdee379df6d324d10f7`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 130.9 KB (130854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c41d1b9b04734ec716f1d9e2f826bd2c97494e32694eb74cf236ad0939ba2`  
		Last Modified: Thu, 16 Jul 2026 01:20:44 GMT  
		Size: 25.7 MB (25712406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d6e7e7bd7076ca9b61a8549c8df087cd411e3343dfab22e4e4075d80863e9f`  
		Last Modified: Thu, 16 Jul 2026 02:20:33 GMT  
		Size: 1.2 GB (1188506094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:a3534e9088ec33d7b50f901e535002ef8a40e52896f10e772c5d0b550ccc7740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ddacd06c2274de5bd9d5c379338bcebdbc3a9ff275b588d7813b4e8b3a06dd`

```dockerfile
```

-	Layers:
	-	`sha256:57b6026c65faf4778cdd9f3627be827d95313e32a3a7bcaa370d868ac46c6ac3`  
		Last Modified: Thu, 16 Jul 2026 02:20:09 GMT  
		Size: 64.3 MB (64335158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41e6a1b44f9f09c8cc09f9d9df6d29807e4106378f3e6d19a3c399a5707e3ebd`  
		Last Modified: Thu, 16 Jul 2026 02:20:07 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:542eb29adfd9ef6fd5a29da64383616f67c54d15d6c3889b62814eb93e615da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471600289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb3aa31e72f8373c94ca4f4b745e3d46c5b1cd426355dece57bede6d6803f48`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:15:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee060338a776bb1b42a935af177e6d2d3d59c58157ba9ddae0a069d9f8a200`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 118.3 MB (118275883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea495bfad46cf667a56f31891f1f2eab7c81710f5be7ac6c5b11d22be7f8ec1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 376.0 KB (376018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc8f18ff36afd6a96884df1811d7b657ec9f2f1e9c2c9ef8af6f79123bb8bf1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 130.8 KB (130835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99dcf7458e3d92c59079fdaaea6e075597547c389de804e17c1ce9801cb69f4d`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 24.7 MB (24661204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75065d8da939ac966441d89a1a213296d89442d90b6ed11d8fa6b41e5f2da0c5`  
		Last Modified: Thu, 16 Jul 2026 02:20:04 GMT  
		Size: 1.1 GB (1147064065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:fc4fa0d6487aaa812b932e15724e1f4b2e3e0a38d97af9672717c5a717a435c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64259149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8924d1457921280fa4ae87e20228e6f7c3c914851fd9fae665498b5a2b6951`

```dockerfile
```

-	Layers:
	-	`sha256:4a9731aa761206156012293731d01f922ea81634a2436f67652a7a91efe2fbcb`  
		Last Modified: Thu, 16 Jul 2026 02:19:46 GMT  
		Size: 64.2 MB (64249376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87656e3859b56744368cdfe02bf2c52b625cd26ff3e0c85cb159ae48044f9c2b`  
		Last Modified: Thu, 16 Jul 2026 02:19:43 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:62254158de5679185590e37df85b4a4792c0044dabc13e553c982f6040ee039c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:027d3e47642e7607141ec7ebd04a8040a8ae8d22a45e3dfcd6213257e1c46677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528317973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208c589739d80b77a06c47b6b81d63332119a4f6463f73ee0d43ad4fd6ab3e72`
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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:19:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:19:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:19:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:19:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:15:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cf76b7ff8aaef0513feabd52dd289201e123cc53d4339a447b81f786488c2f`  
		Last Modified: Thu, 16 Jul 2026 01:20:46 GMT  
		Size: 124.9 MB (124863741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e81414aecf88ca4856dd2b7dd480b9e1360130b91dcfa8b15936a192b3c4b`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 376.0 KB (376000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24452bcceffb7d357947847cb9735fc1f1ce01a9fd169fdee379df6d324d10f7`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 130.9 KB (130854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c41d1b9b04734ec716f1d9e2f826bd2c97494e32694eb74cf236ad0939ba2`  
		Last Modified: Thu, 16 Jul 2026 01:20:44 GMT  
		Size: 25.7 MB (25712406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d6e7e7bd7076ca9b61a8549c8df087cd411e3343dfab22e4e4075d80863e9f`  
		Last Modified: Thu, 16 Jul 2026 02:20:33 GMT  
		Size: 1.2 GB (1188506094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:a3534e9088ec33d7b50f901e535002ef8a40e52896f10e772c5d0b550ccc7740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ddacd06c2274de5bd9d5c379338bcebdbc3a9ff275b588d7813b4e8b3a06dd`

```dockerfile
```

-	Layers:
	-	`sha256:57b6026c65faf4778cdd9f3627be827d95313e32a3a7bcaa370d868ac46c6ac3`  
		Last Modified: Thu, 16 Jul 2026 02:20:09 GMT  
		Size: 64.3 MB (64335158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41e6a1b44f9f09c8cc09f9d9df6d29807e4106378f3e6d19a3c399a5707e3ebd`  
		Last Modified: Thu, 16 Jul 2026 02:20:07 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:542eb29adfd9ef6fd5a29da64383616f67c54d15d6c3889b62814eb93e615da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471600289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb3aa31e72f8373c94ca4f4b745e3d46c5b1cd426355dece57bede6d6803f48`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 02:15:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee060338a776bb1b42a935af177e6d2d3d59c58157ba9ddae0a069d9f8a200`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 118.3 MB (118275883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea495bfad46cf667a56f31891f1f2eab7c81710f5be7ac6c5b11d22be7f8ec1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 376.0 KB (376018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc8f18ff36afd6a96884df1811d7b657ec9f2f1e9c2c9ef8af6f79123bb8bf1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 130.8 KB (130835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99dcf7458e3d92c59079fdaaea6e075597547c389de804e17c1ce9801cb69f4d`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 24.7 MB (24661204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75065d8da939ac966441d89a1a213296d89442d90b6ed11d8fa6b41e5f2da0c5`  
		Last Modified: Thu, 16 Jul 2026 02:20:04 GMT  
		Size: 1.1 GB (1147064065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:fc4fa0d6487aaa812b932e15724e1f4b2e3e0a38d97af9672717c5a717a435c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64259149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8924d1457921280fa4ae87e20228e6f7c3c914851fd9fae665498b5a2b6951`

```dockerfile
```

-	Layers:
	-	`sha256:4a9731aa761206156012293731d01f922ea81634a2436f67652a7a91efe2fbcb`  
		Last Modified: Thu, 16 Jul 2026 02:19:46 GMT  
		Size: 64.2 MB (64249376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87656e3859b56744368cdfe02bf2c52b625cd26ff3e0c85cb159ae48044f9c2b`  
		Last Modified: Thu, 16 Jul 2026 02:19:43 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:728bd3a5acfb689b5c80d9ba13e35b0bddbf2219ec880071304237a11447fe7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:9c352f94edd44a63949fa2747a2286eec49edbfa3b1a9bfa5b12ab690e5aa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339811879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cb9f7dfb6540ed42496008d9f02fc5d8ba79614e54e719761e9d26fc2654a0`
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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:19:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:19:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:19:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:19:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cf76b7ff8aaef0513feabd52dd289201e123cc53d4339a447b81f786488c2f`  
		Last Modified: Thu, 16 Jul 2026 01:20:46 GMT  
		Size: 124.9 MB (124863741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e81414aecf88ca4856dd2b7dd480b9e1360130b91dcfa8b15936a192b3c4b`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 376.0 KB (376000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24452bcceffb7d357947847cb9735fc1f1ce01a9fd169fdee379df6d324d10f7`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 130.9 KB (130854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c41d1b9b04734ec716f1d9e2f826bd2c97494e32694eb74cf236ad0939ba2`  
		Last Modified: Thu, 16 Jul 2026 01:20:44 GMT  
		Size: 25.7 MB (25712406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:c3d8d35677d2808ef3568f60ba8f423e9f615139cdd025ce3ddaf2e8c1f13563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de6ec80b0cacc46394591c2a11aa07049b3ee293ddb2e239bf4079a82d2dfdd`

```dockerfile
```

-	Layers:
	-	`sha256:ce2b330c377648d906056040db534e1640be65231976aacaacc5f4f0f083e2a1`  
		Last Modified: Thu, 16 Jul 2026 01:20:45 GMT  
		Size: 29.1 MB (29124503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c379a5bf1d80c2fcea2624a6b6b0507e2db5e8d73c555e10d1ae4ea1ba375bf5`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:714c24a5f4dbabe7293acf0a3a9ebcc430dcadee3503319b85e00cc91a850d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324536224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386c6df74a00707dce48a6675e7955f5b5437e754ef64b67365f0faa49f6034a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee060338a776bb1b42a935af177e6d2d3d59c58157ba9ddae0a069d9f8a200`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 118.3 MB (118275883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea495bfad46cf667a56f31891f1f2eab7c81710f5be7ac6c5b11d22be7f8ec1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 376.0 KB (376018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc8f18ff36afd6a96884df1811d7b657ec9f2f1e9c2c9ef8af6f79123bb8bf1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 130.8 KB (130835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99dcf7458e3d92c59079fdaaea6e075597547c389de804e17c1ce9801cb69f4d`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 24.7 MB (24661204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:7196538de1089a828cffd43287606e241b69b3abafd2295425cb70353bef3b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8634d661c3035bc1963378a5ac29afa7083bda1700d493effd044c31794cf020`

```dockerfile
```

-	Layers:
	-	`sha256:38bd13d00d5eb7648e480e2f646d166a97fb25ca9c954e3a3201f9f3e2eb185c`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 29.2 MB (29189135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d72c113e1982011935dc46351bcb7d1416251b131dbc433145c2de832e14b541`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:728bd3a5acfb689b5c80d9ba13e35b0bddbf2219ec880071304237a11447fe7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:9c352f94edd44a63949fa2747a2286eec49edbfa3b1a9bfa5b12ab690e5aa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339811879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cb9f7dfb6540ed42496008d9f02fc5d8ba79614e54e719761e9d26fc2654a0`
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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:19:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:19:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:19:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:19:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cf76b7ff8aaef0513feabd52dd289201e123cc53d4339a447b81f786488c2f`  
		Last Modified: Thu, 16 Jul 2026 01:20:46 GMT  
		Size: 124.9 MB (124863741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e81414aecf88ca4856dd2b7dd480b9e1360130b91dcfa8b15936a192b3c4b`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 376.0 KB (376000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24452bcceffb7d357947847cb9735fc1f1ce01a9fd169fdee379df6d324d10f7`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 130.9 KB (130854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c41d1b9b04734ec716f1d9e2f826bd2c97494e32694eb74cf236ad0939ba2`  
		Last Modified: Thu, 16 Jul 2026 01:20:44 GMT  
		Size: 25.7 MB (25712406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:c3d8d35677d2808ef3568f60ba8f423e9f615139cdd025ce3ddaf2e8c1f13563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de6ec80b0cacc46394591c2a11aa07049b3ee293ddb2e239bf4079a82d2dfdd`

```dockerfile
```

-	Layers:
	-	`sha256:ce2b330c377648d906056040db534e1640be65231976aacaacc5f4f0f083e2a1`  
		Last Modified: Thu, 16 Jul 2026 01:20:45 GMT  
		Size: 29.1 MB (29124503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c379a5bf1d80c2fcea2624a6b6b0507e2db5e8d73c555e10d1ae4ea1ba375bf5`  
		Last Modified: Thu, 16 Jul 2026 01:20:43 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:714c24a5f4dbabe7293acf0a3a9ebcc430dcadee3503319b85e00cc91a850d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324536224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386c6df74a00707dce48a6675e7955f5b5437e754ef64b67365f0faa49f6034a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:07 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee060338a776bb1b42a935af177e6d2d3d59c58157ba9ddae0a069d9f8a200`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 118.3 MB (118275883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea495bfad46cf667a56f31891f1f2eab7c81710f5be7ac6c5b11d22be7f8ec1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 376.0 KB (376018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc8f18ff36afd6a96884df1811d7b657ec9f2f1e9c2c9ef8af6f79123bb8bf1`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 130.8 KB (130835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99dcf7458e3d92c59079fdaaea6e075597547c389de804e17c1ce9801cb69f4d`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 24.7 MB (24661204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:7196538de1089a828cffd43287606e241b69b3abafd2295425cb70353bef3b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8634d661c3035bc1963378a5ac29afa7083bda1700d493effd044c31794cf020`

```dockerfile
```

-	Layers:
	-	`sha256:38bd13d00d5eb7648e480e2f646d166a97fb25ca9c954e3a3201f9f3e2eb185c`  
		Last Modified: Thu, 16 Jul 2026 01:18:16 GMT  
		Size: 29.2 MB (29189135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d72c113e1982011935dc46351bcb7d1416251b131dbc433145c2de832e14b541`  
		Last Modified: Thu, 16 Jul 2026 01:18:15 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:df075e7e4b337f541d4b4e33f3093d17389558f432789505d11a192cd1a9b1f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d21c3cf4bffbd0c0d275b7845fc13958e8deaeee13b566fc6a985d12d7984f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188728878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f659ad1a2688edf9edf614a58555c9990eb9c65d2f90ee91640a49b862a428`
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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:99a51145184fcb6a11b4c33550368bc1a51bb49c8ae9cadb70a07f3ae86d93b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22744047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8054178c674c17cfe56624bdec001df269892d975715e97d1ffcd58f458f84`

```dockerfile
```

-	Layers:
	-	`sha256:b2089a685b6d4950e415afcc02a87fb8da0793011c5f53278815bed153bcb491`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 22.7 MB (22728464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:088001e5b6aa905003eb48c5d0da26a456fcbce21713ef5491b53dbf9da1562f`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5820959183d85db23dd9289428096cdef053b6c6ed957f9172610729b4162d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181092284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f74760d26faa9915eda664c853268b366a67a085b951a715f2e8a99ecf7ff14`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:efd96afcac30ca6f58f64479b0bd128921fffcb13ab4d4d3cc57eac30a264dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22716864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235c7ec5adee49ce657f368a7e3ab8041d7bfd5212820fe4b5dc3d3ac2c2a381`

```dockerfile
```

-	Layers:
	-	`sha256:bfcbc90340166e298215e5883d510b6f4777e0b6431c32bfa6e35486f663813f`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 22.7 MB (22701156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b49f4e3a86c69f20b4783fd140263c6d156799b5f6e398c59dfae70d901ef32e`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:df075e7e4b337f541d4b4e33f3093d17389558f432789505d11a192cd1a9b1f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:d21c3cf4bffbd0c0d275b7845fc13958e8deaeee13b566fc6a985d12d7984f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188728878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f659ad1a2688edf9edf614a58555c9990eb9c65d2f90ee91640a49b862a428`
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
# Thu, 16 Jul 2026 00:37:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:11 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:17 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:07 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:08 GMT
CMD ["bash"]
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
	-	`sha256:b71953840df835a230f5d31a7b25b454f8a4ef17bd612cc14e692651c4c5e5b8`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 741.1 KB (741069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b356245206e83b909035a2c1b66ee99e02c70abcbdc21504f453ddf3c6bec`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 9.8 MB (9783910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84f7c6c96b4fe12f88e705d76c22b904f4cfe337cb09d7ce6b4b7feb32b432d`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 90.1 KB (90073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce7fe978e8beabcef3f044654b7ffa602cf160d974035b4ba18d7df11b65dde`  
		Last Modified: Thu, 16 Jul 2026 00:38:50 GMT  
		Size: 136.5 MB (136532481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1035bf14b16a1c04f08489886fa73261b55aa0320eab0c2abb98eeaec8b14b7f`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:99a51145184fcb6a11b4c33550368bc1a51bb49c8ae9cadb70a07f3ae86d93b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22744047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8054178c674c17cfe56624bdec001df269892d975715e97d1ffcd58f458f84`

```dockerfile
```

-	Layers:
	-	`sha256:b2089a685b6d4950e415afcc02a87fb8da0793011c5f53278815bed153bcb491`  
		Last Modified: Thu, 16 Jul 2026 00:38:48 GMT  
		Size: 22.7 MB (22728464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:088001e5b6aa905003eb48c5d0da26a456fcbce21713ef5491b53dbf9da1562f`  
		Last Modified: Thu, 16 Jul 2026 00:38:47 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5820959183d85db23dd9289428096cdef053b6c6ed957f9172610729b4162d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181092284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f74760d26faa9915eda664c853268b366a67a085b951a715f2e8a99ecf7ff14`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:02 GMT
ENV ROS_DISTRO=lyrical
# Thu, 16 Jul 2026 00:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5cce9e369e3d07f84ae03f0e78227ee6bc57a8fe876467f51edb4d9248e4800`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f6bf7a286b30d492fec0e23383ea7d63029c1069e2648dec80b15f388b909b`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 9.6 MB (9608380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf462c4379f4d0ab6cfcca773680520596fd785aabac3bfbd78aecb94ad440bd`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 90.4 KB (90351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e075261fae3c3f217e8bdfc009eba527699bc8173a6f06aaf79bf33a071e8883`  
		Last Modified: Thu, 16 Jul 2026 00:38:45 GMT  
		Size: 129.9 MB (129946317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbeff52e6fe5d8580aa1e9a333e347f61d3352757b90604a0045620a39f32f1`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:efd96afcac30ca6f58f64479b0bd128921fffcb13ab4d4d3cc57eac30a264dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22716864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235c7ec5adee49ce657f368a7e3ab8041d7bfd5212820fe4b5dc3d3ac2c2a381`

```dockerfile
```

-	Layers:
	-	`sha256:bfcbc90340166e298215e5883d510b6f4777e0b6431c32bfa6e35486f663813f`  
		Last Modified: Thu, 16 Jul 2026 00:38:43 GMT  
		Size: 22.7 MB (22701156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b49f4e3a86c69f20b4783fd140263c6d156799b5f6e398c59dfae70d901ef32e`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:5a3b59a4a216de5c777b6a0ecf9887929fe1f0e62e388a2657c6e48845a67637
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:f0c5e7066a41146aa0b29be672de45e8ed41421c4dc3c832943965918f586c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340192618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78799a508d825c221b14c0d3fc8b78a37a25e816665b40896685d510c622873c`
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

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:3fe5b66728bde2d417382d21cc3ba9791f2e9001a53d83272e5c95a2d9600f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29143017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa725173327e322ddddcf531a1dfbeb5f98f42dcf7db16e216bda7a262ca68fd`

```dockerfile
```

-	Layers:
	-	`sha256:f91d80e020d87f978181009d45acda1719be0ad5b145410535dc68516bd21958`  
		Last Modified: Thu, 16 Jul 2026 01:19:12 GMT  
		Size: 29.1 MB (29125861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:816fb597de71277ae0e34c666b67437a702eb94726ae537fbe0dec71ec5e4594`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 17.2 KB (17156 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6c5c80acc2ab8aba15faca81f7e9d6d359a408acef385ce389dfe4e967d9f643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324902294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb12a4ca3122c459dd954c74efaf079d2a40c04b4ae1fc6c6640f37421412a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:53 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:05 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:01 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22d0a2af75b914d165591ffbd8d2a69ac2ff5836c62d1265d0767a7761c9c1c`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8491ebe9ed9e115cca33558d15fd4a35afd60803c1b5fee9246e706584ebac18`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 9.6 MB (9608420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59666b431607554a82f1bdd5b35f8e5876bb54a0096e8ea5d1e3c2a5e60ded6d`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 90.4 KB (90373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5706044b9d21487c6c89395120dcd58c80cdee29afc855a3a7f887b758c55a`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 130.3 MB (130253673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07dce170bee2abb1a9a9c5053c811405038e55f1e623459b693023467713fb`  
		Last Modified: Thu, 16 Jul 2026 00:38:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2ec73ba8b78ffdb006ed0ac5d92bd1425a2461f99e47f0c3ca7fe0fe29159b`  
		Last Modified: Thu, 16 Jul 2026 01:18:22 GMT  
		Size: 118.3 MB (118275539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fb7e243219539a6b71a423fffd115ed946946e46325545a3a93ecce7b87c1e`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 373.2 KB (373225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1826acdf2cefecf3e12e0e06b5027bda152dc8767773770013f08e2e646642`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 130.8 KB (130803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba08d84610d61d24f9b66fb8e7965e953ea29e68dcbb76a34104b38c9349e1fd`  
		Last Modified: Thu, 16 Jul 2026 01:18:20 GMT  
		Size: 24.7 MB (24723026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:014a711f017c18b0152c9bb5254c82daf3876b335777d63e8fa4425b7747b010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29223015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeeb136719cfca8f47bc7252d56fbcafedfd0be6cdf370ba0ce9794f17b806ed`

```dockerfile
```

-	Layers:
	-	`sha256:c3f109d18de8dfe8b7c83c11a7850999430c9b02bb1e8be3e01c7f0dad1e53fe`  
		Last Modified: Thu, 16 Jul 2026 01:18:19 GMT  
		Size: 29.2 MB (29205721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d343a76ed09fe36b6c2eca6713b005aa2e95bbbdc613b078e2628978f1fc9ad6`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
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
$ docker pull ros@sha256:5a3b59a4a216de5c777b6a0ecf9887929fe1f0e62e388a2657c6e48845a67637
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:f0c5e7066a41146aa0b29be672de45e8ed41421c4dc3c832943965918f586c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340192618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78799a508d825c221b14c0d3fc8b78a37a25e816665b40896685d510c622873c`
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

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:3fe5b66728bde2d417382d21cc3ba9791f2e9001a53d83272e5c95a2d9600f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29143017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa725173327e322ddddcf531a1dfbeb5f98f42dcf7db16e216bda7a262ca68fd`

```dockerfile
```

-	Layers:
	-	`sha256:f91d80e020d87f978181009d45acda1719be0ad5b145410535dc68516bd21958`  
		Last Modified: Thu, 16 Jul 2026 01:19:12 GMT  
		Size: 29.1 MB (29125861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:816fb597de71277ae0e34c666b67437a702eb94726ae537fbe0dec71ec5e4594`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 17.2 KB (17156 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6c5c80acc2ab8aba15faca81f7e9d6d359a408acef385ce389dfe4e967d9f643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324902294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb12a4ca3122c459dd954c74efaf079d2a40c04b4ae1fc6c6640f37421412a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:53 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:05 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:01 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22d0a2af75b914d165591ffbd8d2a69ac2ff5836c62d1265d0767a7761c9c1c`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8491ebe9ed9e115cca33558d15fd4a35afd60803c1b5fee9246e706584ebac18`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 9.6 MB (9608420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59666b431607554a82f1bdd5b35f8e5876bb54a0096e8ea5d1e3c2a5e60ded6d`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 90.4 KB (90373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5706044b9d21487c6c89395120dcd58c80cdee29afc855a3a7f887b758c55a`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 130.3 MB (130253673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07dce170bee2abb1a9a9c5053c811405038e55f1e623459b693023467713fb`  
		Last Modified: Thu, 16 Jul 2026 00:38:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2ec73ba8b78ffdb006ed0ac5d92bd1425a2461f99e47f0c3ca7fe0fe29159b`  
		Last Modified: Thu, 16 Jul 2026 01:18:22 GMT  
		Size: 118.3 MB (118275539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fb7e243219539a6b71a423fffd115ed946946e46325545a3a93ecce7b87c1e`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 373.2 KB (373225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1826acdf2cefecf3e12e0e06b5027bda152dc8767773770013f08e2e646642`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 130.8 KB (130803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba08d84610d61d24f9b66fb8e7965e953ea29e68dcbb76a34104b38c9349e1fd`  
		Last Modified: Thu, 16 Jul 2026 01:18:20 GMT  
		Size: 24.7 MB (24723026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:014a711f017c18b0152c9bb5254c82daf3876b335777d63e8fa4425b7747b010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29223015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeeb136719cfca8f47bc7252d56fbcafedfd0be6cdf370ba0ce9794f17b806ed`

```dockerfile
```

-	Layers:
	-	`sha256:c3f109d18de8dfe8b7c83c11a7850999430c9b02bb1e8be3e01c7f0dad1e53fe`  
		Last Modified: Thu, 16 Jul 2026 01:18:19 GMT  
		Size: 29.2 MB (29205721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d343a76ed09fe36b6c2eca6713b005aa2e95bbbdc613b078e2628978f1fc9ad6`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:5a3b59a4a216de5c777b6a0ecf9887929fe1f0e62e388a2657c6e48845a67637
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:f0c5e7066a41146aa0b29be672de45e8ed41421c4dc3c832943965918f586c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340192618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78799a508d825c221b14c0d3fc8b78a37a25e816665b40896685d510c622873c`
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

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3fe5b66728bde2d417382d21cc3ba9791f2e9001a53d83272e5c95a2d9600f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29143017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa725173327e322ddddcf531a1dfbeb5f98f42dcf7db16e216bda7a262ca68fd`

```dockerfile
```

-	Layers:
	-	`sha256:f91d80e020d87f978181009d45acda1719be0ad5b145410535dc68516bd21958`  
		Last Modified: Thu, 16 Jul 2026 01:19:12 GMT  
		Size: 29.1 MB (29125861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:816fb597de71277ae0e34c666b67437a702eb94726ae537fbe0dec71ec5e4594`  
		Last Modified: Thu, 16 Jul 2026 01:19:10 GMT  
		Size: 17.2 KB (17156 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6c5c80acc2ab8aba15faca81f7e9d6d359a408acef385ce389dfe4e967d9f643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324902294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb12a4ca3122c459dd954c74efaf079d2a40c04b4ae1fc6c6640f37421412a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:53 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:05 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:01 GMT
CMD ["bash"]
# Thu, 16 Jul 2026 01:17:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:17:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 16 Jul 2026 01:17:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 16 Jul 2026 01:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22d0a2af75b914d165591ffbd8d2a69ac2ff5836c62d1265d0767a7761c9c1c`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8491ebe9ed9e115cca33558d15fd4a35afd60803c1b5fee9246e706584ebac18`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 9.6 MB (9608420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59666b431607554a82f1bdd5b35f8e5876bb54a0096e8ea5d1e3c2a5e60ded6d`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 90.4 KB (90373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5706044b9d21487c6c89395120dcd58c80cdee29afc855a3a7f887b758c55a`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 130.3 MB (130253673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07dce170bee2abb1a9a9c5053c811405038e55f1e623459b693023467713fb`  
		Last Modified: Thu, 16 Jul 2026 00:38:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2ec73ba8b78ffdb006ed0ac5d92bd1425a2461f99e47f0c3ca7fe0fe29159b`  
		Last Modified: Thu, 16 Jul 2026 01:18:22 GMT  
		Size: 118.3 MB (118275539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fb7e243219539a6b71a423fffd115ed946946e46325545a3a93ecce7b87c1e`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 373.2 KB (373225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1826acdf2cefecf3e12e0e06b5027bda152dc8767773770013f08e2e646642`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 130.8 KB (130803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba08d84610d61d24f9b66fb8e7965e953ea29e68dcbb76a34104b38c9349e1fd`  
		Last Modified: Thu, 16 Jul 2026 01:18:20 GMT  
		Size: 24.7 MB (24723026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:014a711f017c18b0152c9bb5254c82daf3876b335777d63e8fa4425b7747b010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29223015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeeb136719cfca8f47bc7252d56fbcafedfd0be6cdf370ba0ce9794f17b806ed`

```dockerfile
```

-	Layers:
	-	`sha256:c3f109d18de8dfe8b7c83c11a7850999430c9b02bb1e8be3e01c7f0dad1e53fe`  
		Last Modified: Thu, 16 Jul 2026 01:18:19 GMT  
		Size: 29.2 MB (29205721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d343a76ed09fe36b6c2eca6713b005aa2e95bbbdc613b078e2628978f1fc9ad6`  
		Last Modified: Thu, 16 Jul 2026 01:18:18 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:a6e7fbfe4d157340a2814e192cfc4a50f84d96bf4d37e919123acb3b0946d7b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:ea663e5ce7e0738d354de61aa296f42fbcaf7fff978e47b01bfb06a0bef31855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189031859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a77d0628403583ed8734cf27aa869f700115d0942af0e888a6b95089a1cd43`
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

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:370e3e142d8e2f871253cf869f322fe92d9692c8e89f2f3585439ad8fa6f6e5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22745448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b578057d452168eda55b12b2a134d6271a91efa3b8b526e48683412a54cc973d`

```dockerfile
```

-	Layers:
	-	`sha256:9e6b9398475ac9216221de5a85865a435cd7ba2c479660276c9b2559991be9da`  
		Last Modified: Thu, 16 Jul 2026 00:38:54 GMT  
		Size: 22.7 MB (22729769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dff1f36329df7d07d208553534a63f876025427cb5b6cebfa4e01974ac2a0982`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:164c6091c1286f1ea5a1c3242a9f7695f27271a0f09ba9c1c04ffc82c68b5631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181399701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c300ac33afe14f3fa76f9e50b217c63a6b5b3460f2a3344b8695e1c665a65411`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:53 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:05 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22d0a2af75b914d165591ffbd8d2a69ac2ff5836c62d1265d0767a7761c9c1c`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8491ebe9ed9e115cca33558d15fd4a35afd60803c1b5fee9246e706584ebac18`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 9.6 MB (9608420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59666b431607554a82f1bdd5b35f8e5876bb54a0096e8ea5d1e3c2a5e60ded6d`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 90.4 KB (90373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5706044b9d21487c6c89395120dcd58c80cdee29afc855a3a7f887b758c55a`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 130.3 MB (130253673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07dce170bee2abb1a9a9c5053c811405038e55f1e623459b693023467713fb`  
		Last Modified: Thu, 16 Jul 2026 00:38:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:12b09c34486641033cf347529e5e287d2916e31931e302ae1061e798159b7318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22733505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb888cc72cfa2a858d9c116b7074e417171424ecee41ad66f80cec644900623`

```dockerfile
```

-	Layers:
	-	`sha256:f479f0e5f4a2ed10914b5dac83ce081fba6bbd7f405840ac92a4f1da366876d6`  
		Last Modified: Thu, 16 Jul 2026 00:38:40 GMT  
		Size: 22.7 MB (22717701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:846d4b6d1bf3834f28698aa4b3250ed2eb96611132d2b7b371649ae9d6d5db3b`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:a6e7fbfe4d157340a2814e192cfc4a50f84d96bf4d37e919123acb3b0946d7b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:ea663e5ce7e0738d354de61aa296f42fbcaf7fff978e47b01bfb06a0bef31855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189031859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a77d0628403583ed8734cf27aa869f700115d0942af0e888a6b95089a1cd43`
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

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:370e3e142d8e2f871253cf869f322fe92d9692c8e89f2f3585439ad8fa6f6e5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22745448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b578057d452168eda55b12b2a134d6271a91efa3b8b526e48683412a54cc973d`

```dockerfile
```

-	Layers:
	-	`sha256:9e6b9398475ac9216221de5a85865a435cd7ba2c479660276c9b2559991be9da`  
		Last Modified: Thu, 16 Jul 2026 00:38:54 GMT  
		Size: 22.7 MB (22729769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dff1f36329df7d07d208553534a63f876025427cb5b6cebfa4e01974ac2a0982`  
		Last Modified: Thu, 16 Jul 2026 00:38:52 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:164c6091c1286f1ea5a1c3242a9f7695f27271a0f09ba9c1c04ffc82c68b5631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181399701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c300ac33afe14f3fa76f9e50b217c63a6b5b3460f2a3344b8695e1c665a65411`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:36:53 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:05 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LANG=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:38:00 GMT
ENV ROS_DISTRO=rolling
# Thu, 16 Jul 2026 00:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 00:38:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 16 Jul 2026 00:38:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22d0a2af75b914d165591ffbd8d2a69ac2ff5836c62d1265d0767a7761c9c1c`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 741.3 KB (741304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8491ebe9ed9e115cca33558d15fd4a35afd60803c1b5fee9246e706584ebac18`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 9.6 MB (9608420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59666b431607554a82f1bdd5b35f8e5876bb54a0096e8ea5d1e3c2a5e60ded6d`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 90.4 KB (90373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5706044b9d21487c6c89395120dcd58c80cdee29afc855a3a7f887b758c55a`  
		Last Modified: Thu, 16 Jul 2026 00:38:42 GMT  
		Size: 130.3 MB (130253673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07dce170bee2abb1a9a9c5053c811405038e55f1e623459b693023467713fb`  
		Last Modified: Thu, 16 Jul 2026 00:38:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:12b09c34486641033cf347529e5e287d2916e31931e302ae1061e798159b7318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22733505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb888cc72cfa2a858d9c116b7074e417171424ecee41ad66f80cec644900623`

```dockerfile
```

-	Layers:
	-	`sha256:f479f0e5f4a2ed10914b5dac83ce081fba6bbd7f405840ac92a4f1da366876d6`  
		Last Modified: Thu, 16 Jul 2026 00:38:40 GMT  
		Size: 22.7 MB (22717701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:846d4b6d1bf3834f28698aa4b3250ed2eb96611132d2b7b371649ae9d6d5db3b`  
		Last Modified: Thu, 16 Jul 2026 00:38:39 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json
