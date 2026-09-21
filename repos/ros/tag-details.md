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
$ docker pull ros@sha256:1813d3c85d7f96ff7d3012d865204583255740182db5d0065f8f8cd029a83138
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:ba0391e31ffcfc5a1014578ecb0f4ca438be9d624b6375c85576ae16bc5232e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272013411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab91f7bbc8af87f468127aaa6c4d7f46fed4fa1f03b3a96b6ca44eed03d0ac0b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:595783a3f598d167206c6ef9968157ab36b14c56ea761ac967a617d0175e3043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb80cc6519fd7656c5c448ecb6492f0f128e6205e7fe37918a6f890540ae75e`

```dockerfile
```

-	Layers:
	-	`sha256:ec078c459c09616751d6dfe1da031fb997ce6e4b3c0186a9010ac193d42acb1b`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 24.0 MB (23969737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c85ef5deff8c5152eea187b98498222982709593fe0a9b470e2d2ac2674072`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 16.4 KB (16352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:86eaec9ba3b5f345090bf92c3f1d7b9f7af369ebc3232876908467ce622e1cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263627507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0faddd2534a5aa74f0c2ef9d3bfd0c2a3887158100b0035a88bf31f902cc3a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:6c91a7bf49129e647903f25f8e6230d265b3ce142eca1b89574be56a4f67ac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23999239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbeb23bfd474150d418c10d58917f13d97b5c67482c6037711f7eae014bb48e`

```dockerfile
```

-	Layers:
	-	`sha256:39841b696bacaee9787953842099270c92814fde3c2a5b2689773992d3ea94d8`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 24.0 MB (23982754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ff4b57c3a0279723aa43f77a38831f8614b194a595453b48f81c0a8a6a3500`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:7ba242c32a03f05141a167fa759080cc71a56a5e6270234731bb5a70ae02efaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:1f9b2e86899d09f79a42e1f61f17159b43a6889120b769472fcc7fff9e1f9804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.2 MB (964152039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e14e18ad00c4bc55b756c9bea36cc81243f2acc4912c3a8b9cd870e5e3cb1d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c25dfd1af19f54fe52c7cf28800ada2f5b6d6b491e33081348182776b1e26b`  
		Last Modified: Wed, 09 Sep 2026 04:26:09 GMT  
		Size: 692.1 MB (692138628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:74f01dc09336a949c82a0039caed494bca3dd11c6dd53924001787724d9ac769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59084946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbede74c078ea1c881c2de30796ab94db2aa10cc029b7d086bf313348a583be9`

```dockerfile
```

-	Layers:
	-	`sha256:4dd878e2ccefb487fb25c37e82b95205164bef5b7fcfd219e23ceb8612ef32a8`  
		Last Modified: Wed, 09 Sep 2026 04:23:47 GMT  
		Size: 59.1 MB (59075593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b0793059312dab47c4f702907c60de9add8d1b354291c3a12415178189a91d`  
		Last Modified: Wed, 09 Sep 2026 04:22:44 GMT  
		Size: 9.4 KB (9353 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e97326ff7389c51622646ce332a3b7f53626a3f697cd0d691dd04dcbe4fe8104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **923.8 MB (923777618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdb41df3091f8c34a6516c1b5b7e11d289ba8291fc722ee677669b32c7aa738`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:43:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6b2c7d2309c160e0fa02b683e1af7a1e78036bbf039d65870e94fbe8ffa15`  
		Last Modified: Wed, 09 Sep 2026 03:46:34 GMT  
		Size: 660.2 MB (660150111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:13738bbcbc7db91f4638441e2880827c906af39f5d21b3d6330b4f06e03945db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59069350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb547572f1938fce2a74823a128d54c4afba9120b0f539ee925a91fd981ae2a`

```dockerfile
```

-	Layers:
	-	`sha256:73c438fa48b483f9c941e1fbc3e715c4a84acc6a465abe81135b6b41e07f4c93`  
		Last Modified: Wed, 09 Sep 2026 03:46:22 GMT  
		Size: 59.1 MB (59059918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30c8a74f4cedb4df319394a4874a16218c2fe419828a610b301622da273b54fd`  
		Last Modified: Wed, 09 Sep 2026 03:46:20 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:7ba242c32a03f05141a167fa759080cc71a56a5e6270234731bb5a70ae02efaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:1f9b2e86899d09f79a42e1f61f17159b43a6889120b769472fcc7fff9e1f9804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.2 MB (964152039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e14e18ad00c4bc55b756c9bea36cc81243f2acc4912c3a8b9cd870e5e3cb1d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:20:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c25dfd1af19f54fe52c7cf28800ada2f5b6d6b491e33081348182776b1e26b`  
		Last Modified: Wed, 09 Sep 2026 04:26:09 GMT  
		Size: 692.1 MB (692138628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:74f01dc09336a949c82a0039caed494bca3dd11c6dd53924001787724d9ac769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59084946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbede74c078ea1c881c2de30796ab94db2aa10cc029b7d086bf313348a583be9`

```dockerfile
```

-	Layers:
	-	`sha256:4dd878e2ccefb487fb25c37e82b95205164bef5b7fcfd219e23ceb8612ef32a8`  
		Last Modified: Wed, 09 Sep 2026 04:23:47 GMT  
		Size: 59.1 MB (59075593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b0793059312dab47c4f702907c60de9add8d1b354291c3a12415178189a91d`  
		Last Modified: Wed, 09 Sep 2026 04:22:44 GMT  
		Size: 9.4 KB (9353 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e97326ff7389c51622646ce332a3b7f53626a3f697cd0d691dd04dcbe4fe8104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **923.8 MB (923777618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdb41df3091f8c34a6516c1b5b7e11d289ba8291fc722ee677669b32c7aa738`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:43:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6b2c7d2309c160e0fa02b683e1af7a1e78036bbf039d65870e94fbe8ffa15`  
		Last Modified: Wed, 09 Sep 2026 03:46:34 GMT  
		Size: 660.2 MB (660150111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:13738bbcbc7db91f4638441e2880827c906af39f5d21b3d6330b4f06e03945db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59069350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb547572f1938fce2a74823a128d54c4afba9120b0f539ee925a91fd981ae2a`

```dockerfile
```

-	Layers:
	-	`sha256:73c438fa48b483f9c941e1fbc3e715c4a84acc6a465abe81135b6b41e07f4c93`  
		Last Modified: Wed, 09 Sep 2026 03:46:22 GMT  
		Size: 59.1 MB (59059918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30c8a74f4cedb4df319394a4874a16218c2fe419828a610b301622da273b54fd`  
		Last Modified: Wed, 09 Sep 2026 03:46:20 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:1813d3c85d7f96ff7d3012d865204583255740182db5d0065f8f8cd029a83138
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ba0391e31ffcfc5a1014578ecb0f4ca438be9d624b6375c85576ae16bc5232e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272013411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab91f7bbc8af87f468127aaa6c4d7f46fed4fa1f03b3a96b6ca44eed03d0ac0b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:595783a3f598d167206c6ef9968157ab36b14c56ea761ac967a617d0175e3043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb80cc6519fd7656c5c448ecb6492f0f128e6205e7fe37918a6f890540ae75e`

```dockerfile
```

-	Layers:
	-	`sha256:ec078c459c09616751d6dfe1da031fb997ce6e4b3c0186a9010ac193d42acb1b`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 24.0 MB (23969737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c85ef5deff8c5152eea187b98498222982709593fe0a9b470e2d2ac2674072`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 16.4 KB (16352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:86eaec9ba3b5f345090bf92c3f1d7b9f7af369ebc3232876908467ce622e1cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263627507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0faddd2534a5aa74f0c2ef9d3bfd0c2a3887158100b0035a88bf31f902cc3a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:6c91a7bf49129e647903f25f8e6230d265b3ce142eca1b89574be56a4f67ac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23999239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbeb23bfd474150d418c10d58917f13d97b5c67482c6037711f7eae014bb48e`

```dockerfile
```

-	Layers:
	-	`sha256:39841b696bacaee9787953842099270c92814fde3c2a5b2689773992d3ea94d8`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 24.0 MB (23982754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ff4b57c3a0279723aa43f77a38831f8614b194a595453b48f81c0a8a6a3500`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:1813d3c85d7f96ff7d3012d865204583255740182db5d0065f8f8cd029a83138
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:ba0391e31ffcfc5a1014578ecb0f4ca438be9d624b6375c85576ae16bc5232e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272013411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab91f7bbc8af87f468127aaa6c4d7f46fed4fa1f03b3a96b6ca44eed03d0ac0b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:44 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cd56127d190f48e8a2230b0013087395b2046b7ddb4ebc9afdd91ab6ecc64`  
		Last Modified: Wed, 09 Sep 2026 03:31:35 GMT  
		Size: 100.5 MB (100494574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b09b376ac040fab215f20445d3b336a29aeb7a6391f8c726838abd9e32738d7`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d101cf321e989844c4ac044b5cee7c8fbf7e9f9377ce137fb41253893545e3a8`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ac259e0b4e54135543c9d4f452c169a08e61fd9b21d465dd89fa8d8ccaee6`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 23.3 MB (23348955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:595783a3f598d167206c6ef9968157ab36b14c56ea761ac967a617d0175e3043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23986089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb80cc6519fd7656c5c448ecb6492f0f128e6205e7fe37918a6f890540ae75e`

```dockerfile
```

-	Layers:
	-	`sha256:ec078c459c09616751d6dfe1da031fb997ce6e4b3c0186a9010ac193d42acb1b`  
		Last Modified: Wed, 09 Sep 2026 03:31:33 GMT  
		Size: 24.0 MB (23969737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c85ef5deff8c5152eea187b98498222982709593fe0a9b470e2d2ac2674072`  
		Last Modified: Wed, 09 Sep 2026 03:31:32 GMT  
		Size: 16.4 KB (16352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:86eaec9ba3b5f345090bf92c3f1d7b9f7af369ebc3232876908467ce622e1cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263627507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0faddd2534a5aa74f0c2ef9d3bfd0c2a3887158100b0035a88bf31f902cc3a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 02:33:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:33:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 02:33:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 02:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8665be449e86a83d11fd7d4902565359b153087dda740341fff929defe9c42b`  
		Last Modified: Wed, 09 Sep 2026 02:34:14 GMT  
		Size: 98.1 MB (98077760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379256ae1e7e798b14f3cd888e0c959ec39d0ac002a085022cb40d344e3981d3`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 388.4 KB (388368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721a166e322d4351efad038eb6256c493c4639d513ff65cee9286a349d4443f`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b521e9556387a93b2b6b423aaf47ce77b62d731235fbc50995b57a4a2f83e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 22.7 MB (22744826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:6c91a7bf49129e647903f25f8e6230d265b3ce142eca1b89574be56a4f67ac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23999239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbeb23bfd474150d418c10d58917f13d97b5c67482c6037711f7eae014bb48e`

```dockerfile
```

-	Layers:
	-	`sha256:39841b696bacaee9787953842099270c92814fde3c2a5b2689773992d3ea94d8`  
		Last Modified: Wed, 09 Sep 2026 02:34:11 GMT  
		Size: 24.0 MB (23982754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ff4b57c3a0279723aa43f77a38831f8614b194a595453b48f81c0a8a6a3500`  
		Last Modified: Wed, 09 Sep 2026 02:34:10 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:d2bbb43b75b4b73b0552fcedf0aa195d8e9bdd21fe50c02e5c0a791951a55f8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:00e8ee27be2e594747b6ba8c2791a2724e3a38a7fe66366bbd05e4e7da7ce55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147778999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4bb0917c301abad49df5bf1973932e79cbae730e593d630d94faced39cf4b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:b62401e85ea3eac33f1696d7b4e7c70c26bb167aaa43e61921e9f5596ea705d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17943628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde5fd4f4989d3ce519244d802f0b842491b4b1f4f3cbdb98910c31716c3d4d6`

```dockerfile
```

-	Layers:
	-	`sha256:386b2204438e0e6bdbdbe648d366559c5b25d1e360f58bdf0429bca35957589b`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 17.9 MB (17929002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4c951534735bfda98da263c11edf212931c878ca692a450a342aa0189232d3`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2817b1c693fa4cd4d4422c2df755e328c2f1630e99bd5414d411d71a58f93b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142414012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259339ddd8b7f854258d4e1fb37c4989d6f25a14f2d6b9223acd1998d385435`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:4f9da9e88e54fc52b8c0f8dc1e3f8fa3ae8cf5c453cd0e169e11246509945685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17930098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7115df052db516440560d702f4cc517b4d2a493273a9d6c6f0ac93c13a00775`

```dockerfile
```

-	Layers:
	-	`sha256:0e440a9db67d7ea1dbe9ee864072c4ee2f4cc0307bdeaa1dfd5ed35bf830669b`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 17.9 MB (17915347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688ad5a529c3d8c9ed7b76aae1956e85c22df92b5f725acffc95052ba1d0ed2a`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:d2bbb43b75b4b73b0552fcedf0aa195d8e9bdd21fe50c02e5c0a791951a55f8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:00e8ee27be2e594747b6ba8c2791a2724e3a38a7fe66366bbd05e4e7da7ce55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147778999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4bb0917c301abad49df5bf1973932e79cbae730e593d630d94faced39cf4b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:55 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:00 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:36:38 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 02:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:36:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:36:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7a43d012fe74edb3e506d4f7559e3de034e350953f18f35561ee666dfa934`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 1.2 MB (1212718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424ca8e32ad63fc1a991f3f728865951a15772959c85bdd0385ab2aaa6ed0851`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 6.0 MB (5951842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d747d6bc0c88b68985074a914f0e62c428dfc66120b02a31bedf3d96452f6a`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 97.9 KB (97903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2bcc6e0d7c56988ba91775ffaef3927992fb9526089a2146403a698634ee3d`  
		Last Modified: Wed, 09 Sep 2026 02:37:05 GMT  
		Size: 110.8 MB (110766089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba3fcfdb7627f6fe1e51129ee4ef5ad692a2947ff8e9eb3516bf0299a7211c`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:b62401e85ea3eac33f1696d7b4e7c70c26bb167aaa43e61921e9f5596ea705d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17943628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde5fd4f4989d3ce519244d802f0b842491b4b1f4f3cbdb98910c31716c3d4d6`

```dockerfile
```

-	Layers:
	-	`sha256:386b2204438e0e6bdbdbe648d366559c5b25d1e360f58bdf0429bca35957589b`  
		Last Modified: Wed, 09 Sep 2026 02:37:03 GMT  
		Size: 17.9 MB (17929002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4c951534735bfda98da263c11edf212931c878ca692a450a342aa0189232d3`  
		Last Modified: Wed, 09 Sep 2026 02:37:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2817b1c693fa4cd4d4422c2df755e328c2f1630e99bd5414d411d71a58f93b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142414012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259339ddd8b7f854258d4e1fb37c4989d6f25a14f2d6b9223acd1998d385435`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:39:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 01:40:55 GMT
ENV ROS_DISTRO=humble
# Wed, 09 Sep 2026 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:40:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 01:40:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bddee01edb498613b105a34c4130f2da848572201e36cf5fb3300423adff03a`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 1.2 MB (1212881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689441d1be6d178401a5d18063478b90856de2f73d36c5d2ed6ec7939b024de`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 5.9 MB (5911693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d117015c18640441b139baf153187d59a51b4081523dcde75fca284ece0af69c`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 97.9 KB (97943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c2fb207aceae4e92786b3b43645c1ecc27d57d83766730a27cb97958067c12`  
		Last Modified: Wed, 09 Sep 2026 01:41:24 GMT  
		Size: 107.5 MB (107508551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29307c8452e8a0b956f4ebb158707234771e9c96b70069b8f01930456a9850d`  
		Last Modified: Wed, 09 Sep 2026 01:41:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:4f9da9e88e54fc52b8c0f8dc1e3f8fa3ae8cf5c453cd0e169e11246509945685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17930098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7115df052db516440560d702f4cc517b4d2a493273a9d6c6f0ac93c13a00775`

```dockerfile
```

-	Layers:
	-	`sha256:0e440a9db67d7ea1dbe9ee864072c4ee2f4cc0307bdeaa1dfd5ed35bf830669b`  
		Last Modified: Wed, 09 Sep 2026 01:41:21 GMT  
		Size: 17.9 MB (17915347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688ad5a529c3d8c9ed7b76aae1956e85c22df92b5f725acffc95052ba1d0ed2a`  
		Last Modified: Wed, 09 Sep 2026 01:41:20 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:c3706ef0a0aa45413c07803cf433602f543b22e45b4855f6fca955c2d8ecc4e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:efbc8cb259b6346f1c8944ffd49d3fbffd647116ec05006df8b36444a13b7bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296487225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8176cda046a39cbe8e8ce412e761297d271474ba2e27fb8493795be350bc4bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:20 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:10 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d5722aad223f8265d6d143a62eadf286e3e9a54ddd5aef04d8ed08a896fc5`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 683.4 KB (683386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0d7873e577f8e15608310df9ba95733530d4621e29410be6719224b8d27f5`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 6.7 MB (6711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09008c530794caf9438b067efbd54fa43686e5863e10be97da0658049ad5bf`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 94.8 KB (94773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f194b7726392d91142cee504b91409ecebb36f2365ff40819aef42028b6098`  
		Last Modified: Wed, 16 Sep 2026 03:28:41 GMT  
		Size: 120.5 MB (120491933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27308c73173c723bcb372e677c70fd17aafa6e0b47a918460acd13c6c12e99`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428e4ac7f14703072aa425a80263a0ac14f9de36d13f720d2a37bb1779ec1d`  
		Last Modified: Wed, 16 Sep 2026 04:25:14 GMT  
		Size: 110.2 MB (110243224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bec494cb9e76dfeaf4baf6f839fe3d07d066306904c0e67cc4f76d29e4c6de1`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 412.7 KB (412666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d194989e3d1d6448632c64f3de6dcee3cbbcd9a8efe02fdc9e903be307275e32`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2001efbb0e926d39872069cd04e1ba0f1c853e9880c8b9d54b358983030928c`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 28.1 MB (28082927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:db8c8b5afe2132072734b362953fd1f91a2440301fae5914ba0ed1447f3d0690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955a27f35bdd60ab9c489e90177867ae1518eef9f03704680b01945e98c62173`

```dockerfile
```

-	Layers:
	-	`sha256:5817c3ca2a0931441aaff60a06af3c399fc952b70e921232753597fffce49eba`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 24.9 MB (24921672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e82f43ffca53e2b923df26de8d0c02845983363bd2df16e0d9688493f6b043c6`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:064675e31a58565a0eb6e757e20ddf35c9544021869221dd7e5da89f43b13558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285047829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff2feced2a6950e2f0397ec18cdef85ea221095ba2c6a720cc10a2607b7ed5a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:27:52 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276b3ceda33c5f4b672c5aefee267efbd3e14f818eee6a1d0f280451a14900ef`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 683.5 KB (683465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab50484ceb1a6307835cbcf30dab74d1f56f6ecfb14427bbcc1ab15e65828`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 6.7 MB (6726583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a8ca85603e75c177ca03c612414c97c6ee23035ece692dc5a2a96f95a530f`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 94.8 KB (94808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9f63e30e22982dab0312299fa1abafcd461ca629f5e8ed42409fc7ed072dd`  
		Last Modified: Wed, 16 Sep 2026 03:28:23 GMT  
		Size: 115.3 MB (115325032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee5384c387cdf36798cf2b558b789fea6a6bdc7452c670a313e0e7d926d819f`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6927be7c7c57759e48ef07d829d67170bfb7328e6117ba17934dd12edd7e86f5`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 105.7 MB (105663052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcaa75511da49ba8fa4784d367920b4405a535dd6aade114589e880f48d7b62d`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 412.7 KB (412669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746ee5fd6ce1368747504af89c278b3007c4ba51bb0e2bdb3900bc866521e868`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 2.7 KB (2657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f83ec666747268737374b6d85c4cea802d514d88ea638f96165cd1e29756a0`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 27.2 MB (27197786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:0d3b11cd612d50d91f9bcf436a95791eca4a121dbf7abac8573f76e903c4fd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd18cbe2eedd5b4f51fa41557b8b9ac638069587336bb56d4b95ddae091a789`

```dockerfile
```

-	Layers:
	-	`sha256:daecf5e12ebc62f32a30254b4c170075ac7649b0eeab3313a51c88b8238b5039`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 24.9 MB (24943927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e455e24b137d19482bcedac53ceaa271de61c078047b43d02f4738f9047896d7`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:6a5106b1fca69b930e6d08b9d6b0e588b5b6165f6390020ae5ac402be8b3ad1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:60954237b148d6ad4de4b504046c9a6be0408a6b44177fddf5df55d76c8818ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081439940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c418c6bb0ba3bcdb5c901e1bb41327e4f351c68f90292072d1343f0047c9e00a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:20 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:10 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d5722aad223f8265d6d143a62eadf286e3e9a54ddd5aef04d8ed08a896fc5`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 683.4 KB (683386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0d7873e577f8e15608310df9ba95733530d4621e29410be6719224b8d27f5`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 6.7 MB (6711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09008c530794caf9438b067efbd54fa43686e5863e10be97da0658049ad5bf`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 94.8 KB (94773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f194b7726392d91142cee504b91409ecebb36f2365ff40819aef42028b6098`  
		Last Modified: Wed, 16 Sep 2026 03:28:41 GMT  
		Size: 120.5 MB (120491933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27308c73173c723bcb372e677c70fd17aafa6e0b47a918460acd13c6c12e99`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428e4ac7f14703072aa425a80263a0ac14f9de36d13f720d2a37bb1779ec1d`  
		Last Modified: Wed, 16 Sep 2026 04:25:14 GMT  
		Size: 110.2 MB (110243224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bec494cb9e76dfeaf4baf6f839fe3d07d066306904c0e67cc4f76d29e4c6de1`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 412.7 KB (412666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d194989e3d1d6448632c64f3de6dcee3cbbcd9a8efe02fdc9e903be307275e32`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2001efbb0e926d39872069cd04e1ba0f1c853e9880c8b9d54b358983030928c`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 28.1 MB (28082927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e69a9d9bd9a8befb9f9b1e2614c3ee5f1555656917f16b76aa8ea7e4780dc3f`  
		Last Modified: Wed, 16 Sep 2026 05:20:05 GMT  
		Size: 785.0 MB (784952715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:c8986127f0a431dd9f6137d999b7aa1c96213fbef447bb82554a5bb0a443e493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61114020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbb7623f2cd2b74ad4ac3625e1f8dcc2bde2d881651c9958546da77cc03b69e`

```dockerfile
```

-	Layers:
	-	`sha256:0bc1bc8d259a541d879a255ad503573aac74f47bbf51f604a83ec433e1ff7f4a`  
		Last Modified: Wed, 16 Sep 2026 05:19:52 GMT  
		Size: 61.1 MB (61104681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e77b8d36801bfaeddbc109d24c89e07c9c4ab24ceabdd7891cff17d49e9520e`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4c3a78469dd9d55ca641e49683975ba16a6d39544339c8fb96ccd09df1533c38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.2 MB (984162519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4987c6f4191d82597e8bedfd0ee7c662e3d029b1894c6fdfcc45ce67bb7611b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:27:52 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276b3ceda33c5f4b672c5aefee267efbd3e14f818eee6a1d0f280451a14900ef`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 683.5 KB (683465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab50484ceb1a6307835cbcf30dab74d1f56f6ecfb14427bbcc1ab15e65828`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 6.7 MB (6726583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a8ca85603e75c177ca03c612414c97c6ee23035ece692dc5a2a96f95a530f`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 94.8 KB (94808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9f63e30e22982dab0312299fa1abafcd461ca629f5e8ed42409fc7ed072dd`  
		Last Modified: Wed, 16 Sep 2026 03:28:23 GMT  
		Size: 115.3 MB (115325032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee5384c387cdf36798cf2b558b789fea6a6bdc7452c670a313e0e7d926d819f`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6927be7c7c57759e48ef07d829d67170bfb7328e6117ba17934dd12edd7e86f5`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 105.7 MB (105663052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcaa75511da49ba8fa4784d367920b4405a535dd6aade114589e880f48d7b62d`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 412.7 KB (412669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746ee5fd6ce1368747504af89c278b3007c4ba51bb0e2bdb3900bc866521e868`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 2.7 KB (2657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f83ec666747268737374b6d85c4cea802d514d88ea638f96165cd1e29756a0`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 27.2 MB (27197786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6165216db54d79541d96df103b6c083a2ef20e7df1c27d8353711a6a7df9bb4`  
		Last Modified: Wed, 16 Sep 2026 05:20:14 GMT  
		Size: 699.1 MB (699114690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:a9a2cf3c1f73247759279de67981554232cd2f1e37cdb7ebcbde9ab299276108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61044619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3dcbbefb939d8c43928ab9f5ab904f3710699c46ac9780f137afcc242b47f6`

```dockerfile
```

-	Layers:
	-	`sha256:82022ecf68250478346f1c08b336be75382fefb28a9b4206e929e8f99593d37a`  
		Last Modified: Wed, 16 Sep 2026 05:20:03 GMT  
		Size: 61.0 MB (61035200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a90cb3e61152b830d0f567d97ba223a2f0e9111797109d169fb91681203fc902`  
		Last Modified: Wed, 16 Sep 2026 05:20:00 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:6a5106b1fca69b930e6d08b9d6b0e588b5b6165f6390020ae5ac402be8b3ad1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:60954237b148d6ad4de4b504046c9a6be0408a6b44177fddf5df55d76c8818ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081439940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c418c6bb0ba3bcdb5c901e1bb41327e4f351c68f90292072d1343f0047c9e00a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:20 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:10 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d5722aad223f8265d6d143a62eadf286e3e9a54ddd5aef04d8ed08a896fc5`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 683.4 KB (683386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0d7873e577f8e15608310df9ba95733530d4621e29410be6719224b8d27f5`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 6.7 MB (6711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09008c530794caf9438b067efbd54fa43686e5863e10be97da0658049ad5bf`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 94.8 KB (94773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f194b7726392d91142cee504b91409ecebb36f2365ff40819aef42028b6098`  
		Last Modified: Wed, 16 Sep 2026 03:28:41 GMT  
		Size: 120.5 MB (120491933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27308c73173c723bcb372e677c70fd17aafa6e0b47a918460acd13c6c12e99`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428e4ac7f14703072aa425a80263a0ac14f9de36d13f720d2a37bb1779ec1d`  
		Last Modified: Wed, 16 Sep 2026 04:25:14 GMT  
		Size: 110.2 MB (110243224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bec494cb9e76dfeaf4baf6f839fe3d07d066306904c0e67cc4f76d29e4c6de1`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 412.7 KB (412666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d194989e3d1d6448632c64f3de6dcee3cbbcd9a8efe02fdc9e903be307275e32`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2001efbb0e926d39872069cd04e1ba0f1c853e9880c8b9d54b358983030928c`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 28.1 MB (28082927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e69a9d9bd9a8befb9f9b1e2614c3ee5f1555656917f16b76aa8ea7e4780dc3f`  
		Last Modified: Wed, 16 Sep 2026 05:20:05 GMT  
		Size: 785.0 MB (784952715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c8986127f0a431dd9f6137d999b7aa1c96213fbef447bb82554a5bb0a443e493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61114020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbb7623f2cd2b74ad4ac3625e1f8dcc2bde2d881651c9958546da77cc03b69e`

```dockerfile
```

-	Layers:
	-	`sha256:0bc1bc8d259a541d879a255ad503573aac74f47bbf51f604a83ec433e1ff7f4a`  
		Last Modified: Wed, 16 Sep 2026 05:19:52 GMT  
		Size: 61.1 MB (61104681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e77b8d36801bfaeddbc109d24c89e07c9c4ab24ceabdd7891cff17d49e9520e`  
		Last Modified: Wed, 16 Sep 2026 05:19:50 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4c3a78469dd9d55ca641e49683975ba16a6d39544339c8fb96ccd09df1533c38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.2 MB (984162519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4987c6f4191d82597e8bedfd0ee7c662e3d029b1894c6fdfcc45ce67bb7611b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:27:52 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276b3ceda33c5f4b672c5aefee267efbd3e14f818eee6a1d0f280451a14900ef`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 683.5 KB (683465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab50484ceb1a6307835cbcf30dab74d1f56f6ecfb14427bbcc1ab15e65828`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 6.7 MB (6726583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a8ca85603e75c177ca03c612414c97c6ee23035ece692dc5a2a96f95a530f`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 94.8 KB (94808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9f63e30e22982dab0312299fa1abafcd461ca629f5e8ed42409fc7ed072dd`  
		Last Modified: Wed, 16 Sep 2026 03:28:23 GMT  
		Size: 115.3 MB (115325032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee5384c387cdf36798cf2b558b789fea6a6bdc7452c670a313e0e7d926d819f`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6927be7c7c57759e48ef07d829d67170bfb7328e6117ba17934dd12edd7e86f5`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 105.7 MB (105663052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcaa75511da49ba8fa4784d367920b4405a535dd6aade114589e880f48d7b62d`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 412.7 KB (412669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746ee5fd6ce1368747504af89c278b3007c4ba51bb0e2bdb3900bc866521e868`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 2.7 KB (2657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f83ec666747268737374b6d85c4cea802d514d88ea638f96165cd1e29756a0`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 27.2 MB (27197786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6165216db54d79541d96df103b6c083a2ef20e7df1c27d8353711a6a7df9bb4`  
		Last Modified: Wed, 16 Sep 2026 05:20:14 GMT  
		Size: 699.1 MB (699114690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a9a2cf3c1f73247759279de67981554232cd2f1e37cdb7ebcbde9ab299276108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61044619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3dcbbefb939d8c43928ab9f5ab904f3710699c46ac9780f137afcc242b47f6`

```dockerfile
```

-	Layers:
	-	`sha256:82022ecf68250478346f1c08b336be75382fefb28a9b4206e929e8f99593d37a`  
		Last Modified: Wed, 16 Sep 2026 05:20:03 GMT  
		Size: 61.0 MB (61035200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a90cb3e61152b830d0f567d97ba223a2f0e9111797109d169fb91681203fc902`  
		Last Modified: Wed, 16 Sep 2026 05:20:00 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:c3706ef0a0aa45413c07803cf433602f543b22e45b4855f6fca955c2d8ecc4e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:efbc8cb259b6346f1c8944ffd49d3fbffd647116ec05006df8b36444a13b7bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296487225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8176cda046a39cbe8e8ce412e761297d271474ba2e27fb8493795be350bc4bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:20 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:10 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d5722aad223f8265d6d143a62eadf286e3e9a54ddd5aef04d8ed08a896fc5`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 683.4 KB (683386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0d7873e577f8e15608310df9ba95733530d4621e29410be6719224b8d27f5`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 6.7 MB (6711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09008c530794caf9438b067efbd54fa43686e5863e10be97da0658049ad5bf`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 94.8 KB (94773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f194b7726392d91142cee504b91409ecebb36f2365ff40819aef42028b6098`  
		Last Modified: Wed, 16 Sep 2026 03:28:41 GMT  
		Size: 120.5 MB (120491933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27308c73173c723bcb372e677c70fd17aafa6e0b47a918460acd13c6c12e99`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428e4ac7f14703072aa425a80263a0ac14f9de36d13f720d2a37bb1779ec1d`  
		Last Modified: Wed, 16 Sep 2026 04:25:14 GMT  
		Size: 110.2 MB (110243224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bec494cb9e76dfeaf4baf6f839fe3d07d066306904c0e67cc4f76d29e4c6de1`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 412.7 KB (412666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d194989e3d1d6448632c64f3de6dcee3cbbcd9a8efe02fdc9e903be307275e32`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2001efbb0e926d39872069cd04e1ba0f1c853e9880c8b9d54b358983030928c`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 28.1 MB (28082927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:db8c8b5afe2132072734b362953fd1f91a2440301fae5914ba0ed1447f3d0690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955a27f35bdd60ab9c489e90177867ae1518eef9f03704680b01945e98c62173`

```dockerfile
```

-	Layers:
	-	`sha256:5817c3ca2a0931441aaff60a06af3c399fc952b70e921232753597fffce49eba`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 24.9 MB (24921672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e82f43ffca53e2b923df26de8d0c02845983363bd2df16e0d9688493f6b043c6`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:064675e31a58565a0eb6e757e20ddf35c9544021869221dd7e5da89f43b13558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285047829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff2feced2a6950e2f0397ec18cdef85ea221095ba2c6a720cc10a2607b7ed5a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:27:52 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276b3ceda33c5f4b672c5aefee267efbd3e14f818eee6a1d0f280451a14900ef`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 683.5 KB (683465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab50484ceb1a6307835cbcf30dab74d1f56f6ecfb14427bbcc1ab15e65828`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 6.7 MB (6726583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a8ca85603e75c177ca03c612414c97c6ee23035ece692dc5a2a96f95a530f`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 94.8 KB (94808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9f63e30e22982dab0312299fa1abafcd461ca629f5e8ed42409fc7ed072dd`  
		Last Modified: Wed, 16 Sep 2026 03:28:23 GMT  
		Size: 115.3 MB (115325032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee5384c387cdf36798cf2b558b789fea6a6bdc7452c670a313e0e7d926d819f`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6927be7c7c57759e48ef07d829d67170bfb7328e6117ba17934dd12edd7e86f5`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 105.7 MB (105663052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcaa75511da49ba8fa4784d367920b4405a535dd6aade114589e880f48d7b62d`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 412.7 KB (412669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746ee5fd6ce1368747504af89c278b3007c4ba51bb0e2bdb3900bc866521e868`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 2.7 KB (2657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f83ec666747268737374b6d85c4cea802d514d88ea638f96165cd1e29756a0`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 27.2 MB (27197786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:0d3b11cd612d50d91f9bcf436a95791eca4a121dbf7abac8573f76e903c4fd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd18cbe2eedd5b4f51fa41557b8b9ac638069587336bb56d4b95ddae091a789`

```dockerfile
```

-	Layers:
	-	`sha256:daecf5e12ebc62f32a30254b4c170075ac7649b0eeab3313a51c88b8238b5039`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 24.9 MB (24943927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e455e24b137d19482bcedac53ceaa271de61c078047b43d02f4738f9047896d7`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:c3706ef0a0aa45413c07803cf433602f543b22e45b4855f6fca955c2d8ecc4e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:efbc8cb259b6346f1c8944ffd49d3fbffd647116ec05006df8b36444a13b7bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296487225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8176cda046a39cbe8e8ce412e761297d271474ba2e27fb8493795be350bc4bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:20 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:10 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d5722aad223f8265d6d143a62eadf286e3e9a54ddd5aef04d8ed08a896fc5`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 683.4 KB (683386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0d7873e577f8e15608310df9ba95733530d4621e29410be6719224b8d27f5`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 6.7 MB (6711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09008c530794caf9438b067efbd54fa43686e5863e10be97da0658049ad5bf`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 94.8 KB (94773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f194b7726392d91142cee504b91409ecebb36f2365ff40819aef42028b6098`  
		Last Modified: Wed, 16 Sep 2026 03:28:41 GMT  
		Size: 120.5 MB (120491933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27308c73173c723bcb372e677c70fd17aafa6e0b47a918460acd13c6c12e99`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428e4ac7f14703072aa425a80263a0ac14f9de36d13f720d2a37bb1779ec1d`  
		Last Modified: Wed, 16 Sep 2026 04:25:14 GMT  
		Size: 110.2 MB (110243224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bec494cb9e76dfeaf4baf6f839fe3d07d066306904c0e67cc4f76d29e4c6de1`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 412.7 KB (412666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d194989e3d1d6448632c64f3de6dcee3cbbcd9a8efe02fdc9e903be307275e32`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 2.7 KB (2687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2001efbb0e926d39872069cd04e1ba0f1c853e9880c8b9d54b358983030928c`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 28.1 MB (28082927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:db8c8b5afe2132072734b362953fd1f91a2440301fae5914ba0ed1447f3d0690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955a27f35bdd60ab9c489e90177867ae1518eef9f03704680b01945e98c62173`

```dockerfile
```

-	Layers:
	-	`sha256:5817c3ca2a0931441aaff60a06af3c399fc952b70e921232753597fffce49eba`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 24.9 MB (24921672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e82f43ffca53e2b923df26de8d0c02845983363bd2df16e0d9688493f6b043c6`  
		Last Modified: Wed, 16 Sep 2026 04:25:10 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:064675e31a58565a0eb6e757e20ddf35c9544021869221dd7e5da89f43b13558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285047829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff2feced2a6950e2f0397ec18cdef85ea221095ba2c6a720cc10a2607b7ed5a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:27:52 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276b3ceda33c5f4b672c5aefee267efbd3e14f818eee6a1d0f280451a14900ef`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 683.5 KB (683465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab50484ceb1a6307835cbcf30dab74d1f56f6ecfb14427bbcc1ab15e65828`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 6.7 MB (6726583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a8ca85603e75c177ca03c612414c97c6ee23035ece692dc5a2a96f95a530f`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 94.8 KB (94808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9f63e30e22982dab0312299fa1abafcd461ca629f5e8ed42409fc7ed072dd`  
		Last Modified: Wed, 16 Sep 2026 03:28:23 GMT  
		Size: 115.3 MB (115325032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee5384c387cdf36798cf2b558b789fea6a6bdc7452c670a313e0e7d926d819f`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6927be7c7c57759e48ef07d829d67170bfb7328e6117ba17934dd12edd7e86f5`  
		Last Modified: Wed, 16 Sep 2026 04:25:12 GMT  
		Size: 105.7 MB (105663052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcaa75511da49ba8fa4784d367920b4405a535dd6aade114589e880f48d7b62d`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 412.7 KB (412669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746ee5fd6ce1368747504af89c278b3007c4ba51bb0e2bdb3900bc866521e868`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 2.7 KB (2657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f83ec666747268737374b6d85c4cea802d514d88ea638f96165cd1e29756a0`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 27.2 MB (27197786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:0d3b11cd612d50d91f9bcf436a95791eca4a121dbf7abac8573f76e903c4fd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd18cbe2eedd5b4f51fa41557b8b9ac638069587336bb56d4b95ddae091a789`

```dockerfile
```

-	Layers:
	-	`sha256:daecf5e12ebc62f32a30254b4c170075ac7649b0eeab3313a51c88b8238b5039`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 24.9 MB (24943927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e455e24b137d19482bcedac53ceaa271de61c078047b43d02f4738f9047896d7`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:32114cd33511c91307d4f5dea184dcbfb9385860bee9839b772332c8fc103856
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:ff387faa0c8fe671e57ff948e79ea3f06b6446fdf3483c18534b02b797801d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157745721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea7d16c1f1e4839b7acd104090494952589f7f8eb589d84e1dd1b34b172bc04`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:20 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d5722aad223f8265d6d143a62eadf286e3e9a54ddd5aef04d8ed08a896fc5`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 683.4 KB (683386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0d7873e577f8e15608310df9ba95733530d4621e29410be6719224b8d27f5`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 6.7 MB (6711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09008c530794caf9438b067efbd54fa43686e5863e10be97da0658049ad5bf`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 94.8 KB (94773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f194b7726392d91142cee504b91409ecebb36f2365ff40819aef42028b6098`  
		Last Modified: Wed, 16 Sep 2026 03:28:41 GMT  
		Size: 120.5 MB (120491933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27308c73173c723bcb372e677c70fd17aafa6e0b47a918460acd13c6c12e99`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:6d38c8796b9f33ad691d95742103b8f8a9abb4f13685adb17374f50ed215ffb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff5d004e16d7edf0785c1e829da4a3b44e15ec764f7b41b042c5612449da47ce`

```dockerfile
```

-	Layers:
	-	`sha256:12aec67e7c1c485e198e6c4cfc5084319f97742d9c9b7a6f43b211ec30bfe674`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 18.6 MB (18607919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03be2f6d4facc2f8bd49220633629aef4d4ccd58d032ebb92eaa6db9eca1a36a`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e5da8fd0bdf52ea93499c96ca58b54de147d1e60770ffa4033642e37d9abf115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151771665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9df25bdf5d9bb5b0cf8b58c05d2c5431ea73a7a8b5e9c0ca14813a230c31623`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:27:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276b3ceda33c5f4b672c5aefee267efbd3e14f818eee6a1d0f280451a14900ef`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 683.5 KB (683465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab50484ceb1a6307835cbcf30dab74d1f56f6ecfb14427bbcc1ab15e65828`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 6.7 MB (6726583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a8ca85603e75c177ca03c612414c97c6ee23035ece692dc5a2a96f95a530f`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 94.8 KB (94808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9f63e30e22982dab0312299fa1abafcd461ca629f5e8ed42409fc7ed072dd`  
		Last Modified: Wed, 16 Sep 2026 03:28:23 GMT  
		Size: 115.3 MB (115325032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee5384c387cdf36798cf2b558b789fea6a6bdc7452c670a313e0e7d926d819f`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:081fff18eda7afd49fae22fe2f36ddd5906a12f621b36135accb1651d34a991a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219fd3df413b5443da0d71893b4f245f12d9dc4f48089adcdaa71ccb993c8c14`

```dockerfile
```

-	Layers:
	-	`sha256:0c8a89b1b8e446c4588f6d82ebbd63bf1a7f13bd779b96206d02b30e4b128036`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 18.6 MB (18581925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a58429bd28fcf4815cdb961a56ab51e821baa73e2c87e2efea3ec19779e139a`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:32114cd33511c91307d4f5dea184dcbfb9385860bee9839b772332c8fc103856
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:ff387faa0c8fe671e57ff948e79ea3f06b6446fdf3483c18534b02b797801d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157745721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea7d16c1f1e4839b7acd104090494952589f7f8eb589d84e1dd1b34b172bc04`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:20 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:26 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:10 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:28:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d5722aad223f8265d6d143a62eadf286e3e9a54ddd5aef04d8ed08a896fc5`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 683.4 KB (683386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0d7873e577f8e15608310df9ba95733530d4621e29410be6719224b8d27f5`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 6.7 MB (6711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09008c530794caf9438b067efbd54fa43686e5863e10be97da0658049ad5bf`  
		Last Modified: Wed, 16 Sep 2026 03:28:37 GMT  
		Size: 94.8 KB (94773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f194b7726392d91142cee504b91409ecebb36f2365ff40819aef42028b6098`  
		Last Modified: Wed, 16 Sep 2026 03:28:41 GMT  
		Size: 120.5 MB (120491933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27308c73173c723bcb372e677c70fd17aafa6e0b47a918460acd13c6c12e99`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6d38c8796b9f33ad691d95742103b8f8a9abb4f13685adb17374f50ed215ffb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff5d004e16d7edf0785c1e829da4a3b44e15ec764f7b41b042c5612449da47ce`

```dockerfile
```

-	Layers:
	-	`sha256:12aec67e7c1c485e198e6c4cfc5084319f97742d9c9b7a6f43b211ec30bfe674`  
		Last Modified: Wed, 16 Sep 2026 03:28:39 GMT  
		Size: 18.6 MB (18607919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03be2f6d4facc2f8bd49220633629aef4d4ccd58d032ebb92eaa6db9eca1a36a`  
		Last Modified: Wed, 16 Sep 2026 03:28:38 GMT  
		Size: 14.6 KB (14608 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e5da8fd0bdf52ea93499c96ca58b54de147d1e60770ffa4033642e37d9abf115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151771665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9df25bdf5d9bb5b0cf8b58c05d2c5431ea73a7a8b5e9c0ca14813a230c31623`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:09 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:27:52 GMT
ENV ROS_DISTRO=jazzy
# Wed, 16 Sep 2026 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:27:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:27:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276b3ceda33c5f4b672c5aefee267efbd3e14f818eee6a1d0f280451a14900ef`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 683.5 KB (683465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab50484ceb1a6307835cbcf30dab74d1f56f6ecfb14427bbcc1ab15e65828`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 6.7 MB (6726583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327a8ca85603e75c177ca03c612414c97c6ee23035ece692dc5a2a96f95a530f`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 94.8 KB (94808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9f63e30e22982dab0312299fa1abafcd461ca629f5e8ed42409fc7ed072dd`  
		Last Modified: Wed, 16 Sep 2026 03:28:23 GMT  
		Size: 115.3 MB (115325032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee5384c387cdf36798cf2b558b789fea6a6bdc7452c670a313e0e7d926d819f`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:081fff18eda7afd49fae22fe2f36ddd5906a12f621b36135accb1651d34a991a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219fd3df413b5443da0d71893b4f245f12d9dc4f48089adcdaa71ccb993c8c14`

```dockerfile
```

-	Layers:
	-	`sha256:0c8a89b1b8e446c4588f6d82ebbd63bf1a7f13bd779b96206d02b30e4b128036`  
		Last Modified: Wed, 16 Sep 2026 03:28:21 GMT  
		Size: 18.6 MB (18581925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a58429bd28fcf4815cdb961a56ab51e821baa73e2c87e2efea3ec19779e139a`  
		Last Modified: Wed, 16 Sep 2026 03:28:20 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:8e7b828a8f24416dd29fde258d81ad49c87fb9becc1289cf69c9d28d36fa78f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:bf3b26145e9b1ea5534521e1361daea7ad02cc56bd11ce6008a1cee7ca41c60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296946939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d9626d80d022c513a9289700efdc13df9fdd01f05a0c59b7f0ef7fdb4d5260`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a8b9fc2a4117a0a4905a6527e1c9ec6fdf6fe52212b7f1e33c4e559988ad12`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 110.2 MB (110245387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf82810e44c2fe195860cd330b812e5c9894c973139ea8e07928d57ae1f21f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 374.0 KB (373989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2242ac7654481f1cd8c57b87668b2b2284e4c6d889a181de0a88a762111425dd`  
		Last Modified: Wed, 16 Sep 2026 04:25:08 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071576c24e45af6133ccba95c04c37e26cb936524de683ea719558581a4184a1`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 27.9 MB (27891930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:74c639541b8c945e1f5f64a1e13330a6b6987304fee3b89008003bf53de151c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24890274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e779f382b2c1e4f5f047cdcf506d9aed915fb74cc278182957d55071cc6fec16`

```dockerfile
```

-	Layers:
	-	`sha256:e708669f1e3c9077a6f8e6bf9ca1984ac258a8080bc341821b59c8f33df1140f`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 24.9 MB (24873929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb055b74c2d95b5a6db8aa9170fb6f81055728c2ba59a1685d4288c94f5c068f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 16.3 KB (16345 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6cb5139fba80536ba16668fab407df1d6aff4db94b14dd8afc26c02e6f680628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285474314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf9b7c72afa79e6d3efaa758119291300d1216bc2493a467976dbcb534447d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc774af47f1388884f36155e7d6823b6417b4ca8f23b9c10615e1460260f420`  
		Last Modified: Wed, 16 Sep 2026 04:25:19 GMT  
		Size: 105.7 MB (105665664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057d940f8e063ec11c47478b4f16b45bd7345797946462bdd585676f72dd81b7`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 374.0 KB (373998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948a7af8942c28f8ea3588429f182fef0ec66ea06d6f372aa4d9081aea1c0439`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6714446d220a9872eeea99d5ffed3c37e5214ad4110b2f86933351eea601dd4e`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 27.0 MB (27008123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:a882dbcda690edbf711123095abd9f1394cd68df1683b10a3805fbb56c34b6f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24912673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f1bad7034b380bde2108cb463b74839c91448ccc4a4a38687f5d031d830c02`

```dockerfile
```

-	Layers:
	-	`sha256:ecae2882a3a99b6775a1ad50f8479b8412b409625d6757262ccdcb471271d126`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 24.9 MB (24896189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2df1b08388838f4924eabc642d57c90f8995fab4fce6ff7515bd7b6b99c762b`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:33e6206ddbc9959736d5c1a9224c7555997e1d8671eaa8753d8d7a958d12f787
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:541fe0a74cfe64c9be55ab3a5c128d019a6dded1833fbf067928bcd1bd4b6793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081936340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc4a400ff585d6ee02af4e9985e405ef3e6cbe4712e36065af72239315e4dd6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a8b9fc2a4117a0a4905a6527e1c9ec6fdf6fe52212b7f1e33c4e559988ad12`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 110.2 MB (110245387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf82810e44c2fe195860cd330b812e5c9894c973139ea8e07928d57ae1f21f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 374.0 KB (373989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2242ac7654481f1cd8c57b87668b2b2284e4c6d889a181de0a88a762111425dd`  
		Last Modified: Wed, 16 Sep 2026 04:25:08 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071576c24e45af6133ccba95c04c37e26cb936524de683ea719558581a4184a1`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 27.9 MB (27891930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42baeb04b9c5109807ac6a5158098aed38e5fcfc40db7373eedc7d98052f73d5`  
		Last Modified: Wed, 16 Sep 2026 05:20:15 GMT  
		Size: 785.0 MB (784989401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:8ab064a19052b81add31424daeed326c13c4e3f17e30ad6f460ae58e43ba7e61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61070933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c5b6fc655c9e25b5d8c9c1e56226c0ae04207b3b22b5bd144081fa176eb894`

```dockerfile
```

-	Layers:
	-	`sha256:4e13d1ee5252e8e609fe6387f9d1a7138408b477864baacf1d34ffff866b8d3e`  
		Last Modified: Wed, 16 Sep 2026 05:20:03 GMT  
		Size: 61.1 MB (61061582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4abfe0aa6b17f4b8c32801e8457f84150e329b27349c31e21ee1d45e2988a91`  
		Last Modified: Wed, 16 Sep 2026 05:20:00 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b55ca2b550f6355b59ad7eed3607346f5e144ee73564a65cb8950d7a7720cea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.6 MB (984613020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a227cf2b7b5d7fd4a8eeea72cdef2aeedf43a3ed4c13abf47e02b313097fd31`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc774af47f1388884f36155e7d6823b6417b4ca8f23b9c10615e1460260f420`  
		Last Modified: Wed, 16 Sep 2026 04:25:19 GMT  
		Size: 105.7 MB (105665664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057d940f8e063ec11c47478b4f16b45bd7345797946462bdd585676f72dd81b7`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 374.0 KB (373998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948a7af8942c28f8ea3588429f182fef0ec66ea06d6f372aa4d9081aea1c0439`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6714446d220a9872eeea99d5ffed3c37e5214ad4110b2f86933351eea601dd4e`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 27.0 MB (27008123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9f92c448f448ae6a41e21e941ce5022331338ed601e2bd0d42ab4a1fcc3eca`  
		Last Modified: Wed, 16 Sep 2026 05:19:53 GMT  
		Size: 699.1 MB (699138706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:dd6c1f56cc3759fd3d9a7ddcf59e1787eb7d7d264734d24c568a485c94d62067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61001538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce7c29f5058e7b46b75c467f44ecb7a3a380da5db9afe4f4692bbb76f27d5b5`

```dockerfile
```

-	Layers:
	-	`sha256:912294a6a0f66824d6ccfa73fcda6f45028c32f78e8b9ab47181409bc28e1310`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 61.0 MB (60992106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceb2da5d1a560d83aa1f4e496f509880ff6f29335971a21e72182ab2e9ff261a`  
		Last Modified: Wed, 16 Sep 2026 05:19:32 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:33e6206ddbc9959736d5c1a9224c7555997e1d8671eaa8753d8d7a958d12f787
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:541fe0a74cfe64c9be55ab3a5c128d019a6dded1833fbf067928bcd1bd4b6793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1081936340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc4a400ff585d6ee02af4e9985e405ef3e6cbe4712e36065af72239315e4dd6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a8b9fc2a4117a0a4905a6527e1c9ec6fdf6fe52212b7f1e33c4e559988ad12`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 110.2 MB (110245387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf82810e44c2fe195860cd330b812e5c9894c973139ea8e07928d57ae1f21f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 374.0 KB (373989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2242ac7654481f1cd8c57b87668b2b2284e4c6d889a181de0a88a762111425dd`  
		Last Modified: Wed, 16 Sep 2026 04:25:08 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071576c24e45af6133ccba95c04c37e26cb936524de683ea719558581a4184a1`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 27.9 MB (27891930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42baeb04b9c5109807ac6a5158098aed38e5fcfc40db7373eedc7d98052f73d5`  
		Last Modified: Wed, 16 Sep 2026 05:20:15 GMT  
		Size: 785.0 MB (784989401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:8ab064a19052b81add31424daeed326c13c4e3f17e30ad6f460ae58e43ba7e61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61070933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c5b6fc655c9e25b5d8c9c1e56226c0ae04207b3b22b5bd144081fa176eb894`

```dockerfile
```

-	Layers:
	-	`sha256:4e13d1ee5252e8e609fe6387f9d1a7138408b477864baacf1d34ffff866b8d3e`  
		Last Modified: Wed, 16 Sep 2026 05:20:03 GMT  
		Size: 61.1 MB (61061582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4abfe0aa6b17f4b8c32801e8457f84150e329b27349c31e21ee1d45e2988a91`  
		Last Modified: Wed, 16 Sep 2026 05:20:00 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b55ca2b550f6355b59ad7eed3607346f5e144ee73564a65cb8950d7a7720cea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.6 MB (984613020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a227cf2b7b5d7fd4a8eeea72cdef2aeedf43a3ed4c13abf47e02b313097fd31`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:16:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc774af47f1388884f36155e7d6823b6417b4ca8f23b9c10615e1460260f420`  
		Last Modified: Wed, 16 Sep 2026 04:25:19 GMT  
		Size: 105.7 MB (105665664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057d940f8e063ec11c47478b4f16b45bd7345797946462bdd585676f72dd81b7`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 374.0 KB (373998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948a7af8942c28f8ea3588429f182fef0ec66ea06d6f372aa4d9081aea1c0439`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6714446d220a9872eeea99d5ffed3c37e5214ad4110b2f86933351eea601dd4e`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 27.0 MB (27008123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9f92c448f448ae6a41e21e941ce5022331338ed601e2bd0d42ab4a1fcc3eca`  
		Last Modified: Wed, 16 Sep 2026 05:19:53 GMT  
		Size: 699.1 MB (699138706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:dd6c1f56cc3759fd3d9a7ddcf59e1787eb7d7d264734d24c568a485c94d62067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61001538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce7c29f5058e7b46b75c467f44ecb7a3a380da5db9afe4f4692bbb76f27d5b5`

```dockerfile
```

-	Layers:
	-	`sha256:912294a6a0f66824d6ccfa73fcda6f45028c32f78e8b9ab47181409bc28e1310`  
		Last Modified: Wed, 16 Sep 2026 05:19:34 GMT  
		Size: 61.0 MB (60992106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceb2da5d1a560d83aa1f4e496f509880ff6f29335971a21e72182ab2e9ff261a`  
		Last Modified: Wed, 16 Sep 2026 05:19:32 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:8e7b828a8f24416dd29fde258d81ad49c87fb9becc1289cf69c9d28d36fa78f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:bf3b26145e9b1ea5534521e1361daea7ad02cc56bd11ce6008a1cee7ca41c60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296946939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d9626d80d022c513a9289700efdc13df9fdd01f05a0c59b7f0ef7fdb4d5260`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a8b9fc2a4117a0a4905a6527e1c9ec6fdf6fe52212b7f1e33c4e559988ad12`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 110.2 MB (110245387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf82810e44c2fe195860cd330b812e5c9894c973139ea8e07928d57ae1f21f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 374.0 KB (373989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2242ac7654481f1cd8c57b87668b2b2284e4c6d889a181de0a88a762111425dd`  
		Last Modified: Wed, 16 Sep 2026 04:25:08 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071576c24e45af6133ccba95c04c37e26cb936524de683ea719558581a4184a1`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 27.9 MB (27891930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:74c639541b8c945e1f5f64a1e13330a6b6987304fee3b89008003bf53de151c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24890274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e779f382b2c1e4f5f047cdcf506d9aed915fb74cc278182957d55071cc6fec16`

```dockerfile
```

-	Layers:
	-	`sha256:e708669f1e3c9077a6f8e6bf9ca1984ac258a8080bc341821b59c8f33df1140f`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 24.9 MB (24873929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb055b74c2d95b5a6db8aa9170fb6f81055728c2ba59a1685d4288c94f5c068f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 16.3 KB (16345 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6cb5139fba80536ba16668fab407df1d6aff4db94b14dd8afc26c02e6f680628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285474314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf9b7c72afa79e6d3efaa758119291300d1216bc2493a467976dbcb534447d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc774af47f1388884f36155e7d6823b6417b4ca8f23b9c10615e1460260f420`  
		Last Modified: Wed, 16 Sep 2026 04:25:19 GMT  
		Size: 105.7 MB (105665664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057d940f8e063ec11c47478b4f16b45bd7345797946462bdd585676f72dd81b7`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 374.0 KB (373998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948a7af8942c28f8ea3588429f182fef0ec66ea06d6f372aa4d9081aea1c0439`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6714446d220a9872eeea99d5ffed3c37e5214ad4110b2f86933351eea601dd4e`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 27.0 MB (27008123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:a882dbcda690edbf711123095abd9f1394cd68df1683b10a3805fbb56c34b6f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24912673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f1bad7034b380bde2108cb463b74839c91448ccc4a4a38687f5d031d830c02`

```dockerfile
```

-	Layers:
	-	`sha256:ecae2882a3a99b6775a1ad50f8479b8412b409625d6757262ccdcb471271d126`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 24.9 MB (24896189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2df1b08388838f4924eabc642d57c90f8995fab4fce6ff7515bd7b6b99c762b`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:8e7b828a8f24416dd29fde258d81ad49c87fb9becc1289cf69c9d28d36fa78f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:bf3b26145e9b1ea5534521e1361daea7ad02cc56bd11ce6008a1cee7ca41c60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296946939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d9626d80d022c513a9289700efdc13df9fdd01f05a0c59b7f0ef7fdb4d5260`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a8b9fc2a4117a0a4905a6527e1c9ec6fdf6fe52212b7f1e33c4e559988ad12`  
		Last Modified: Wed, 16 Sep 2026 04:25:11 GMT  
		Size: 110.2 MB (110245387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf82810e44c2fe195860cd330b812e5c9894c973139ea8e07928d57ae1f21f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 374.0 KB (373989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2242ac7654481f1cd8c57b87668b2b2284e4c6d889a181de0a88a762111425dd`  
		Last Modified: Wed, 16 Sep 2026 04:25:08 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071576c24e45af6133ccba95c04c37e26cb936524de683ea719558581a4184a1`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 27.9 MB (27891930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:74c639541b8c945e1f5f64a1e13330a6b6987304fee3b89008003bf53de151c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24890274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e779f382b2c1e4f5f047cdcf506d9aed915fb74cc278182957d55071cc6fec16`

```dockerfile
```

-	Layers:
	-	`sha256:e708669f1e3c9077a6f8e6bf9ca1984ac258a8080bc341821b59c8f33df1140f`  
		Last Modified: Wed, 16 Sep 2026 04:25:09 GMT  
		Size: 24.9 MB (24873929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb055b74c2d95b5a6db8aa9170fb6f81055728c2ba59a1685d4288c94f5c068f`  
		Last Modified: Wed, 16 Sep 2026 04:25:07 GMT  
		Size: 16.3 KB (16345 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6cb5139fba80536ba16668fab407df1d6aff4db94b14dd8afc26c02e6f680628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285474314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf9b7c72afa79e6d3efaa758119291300d1216bc2493a467976dbcb534447d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc774af47f1388884f36155e7d6823b6417b4ca8f23b9c10615e1460260f420`  
		Last Modified: Wed, 16 Sep 2026 04:25:19 GMT  
		Size: 105.7 MB (105665664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057d940f8e063ec11c47478b4f16b45bd7345797946462bdd585676f72dd81b7`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 374.0 KB (373998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948a7af8942c28f8ea3588429f182fef0ec66ea06d6f372aa4d9081aea1c0439`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6714446d220a9872eeea99d5ffed3c37e5214ad4110b2f86933351eea601dd4e`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 27.0 MB (27008123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:a882dbcda690edbf711123095abd9f1394cd68df1683b10a3805fbb56c34b6f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24912673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f1bad7034b380bde2108cb463b74839c91448ccc4a4a38687f5d031d830c02`

```dockerfile
```

-	Layers:
	-	`sha256:ecae2882a3a99b6775a1ad50f8479b8412b409625d6757262ccdcb471271d126`  
		Last Modified: Wed, 16 Sep 2026 04:25:17 GMT  
		Size: 24.9 MB (24896189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2df1b08388838f4924eabc642d57c90f8995fab4fce6ff7515bd7b6b99c762b`  
		Last Modified: Wed, 16 Sep 2026 04:25:16 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:d67e97ffdcccf446f5e16f609f77e94ebe13ab723ee33376affbd9b54a5df776
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:0769e52bd1c90b97cfaa62b0f0a05a61eaf1c7ae5d252cd84a7871cd02c86eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158432969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99378eb35579681c305cba3575b091d042cc891060d7a5e7924ba6bd2b64785d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:75aa117b470da0bdf2af63bc0dfc94a197558b6ef8718602fec13c2716483a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18628898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693aecf9be42bbd5d4d4761d9564bd77515afc2e8ad09682a0c6a0d46ff049c2`

```dockerfile
```

-	Layers:
	-	`sha256:74d19e2483c8f4a0a1893266f02d92edb777c8187eda44a35495ad21e3f5e0d9`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 18.6 MB (18614277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad7e88f2b8c8b2b8595104d2724080a17e1a968b1122b3e5dccff94b87c9a75f`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cd585924cf978bcb221a459731c17b0e87beb33483af34c45e4e89034f16c3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152423877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b46b0482d92002a972e697752454dff2095354f78e855c30be781f3133a7c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:196e07f700d43482fc9cd1b3bb04d3d2af998171fe5f71c0a3e7ad5e322efcd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18603034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0617d3b4354b2636f9c9959ab247aa183199014639932550a388c1c64826ba60`

```dockerfile
```

-	Layers:
	-	`sha256:cb8ba30f8f265b33d0858ef4c9cbe959e1045c07deb60a25771b734644e8ecd0`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 18.6 MB (18588288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:620f192d5f044899cb5da5b4b3f8c0b3a1baabe413929e1656647318307127af`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:d67e97ffdcccf446f5e16f609f77e94ebe13ab723ee33376affbd9b54a5df776
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:0769e52bd1c90b97cfaa62b0f0a05a61eaf1c7ae5d252cd84a7871cd02c86eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158432969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99378eb35579681c305cba3575b091d042cc891060d7a5e7924ba6bd2b64785d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:18 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1557bb60e7451b48abc3f20dadc74b3c175a9bd6144658f7b817942a2ceca07`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 683.4 KB (683390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35603fe7d60ec83cb8a43974b6fa7fd4ed7ce5c18032b94cc59cc7bfadb2f09a`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 6.7 MB (6711360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ba1248908c659b35f33e69231cf1d9bd93c3505d899f2302146a11cb440504`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 94.8 KB (94775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3972d4f761bfef2810026cccd2ffb0bed6c2a41cea5ccd6de4149420c2bd06`  
		Last Modified: Wed, 16 Sep 2026 03:28:47 GMT  
		Size: 121.2 MB (121179131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129220389dcb270b372e9adc1e2dd350a4f02ee97ed7e167d4b145ba28076052`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:75aa117b470da0bdf2af63bc0dfc94a197558b6ef8718602fec13c2716483a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18628898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693aecf9be42bbd5d4d4761d9564bd77515afc2e8ad09682a0c6a0d46ff049c2`

```dockerfile
```

-	Layers:
	-	`sha256:74d19e2483c8f4a0a1893266f02d92edb777c8187eda44a35495ad21e3f5e0d9`  
		Last Modified: Wed, 16 Sep 2026 03:28:45 GMT  
		Size: 18.6 MB (18614277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad7e88f2b8c8b2b8595104d2724080a17e1a968b1122b3e5dccff94b87c9a75f`  
		Last Modified: Wed, 16 Sep 2026 03:28:44 GMT  
		Size: 14.6 KB (14621 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cd585924cf978bcb221a459731c17b0e87beb33483af34c45e4e89034f16c3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152423877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b46b0482d92002a972e697752454dff2095354f78e855c30be781f3133a7c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:29 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:35 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:21 GMT
ENV ROS_DISTRO=kilted
# Wed, 16 Sep 2026 03:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf10216e1dd5ba871e52105e48e78398f8cfe4d9ef03c4303f536dd28862f5f`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 683.5 KB (683460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39263a8db9e2ee558a8d66412a4f400ce9fb09d3eedf497559219c66e93c480`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 6.7 MB (6726624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3d7bc506a5fba9ce059ed283905da96d8c2e8e9d6945371625b7edc8e77120`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 94.8 KB (94830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c766dd8b9feb00d14f838e3590607ea491532c88c894a68f2037dfe27605e60`  
		Last Modified: Wed, 16 Sep 2026 03:28:53 GMT  
		Size: 116.0 MB (115977186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:196e07f700d43482fc9cd1b3bb04d3d2af998171fe5f71c0a3e7ad5e322efcd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18603034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0617d3b4354b2636f9c9959ab247aa183199014639932550a388c1c64826ba60`

```dockerfile
```

-	Layers:
	-	`sha256:cb8ba30f8f265b33d0858ef4c9cbe959e1045c07deb60a25771b734644e8ecd0`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 18.6 MB (18588288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:620f192d5f044899cb5da5b4b3f8c0b3a1baabe413929e1656647318307127af`  
		Last Modified: Wed, 16 Sep 2026 03:28:50 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:0c19f326a339ed770ef1d4c0646a8b53bdb49dd5ff74b6de41ebdb8ac21e1806
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:45cdbd74861b4c16297dd40f566c03182c13eebc455259f9f3a260550953c21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (340036070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4e49b0df4990292819d516c5e6e87e12338f933070f8777dba1505a6ffa7ab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:27:27 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:46 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d759a045a246ce6e05717356516ea18d875c9e9c47455770effe5d7fc0c3f69`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 741.4 KB (741397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b143b82a8c45baf842c25190669724c0b36f4cdb40211175a7d47cea89ec36c`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 9.8 MB (9783609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc56c88b8cad7ced9d675ce02c0d6d6c5f2f4f964418778d6f44c3537e2c02`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 91.5 KB (91527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895a3c7004e77a5909477d0d839274a3535854863e4c01b45bef1f39e1706a6b`  
		Last Modified: Wed, 16 Sep 2026 03:29:31 GMT  
		Size: 136.7 MB (136695299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d649c4790902356ad11e968453d052c84df2847fce69acc81dee170c83763d8`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9a73edc63f8d46d8e19c5b3620fc4974854e6e74f45ca59d055296c1c0bcb0`  
		Last Modified: Wed, 16 Sep 2026 04:25:23 GMT  
		Size: 124.9 MB (124902631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb763387f3742508b99200797c74b1e782c2ac16237f06a22905040dbcecf9f`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 401.3 KB (401263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a1373f26727b78bf3ef5d688b479832642f85a7832878fed77362c1e4d7314`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676cfcfa8dbcb06da162595e27bc8d361e85905fe4b320b4a05aa4bab27d8644`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 25.7 MB (25715839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:f4986d35978cd6d9c7a51d4f0221d26bed4c5d1239ea2f318ed08af0337c3805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29151084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6669b61ec5a5b72c5cd67910a45df01da13d2057883ab66ee085eb1b127acb2`

```dockerfile
```

-	Layers:
	-	`sha256:2ef772f5534429da1ae8c0aac5b3a210de950e24ecc2f5c85fa65c110bcdfdd5`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 29.1 MB (29133634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:236011bea275044b99cbd16ad4b2b2f9ae0b05bede00d487e58828018dd29ef3`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a2dbd538c006b7187b60d6afcaa8eace1f0864e8c2649a654013f5057841355d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.8 MB (324787946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6bf070076687f06d6c19ed9e99a9d37695f5b3c0e44d6c41eeaea5c4f0481e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:32 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b145156dc8b7ce528db9261cdce53a349c060425a05c6e37496a851f253ff22b`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 741.8 KB (741811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4d6c2f45d228b2a875ba3b2c08dc073bfb81119a830d22dc4f31367769246`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 9.6 MB (9607152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5467e62ab996d1b0f839d6f7ffc7b5836d2069c70d98455940aad519b902f2`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 92.0 KB (91997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c432d7dc61381853fc1026e01f91b9b914a53d6a12df5e2f8a88fbffce09aa`  
		Last Modified: Wed, 16 Sep 2026 03:29:13 GMT  
		Size: 130.1 MB (130064776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9374cdd44b5fa0f74fbb731f9bfa737c63c079ba1ecf3b43f66be9417778fb`  
		Last Modified: Wed, 16 Sep 2026 04:25:33 GMT  
		Size: 118.3 MB (118326659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ce62de59712d66bef65965c35438fc986f9b0e78458190c7b6f66d65bad187`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 401.3 KB (401261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39973489f573451919a17ffc1eeeb8fe19259410f5be9fd8a3632ab18d0cbff4`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 130.9 KB (130942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8cb39c80654501a79518705828443b3a7d06146df3e28970d329f7a710d07de`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 24.7 MB (24666677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:f5577a35e6c4f5065af08949ac2e90babf8b0d5dffb48ed2a5054cc01d8419fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29215865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e988492bf28041f1151011e7b871fbc879403882faba0fdf34ad66e974aa86`

```dockerfile
```

-	Layers:
	-	`sha256:4a10c67bd899bd80a1e737359e735dd83e878a17ba21faa111f967ab282abc80`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 29.2 MB (29198266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4581d7532fcc499ebf80e04f48c2a6ecc33d1a77c24df6e3248655e4ba0706`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:0c19f326a339ed770ef1d4c0646a8b53bdb49dd5ff74b6de41ebdb8ac21e1806
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:45cdbd74861b4c16297dd40f566c03182c13eebc455259f9f3a260550953c21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (340036070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4e49b0df4990292819d516c5e6e87e12338f933070f8777dba1505a6ffa7ab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:27:27 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:46 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d759a045a246ce6e05717356516ea18d875c9e9c47455770effe5d7fc0c3f69`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 741.4 KB (741397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b143b82a8c45baf842c25190669724c0b36f4cdb40211175a7d47cea89ec36c`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 9.8 MB (9783609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc56c88b8cad7ced9d675ce02c0d6d6c5f2f4f964418778d6f44c3537e2c02`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 91.5 KB (91527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895a3c7004e77a5909477d0d839274a3535854863e4c01b45bef1f39e1706a6b`  
		Last Modified: Wed, 16 Sep 2026 03:29:31 GMT  
		Size: 136.7 MB (136695299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d649c4790902356ad11e968453d052c84df2847fce69acc81dee170c83763d8`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9a73edc63f8d46d8e19c5b3620fc4974854e6e74f45ca59d055296c1c0bcb0`  
		Last Modified: Wed, 16 Sep 2026 04:25:23 GMT  
		Size: 124.9 MB (124902631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb763387f3742508b99200797c74b1e782c2ac16237f06a22905040dbcecf9f`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 401.3 KB (401263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a1373f26727b78bf3ef5d688b479832642f85a7832878fed77362c1e4d7314`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676cfcfa8dbcb06da162595e27bc8d361e85905fe4b320b4a05aa4bab27d8644`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 25.7 MB (25715839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:f4986d35978cd6d9c7a51d4f0221d26bed4c5d1239ea2f318ed08af0337c3805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29151084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6669b61ec5a5b72c5cd67910a45df01da13d2057883ab66ee085eb1b127acb2`

```dockerfile
```

-	Layers:
	-	`sha256:2ef772f5534429da1ae8c0aac5b3a210de950e24ecc2f5c85fa65c110bcdfdd5`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 29.1 MB (29133634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:236011bea275044b99cbd16ad4b2b2f9ae0b05bede00d487e58828018dd29ef3`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a2dbd538c006b7187b60d6afcaa8eace1f0864e8c2649a654013f5057841355d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.8 MB (324787946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6bf070076687f06d6c19ed9e99a9d37695f5b3c0e44d6c41eeaea5c4f0481e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:32 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b145156dc8b7ce528db9261cdce53a349c060425a05c6e37496a851f253ff22b`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 741.8 KB (741811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4d6c2f45d228b2a875ba3b2c08dc073bfb81119a830d22dc4f31367769246`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 9.6 MB (9607152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5467e62ab996d1b0f839d6f7ffc7b5836d2069c70d98455940aad519b902f2`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 92.0 KB (91997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c432d7dc61381853fc1026e01f91b9b914a53d6a12df5e2f8a88fbffce09aa`  
		Last Modified: Wed, 16 Sep 2026 03:29:13 GMT  
		Size: 130.1 MB (130064776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9374cdd44b5fa0f74fbb731f9bfa737c63c079ba1ecf3b43f66be9417778fb`  
		Last Modified: Wed, 16 Sep 2026 04:25:33 GMT  
		Size: 118.3 MB (118326659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ce62de59712d66bef65965c35438fc986f9b0e78458190c7b6f66d65bad187`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 401.3 KB (401261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39973489f573451919a17ffc1eeeb8fe19259410f5be9fd8a3632ab18d0cbff4`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 130.9 KB (130942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8cb39c80654501a79518705828443b3a7d06146df3e28970d329f7a710d07de`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 24.7 MB (24666677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:f5577a35e6c4f5065af08949ac2e90babf8b0d5dffb48ed2a5054cc01d8419fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29215865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e988492bf28041f1151011e7b871fbc879403882faba0fdf34ad66e974aa86`

```dockerfile
```

-	Layers:
	-	`sha256:4a10c67bd899bd80a1e737359e735dd83e878a17ba21faa111f967ab282abc80`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 29.2 MB (29198266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4581d7532fcc499ebf80e04f48c2a6ecc33d1a77c24df6e3248655e4ba0706`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:b3268d03ff1b9069627d215cdac870f83faad2425d17ce0d8d56a65c15b878b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:8c726172107224d64fcb97b4e91905f3c7a6ea70cf6764800e5b761c5d4bdbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528621517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c8dcbeb229e01d94f4e30c76a3728b353f1cd1185dcdcd2b2a851dba34bb7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:27:27 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:46 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d759a045a246ce6e05717356516ea18d875c9e9c47455770effe5d7fc0c3f69`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 741.4 KB (741397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b143b82a8c45baf842c25190669724c0b36f4cdb40211175a7d47cea89ec36c`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 9.8 MB (9783609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc56c88b8cad7ced9d675ce02c0d6d6c5f2f4f964418778d6f44c3537e2c02`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 91.5 KB (91527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895a3c7004e77a5909477d0d839274a3535854863e4c01b45bef1f39e1706a6b`  
		Last Modified: Wed, 16 Sep 2026 03:29:31 GMT  
		Size: 136.7 MB (136695299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d649c4790902356ad11e968453d052c84df2847fce69acc81dee170c83763d8`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9a73edc63f8d46d8e19c5b3620fc4974854e6e74f45ca59d055296c1c0bcb0`  
		Last Modified: Wed, 16 Sep 2026 04:25:23 GMT  
		Size: 124.9 MB (124902631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb763387f3742508b99200797c74b1e782c2ac16237f06a22905040dbcecf9f`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 401.3 KB (401263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a1373f26727b78bf3ef5d688b479832642f85a7832878fed77362c1e4d7314`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676cfcfa8dbcb06da162595e27bc8d361e85905fe4b320b4a05aa4bab27d8644`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 25.7 MB (25715839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30df696d1cc905dd460df7fca837dbec4388c0d23bd4536cef4dc59bc81603d1`  
		Last Modified: Wed, 16 Sep 2026 05:21:57 GMT  
		Size: 1.2 GB (1188585447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:750924906344084362afa69ca24b7b00c998f718c480a04640926513138437fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64353110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf8201e59e2aacb22e242ee7944251d3f44f62fc5d597dad5e927f1c706ac9`

```dockerfile
```

-	Layers:
	-	`sha256:73c51da0328a03051b73ea2ac4507be0694a0e10f26426db00b37ddde3f2a7da`  
		Last Modified: Wed, 16 Sep 2026 05:21:40 GMT  
		Size: 64.3 MB (64343417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81c08d86f00988e0a41829660a4d354e0c57752abb1b4c6da434fb330ac26ed`  
		Last Modified: Wed, 16 Sep 2026 05:21:37 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5b5876fa31ff4ba80311e53c53c44b2fb66a0a2fac681ca497462909f607aa3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471985965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5526d0d9194c4ef1504493b72c70e71b2c3556810243ee22fc52ad45f18cda4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:32 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b145156dc8b7ce528db9261cdce53a349c060425a05c6e37496a851f253ff22b`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 741.8 KB (741811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4d6c2f45d228b2a875ba3b2c08dc073bfb81119a830d22dc4f31367769246`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 9.6 MB (9607152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5467e62ab996d1b0f839d6f7ffc7b5836d2069c70d98455940aad519b902f2`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 92.0 KB (91997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c432d7dc61381853fc1026e01f91b9b914a53d6a12df5e2f8a88fbffce09aa`  
		Last Modified: Wed, 16 Sep 2026 03:29:13 GMT  
		Size: 130.1 MB (130064776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9374cdd44b5fa0f74fbb731f9bfa737c63c079ba1ecf3b43f66be9417778fb`  
		Last Modified: Wed, 16 Sep 2026 04:25:33 GMT  
		Size: 118.3 MB (118326659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ce62de59712d66bef65965c35438fc986f9b0e78458190c7b6f66d65bad187`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 401.3 KB (401261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39973489f573451919a17ffc1eeeb8fe19259410f5be9fd8a3632ab18d0cbff4`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 130.9 KB (130942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8cb39c80654501a79518705828443b3a7d06146df3e28970d329f7a710d07de`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 24.7 MB (24666677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4f3027667765f2c0778cfe719f95fac7bcb7733d34463c2a13a22dc3ea55ad`  
		Last Modified: Wed, 16 Sep 2026 05:22:24 GMT  
		Size: 1.1 GB (1147198019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:e4ec2727dbb2d7ad1b4568c56acd3d65087b63ed43879deb759c3a70e42bda07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64267408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600bc49e75702a8d72390771a13b547f154a88ad647cec9390394846366f613b`

```dockerfile
```

-	Layers:
	-	`sha256:26272fa556dab7d993915f7212ece4c25f60921bc8b3ea52cd6f1d475c58d108`  
		Last Modified: Wed, 16 Sep 2026 05:22:06 GMT  
		Size: 64.3 MB (64257635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74aae9d1ac732425fd15e18d1461a7449a504ea62644979f99aec315e0067ac6`  
		Last Modified: Wed, 16 Sep 2026 05:22:03 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:b3268d03ff1b9069627d215cdac870f83faad2425d17ce0d8d56a65c15b878b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:8c726172107224d64fcb97b4e91905f3c7a6ea70cf6764800e5b761c5d4bdbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1528621517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c8dcbeb229e01d94f4e30c76a3728b353f1cd1185dcdcd2b2a851dba34bb7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:27:27 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:46 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d759a045a246ce6e05717356516ea18d875c9e9c47455770effe5d7fc0c3f69`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 741.4 KB (741397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b143b82a8c45baf842c25190669724c0b36f4cdb40211175a7d47cea89ec36c`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 9.8 MB (9783609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc56c88b8cad7ced9d675ce02c0d6d6c5f2f4f964418778d6f44c3537e2c02`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 91.5 KB (91527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895a3c7004e77a5909477d0d839274a3535854863e4c01b45bef1f39e1706a6b`  
		Last Modified: Wed, 16 Sep 2026 03:29:31 GMT  
		Size: 136.7 MB (136695299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d649c4790902356ad11e968453d052c84df2847fce69acc81dee170c83763d8`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9a73edc63f8d46d8e19c5b3620fc4974854e6e74f45ca59d055296c1c0bcb0`  
		Last Modified: Wed, 16 Sep 2026 04:25:23 GMT  
		Size: 124.9 MB (124902631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb763387f3742508b99200797c74b1e782c2ac16237f06a22905040dbcecf9f`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 401.3 KB (401263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a1373f26727b78bf3ef5d688b479832642f85a7832878fed77362c1e4d7314`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676cfcfa8dbcb06da162595e27bc8d361e85905fe4b320b4a05aa4bab27d8644`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 25.7 MB (25715839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30df696d1cc905dd460df7fca837dbec4388c0d23bd4536cef4dc59bc81603d1`  
		Last Modified: Wed, 16 Sep 2026 05:21:57 GMT  
		Size: 1.2 GB (1188585447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:750924906344084362afa69ca24b7b00c998f718c480a04640926513138437fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64353110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf8201e59e2aacb22e242ee7944251d3f44f62fc5d597dad5e927f1c706ac9`

```dockerfile
```

-	Layers:
	-	`sha256:73c51da0328a03051b73ea2ac4507be0694a0e10f26426db00b37ddde3f2a7da`  
		Last Modified: Wed, 16 Sep 2026 05:21:40 GMT  
		Size: 64.3 MB (64343417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81c08d86f00988e0a41829660a4d354e0c57752abb1b4c6da434fb330ac26ed`  
		Last Modified: Wed, 16 Sep 2026 05:21:37 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5b5876fa31ff4ba80311e53c53c44b2fb66a0a2fac681ca497462909f607aa3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1471985965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5526d0d9194c4ef1504493b72c70e71b2c3556810243ee22fc52ad45f18cda4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:32 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 05:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b145156dc8b7ce528db9261cdce53a349c060425a05c6e37496a851f253ff22b`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 741.8 KB (741811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4d6c2f45d228b2a875ba3b2c08dc073bfb81119a830d22dc4f31367769246`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 9.6 MB (9607152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5467e62ab996d1b0f839d6f7ffc7b5836d2069c70d98455940aad519b902f2`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 92.0 KB (91997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c432d7dc61381853fc1026e01f91b9b914a53d6a12df5e2f8a88fbffce09aa`  
		Last Modified: Wed, 16 Sep 2026 03:29:13 GMT  
		Size: 130.1 MB (130064776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9374cdd44b5fa0f74fbb731f9bfa737c63c079ba1ecf3b43f66be9417778fb`  
		Last Modified: Wed, 16 Sep 2026 04:25:33 GMT  
		Size: 118.3 MB (118326659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ce62de59712d66bef65965c35438fc986f9b0e78458190c7b6f66d65bad187`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 401.3 KB (401261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39973489f573451919a17ffc1eeeb8fe19259410f5be9fd8a3632ab18d0cbff4`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 130.9 KB (130942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8cb39c80654501a79518705828443b3a7d06146df3e28970d329f7a710d07de`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 24.7 MB (24666677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4f3027667765f2c0778cfe719f95fac7bcb7733d34463c2a13a22dc3ea55ad`  
		Last Modified: Wed, 16 Sep 2026 05:22:24 GMT  
		Size: 1.1 GB (1147198019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:e4ec2727dbb2d7ad1b4568c56acd3d65087b63ed43879deb759c3a70e42bda07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64267408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600bc49e75702a8d72390771a13b547f154a88ad647cec9390394846366f613b`

```dockerfile
```

-	Layers:
	-	`sha256:26272fa556dab7d993915f7212ece4c25f60921bc8b3ea52cd6f1d475c58d108`  
		Last Modified: Wed, 16 Sep 2026 05:22:06 GMT  
		Size: 64.3 MB (64257635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74aae9d1ac732425fd15e18d1461a7449a504ea62644979f99aec315e0067ac6`  
		Last Modified: Wed, 16 Sep 2026 05:22:03 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:0c19f326a339ed770ef1d4c0646a8b53bdb49dd5ff74b6de41ebdb8ac21e1806
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:45cdbd74861b4c16297dd40f566c03182c13eebc455259f9f3a260550953c21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (340036070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4e49b0df4990292819d516c5e6e87e12338f933070f8777dba1505a6ffa7ab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:27:27 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:46 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d759a045a246ce6e05717356516ea18d875c9e9c47455770effe5d7fc0c3f69`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 741.4 KB (741397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b143b82a8c45baf842c25190669724c0b36f4cdb40211175a7d47cea89ec36c`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 9.8 MB (9783609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc56c88b8cad7ced9d675ce02c0d6d6c5f2f4f964418778d6f44c3537e2c02`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 91.5 KB (91527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895a3c7004e77a5909477d0d839274a3535854863e4c01b45bef1f39e1706a6b`  
		Last Modified: Wed, 16 Sep 2026 03:29:31 GMT  
		Size: 136.7 MB (136695299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d649c4790902356ad11e968453d052c84df2847fce69acc81dee170c83763d8`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9a73edc63f8d46d8e19c5b3620fc4974854e6e74f45ca59d055296c1c0bcb0`  
		Last Modified: Wed, 16 Sep 2026 04:25:23 GMT  
		Size: 124.9 MB (124902631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb763387f3742508b99200797c74b1e782c2ac16237f06a22905040dbcecf9f`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 401.3 KB (401263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a1373f26727b78bf3ef5d688b479832642f85a7832878fed77362c1e4d7314`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676cfcfa8dbcb06da162595e27bc8d361e85905fe4b320b4a05aa4bab27d8644`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 25.7 MB (25715839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:f4986d35978cd6d9c7a51d4f0221d26bed4c5d1239ea2f318ed08af0337c3805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29151084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6669b61ec5a5b72c5cd67910a45df01da13d2057883ab66ee085eb1b127acb2`

```dockerfile
```

-	Layers:
	-	`sha256:2ef772f5534429da1ae8c0aac5b3a210de950e24ecc2f5c85fa65c110bcdfdd5`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 29.1 MB (29133634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:236011bea275044b99cbd16ad4b2b2f9ae0b05bede00d487e58828018dd29ef3`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a2dbd538c006b7187b60d6afcaa8eace1f0864e8c2649a654013f5057841355d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.8 MB (324787946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6bf070076687f06d6c19ed9e99a9d37695f5b3c0e44d6c41eeaea5c4f0481e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:32 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b145156dc8b7ce528db9261cdce53a349c060425a05c6e37496a851f253ff22b`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 741.8 KB (741811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4d6c2f45d228b2a875ba3b2c08dc073bfb81119a830d22dc4f31367769246`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 9.6 MB (9607152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5467e62ab996d1b0f839d6f7ffc7b5836d2069c70d98455940aad519b902f2`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 92.0 KB (91997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c432d7dc61381853fc1026e01f91b9b914a53d6a12df5e2f8a88fbffce09aa`  
		Last Modified: Wed, 16 Sep 2026 03:29:13 GMT  
		Size: 130.1 MB (130064776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9374cdd44b5fa0f74fbb731f9bfa737c63c079ba1ecf3b43f66be9417778fb`  
		Last Modified: Wed, 16 Sep 2026 04:25:33 GMT  
		Size: 118.3 MB (118326659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ce62de59712d66bef65965c35438fc986f9b0e78458190c7b6f66d65bad187`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 401.3 KB (401261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39973489f573451919a17ffc1eeeb8fe19259410f5be9fd8a3632ab18d0cbff4`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 130.9 KB (130942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8cb39c80654501a79518705828443b3a7d06146df3e28970d329f7a710d07de`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 24.7 MB (24666677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:f5577a35e6c4f5065af08949ac2e90babf8b0d5dffb48ed2a5054cc01d8419fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29215865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e988492bf28041f1151011e7b871fbc879403882faba0fdf34ad66e974aa86`

```dockerfile
```

-	Layers:
	-	`sha256:4a10c67bd899bd80a1e737359e735dd83e878a17ba21faa111f967ab282abc80`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 29.2 MB (29198266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4581d7532fcc499ebf80e04f48c2a6ecc33d1a77c24df6e3248655e4ba0706`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:0c19f326a339ed770ef1d4c0646a8b53bdb49dd5ff74b6de41ebdb8ac21e1806
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:45cdbd74861b4c16297dd40f566c03182c13eebc455259f9f3a260550953c21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (340036070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4e49b0df4990292819d516c5e6e87e12338f933070f8777dba1505a6ffa7ab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:27:27 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:46 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d759a045a246ce6e05717356516ea18d875c9e9c47455770effe5d7fc0c3f69`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 741.4 KB (741397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b143b82a8c45baf842c25190669724c0b36f4cdb40211175a7d47cea89ec36c`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 9.8 MB (9783609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc56c88b8cad7ced9d675ce02c0d6d6c5f2f4f964418778d6f44c3537e2c02`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 91.5 KB (91527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895a3c7004e77a5909477d0d839274a3535854863e4c01b45bef1f39e1706a6b`  
		Last Modified: Wed, 16 Sep 2026 03:29:31 GMT  
		Size: 136.7 MB (136695299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d649c4790902356ad11e968453d052c84df2847fce69acc81dee170c83763d8`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9a73edc63f8d46d8e19c5b3620fc4974854e6e74f45ca59d055296c1c0bcb0`  
		Last Modified: Wed, 16 Sep 2026 04:25:23 GMT  
		Size: 124.9 MB (124902631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb763387f3742508b99200797c74b1e782c2ac16237f06a22905040dbcecf9f`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 401.3 KB (401263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a1373f26727b78bf3ef5d688b479832642f85a7832878fed77362c1e4d7314`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676cfcfa8dbcb06da162595e27bc8d361e85905fe4b320b4a05aa4bab27d8644`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 25.7 MB (25715839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:f4986d35978cd6d9c7a51d4f0221d26bed4c5d1239ea2f318ed08af0337c3805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29151084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6669b61ec5a5b72c5cd67910a45df01da13d2057883ab66ee085eb1b127acb2`

```dockerfile
```

-	Layers:
	-	`sha256:2ef772f5534429da1ae8c0aac5b3a210de950e24ecc2f5c85fa65c110bcdfdd5`  
		Last Modified: Wed, 16 Sep 2026 04:25:20 GMT  
		Size: 29.1 MB (29133634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:236011bea275044b99cbd16ad4b2b2f9ae0b05bede00d487e58828018dd29ef3`  
		Last Modified: Wed, 16 Sep 2026 04:25:18 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a2dbd538c006b7187b60d6afcaa8eace1f0864e8c2649a654013f5057841355d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.8 MB (324787946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6bf070076687f06d6c19ed9e99a9d37695f5b3c0e44d6c41eeaea5c4f0481e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:32 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b145156dc8b7ce528db9261cdce53a349c060425a05c6e37496a851f253ff22b`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 741.8 KB (741811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4d6c2f45d228b2a875ba3b2c08dc073bfb81119a830d22dc4f31367769246`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 9.6 MB (9607152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5467e62ab996d1b0f839d6f7ffc7b5836d2069c70d98455940aad519b902f2`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 92.0 KB (91997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c432d7dc61381853fc1026e01f91b9b914a53d6a12df5e2f8a88fbffce09aa`  
		Last Modified: Wed, 16 Sep 2026 03:29:13 GMT  
		Size: 130.1 MB (130064776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9374cdd44b5fa0f74fbb731f9bfa737c63c079ba1ecf3b43f66be9417778fb`  
		Last Modified: Wed, 16 Sep 2026 04:25:33 GMT  
		Size: 118.3 MB (118326659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ce62de59712d66bef65965c35438fc986f9b0e78458190c7b6f66d65bad187`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 401.3 KB (401261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39973489f573451919a17ffc1eeeb8fe19259410f5be9fd8a3632ab18d0cbff4`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 130.9 KB (130942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8cb39c80654501a79518705828443b3a7d06146df3e28970d329f7a710d07de`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 24.7 MB (24666677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:f5577a35e6c4f5065af08949ac2e90babf8b0d5dffb48ed2a5054cc01d8419fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29215865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e988492bf28041f1151011e7b871fbc879403882faba0fdf34ad66e974aa86`

```dockerfile
```

-	Layers:
	-	`sha256:4a10c67bd899bd80a1e737359e735dd83e878a17ba21faa111f967ab282abc80`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 29.2 MB (29198266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4581d7532fcc499ebf80e04f48c2a6ecc33d1a77c24df6e3248655e4ba0706`  
		Last Modified: Wed, 16 Sep 2026 04:25:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:08e9177b56033fb370f572be88ad61d9682b84067086a943fb6960fa2088f530
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:05c1fea2a837a6638bc0022bc33aeebb934f3f6c5e038f9a43917911532132b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188885418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d587ff5a7a7f359c3e685d9d56e57fab11439b745770125488e1c4f7411fe15`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:27:27 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d759a045a246ce6e05717356516ea18d875c9e9c47455770effe5d7fc0c3f69`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 741.4 KB (741397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b143b82a8c45baf842c25190669724c0b36f4cdb40211175a7d47cea89ec36c`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 9.8 MB (9783609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc56c88b8cad7ced9d675ce02c0d6d6c5f2f4f964418778d6f44c3537e2c02`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 91.5 KB (91527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895a3c7004e77a5909477d0d839274a3535854863e4c01b45bef1f39e1706a6b`  
		Last Modified: Wed, 16 Sep 2026 03:29:31 GMT  
		Size: 136.7 MB (136695299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d649c4790902356ad11e968453d052c84df2847fce69acc81dee170c83763d8`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:025b3a9ddfadadc7d3623c9a455f79142097af51f1a35e60dc80f86f519c9e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22747983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a55744cc5564ace59b0f225f76a202b6ca798dd0ead5ef2911821424e9d8c3`

```dockerfile
```

-	Layers:
	-	`sha256:2a6f4f1f47de238866816153c030ca2b0ebcac1fe0aff35c5272286fc95ae0a5`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 22.7 MB (22732401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9810eb5fec6839dc6ce27086791c1c7105e08d21eb35e986dc5de3431212b32`  
		Last Modified: Wed, 16 Sep 2026 03:29:27 GMT  
		Size: 15.6 KB (15582 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8eb8caa9688328302387d02617bd8650fc7696869ad86cf16a072371f6f09322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.3 MB (181262407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c60691b8392b3db4f849ac399f70c9fb0d0ad0cce1374905da2b4d7f580930b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b145156dc8b7ce528db9261cdce53a349c060425a05c6e37496a851f253ff22b`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 741.8 KB (741811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4d6c2f45d228b2a875ba3b2c08dc073bfb81119a830d22dc4f31367769246`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 9.6 MB (9607152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5467e62ab996d1b0f839d6f7ffc7b5836d2069c70d98455940aad519b902f2`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 92.0 KB (91997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c432d7dc61381853fc1026e01f91b9b914a53d6a12df5e2f8a88fbffce09aa`  
		Last Modified: Wed, 16 Sep 2026 03:29:13 GMT  
		Size: 130.1 MB (130064776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:c91a3b784fcead7dc9fa362479e9425dd1fa265667a7a5bfbea2783fdbddf769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22720801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03406ad92a25439e8d771912ed3ec45aab079d9e209860fda5bc119fbf742619`

```dockerfile
```

-	Layers:
	-	`sha256:da62c6dac55fc83bde5e3b93b7d337892130c59804b8108335735749910c01d5`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 22.7 MB (22705093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b45f4e36c9e56bf47ba74802016e2d14beba482cd4f68d9528c2072fbff417a9`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:08e9177b56033fb370f572be88ad61d9682b84067086a943fb6960fa2088f530
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:05c1fea2a837a6638bc0022bc33aeebb934f3f6c5e038f9a43917911532132b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188885418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d587ff5a7a7f359c3e685d9d56e57fab11439b745770125488e1c4f7411fe15`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:27:27 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:41 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:45 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d759a045a246ce6e05717356516ea18d875c9e9c47455770effe5d7fc0c3f69`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 741.4 KB (741397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b143b82a8c45baf842c25190669724c0b36f4cdb40211175a7d47cea89ec36c`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 9.8 MB (9783609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc56c88b8cad7ced9d675ce02c0d6d6c5f2f4f964418778d6f44c3537e2c02`  
		Last Modified: Wed, 16 Sep 2026 03:29:28 GMT  
		Size: 91.5 KB (91527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895a3c7004e77a5909477d0d839274a3535854863e4c01b45bef1f39e1706a6b`  
		Last Modified: Wed, 16 Sep 2026 03:29:31 GMT  
		Size: 136.7 MB (136695299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d649c4790902356ad11e968453d052c84df2847fce69acc81dee170c83763d8`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:025b3a9ddfadadc7d3623c9a455f79142097af51f1a35e60dc80f86f519c9e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22747983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a55744cc5564ace59b0f225f76a202b6ca798dd0ead5ef2911821424e9d8c3`

```dockerfile
```

-	Layers:
	-	`sha256:2a6f4f1f47de238866816153c030ca2b0ebcac1fe0aff35c5272286fc95ae0a5`  
		Last Modified: Wed, 16 Sep 2026 03:29:29 GMT  
		Size: 22.7 MB (22732401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9810eb5fec6839dc6ce27086791c1c7105e08d21eb35e986dc5de3431212b32`  
		Last Modified: Wed, 16 Sep 2026 03:29:27 GMT  
		Size: 15.6 KB (15582 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8eb8caa9688328302387d02617bd8650fc7696869ad86cf16a072371f6f09322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.3 MB (181262407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c60691b8392b3db4f849ac399f70c9fb0d0ad0cce1374905da2b4d7f580930b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:27:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:27:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:28:32 GMT
ENV ROS_DISTRO=lyrical
# Wed, 16 Sep 2026 03:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:28:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:28:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b145156dc8b7ce528db9261cdce53a349c060425a05c6e37496a851f253ff22b`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 741.8 KB (741811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb4d6c2f45d228b2a875ba3b2c08dc073bfb81119a830d22dc4f31367769246`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 9.6 MB (9607152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5467e62ab996d1b0f839d6f7ffc7b5836d2069c70d98455940aad519b902f2`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 92.0 KB (91997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c432d7dc61381853fc1026e01f91b9b914a53d6a12df5e2f8a88fbffce09aa`  
		Last Modified: Wed, 16 Sep 2026 03:29:13 GMT  
		Size: 130.1 MB (130064776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2207a4cb04e4dd6657af23f4ff844e2c1a5557c362a891d49a26c1cbe41`  
		Last Modified: Wed, 16 Sep 2026 03:28:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:c91a3b784fcead7dc9fa362479e9425dd1fa265667a7a5bfbea2783fdbddf769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22720801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03406ad92a25439e8d771912ed3ec45aab079d9e209860fda5bc119fbf742619`

```dockerfile
```

-	Layers:
	-	`sha256:da62c6dac55fc83bde5e3b93b7d337892130c59804b8108335735749910c01d5`  
		Last Modified: Wed, 16 Sep 2026 03:29:11 GMT  
		Size: 22.7 MB (22705093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b45f4e36c9e56bf47ba74802016e2d14beba482cd4f68d9528c2072fbff417a9`  
		Last Modified: Wed, 16 Sep 2026 03:29:10 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:253012a423d3708db55e0f7247d9c620c44489c4378f51e4f463c787cd73bb03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:df7d71c57d70762a8f9420bf679c9cfb800732655824b66880c225931820a318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340351975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548a1d07a458902f4da470c8a567f1407f65a59d14a13b67d36164c5dc14dd9e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:28:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:13 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:16 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf24c45e46aa1a74f830772cd1a8a97cf3b4dd807debd829e88da59e6663d7`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 741.4 KB (741371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e016ba9a343320418f83a9c68d5b27858adfcb2b5ccdfb44d55955b3f2bb32f`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 9.8 MB (9783607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53d08f4eb335405ce1030a2149a748da9f452b79133d92bed9bb8557c9f5c3`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 91.6 KB (91560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ae7b17d1d017b6673185eeff6557bd29cdac9fc09b46557706bc900141c06`  
		Last Modified: Wed, 16 Sep 2026 03:30:47 GMT  
		Size: 137.0 MB (136985813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac1e33bd0c582059107783914f248d88dc276e6ffc9b29c5f5f1793efc2fdf`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f05bd237d593e0f3051e5fd53f811e635b31f99e311288fe591a49b9629ad3`  
		Last Modified: Wed, 16 Sep 2026 04:25:34 GMT  
		Size: 124.9 MB (124902568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686213966843573f9d808fa92caae45629a03707772219a18c34bbdabb0de50`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 364.8 KB (364828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314e6c2326d5f567b5c16d1326cd58c74c781faa7356564cfe092fe53925f513`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71a63186ccc893f9157464ccf329e49a5a5dda5d01b9e730f618c9ee9deaab4`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 25.8 MB (25777724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:f33465b4e901ec5064603d95229079a9deb2c2315a5c64516eee7312c27ccb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29161381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e7f812f221eb97ff4e3be08723ef32ce5b79284eb9b1f9982b799057ee80a1`

```dockerfile
```

-	Layers:
	-	`sha256:f5f0c66ac8b4f688913169d1c019b73a5f1d2b57971955e7a9cba4cf7de1fe07`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 29.1 MB (29144223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6f4b7b887265d7e44493a644649aa95270ebb439abc8f7c34cd919d8e58dc9a`  
		Last Modified: Wed, 16 Sep 2026 04:25:30 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3cb407ba828ec321e8628bcb1d884c31bfa5a167027ed50cb7fe8d416d732f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.1 MB (325072879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396f76ac6d8c15bf64a0ec4c168d2041be72b6e9f9fcecbea246979b0bd72d49`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:28:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:29:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:48 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba5c0f1b81ae37786c64dcd3f73f35d3119ccb43a136dd6f7dc24f35e00bb81`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 741.8 KB (741802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e94c837a3ea779f1d6d24e687ee911a24757a210a8db4b52195b4cad33b06`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 9.6 MB (9607171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dae6b22c313ae33086401200eb021c95a3bafd9dab2a9d4a05ca03cd5eb8a`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 92.0 KB (91992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de321ac390edef2ab4dab0ae23270894de88e4c4eea337364ebbe29b37c44d`  
		Last Modified: Wed, 16 Sep 2026 03:30:29 GMT  
		Size: 130.3 MB (130329183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6540c38625250e063487c041b6708b971dada3236bb69d74e9511baa67af2368`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f448a64536a71ac68047a427eb1ec815f5ff0f2c8f3f8fc274f9a5d968877de8`  
		Last Modified: Wed, 16 Sep 2026 04:25:41 GMT  
		Size: 118.3 MB (118326641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81784a00d3593d3fa2953424bfe66bdf6c36e0d1f8de1e2388da9a194d08cf5`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 364.8 KB (364832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9bb723e07d29642dba219bd3c71a5f9d95935f17a48bca275894943247cff1`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 130.9 KB (130893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b2b8dc9b457eae275970f770fb3b7163866ce199a17193b666093e79f7847a`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 24.7 MB (24723696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:19c201781d850513ac4f8176c36e966797e072df06d193bf4a74f3211a8c9186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29226138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3061774b050b5d83bdb48e869f727b32e95eb8a8c34df4d436de5b78e514e94a`

```dockerfile
```

-	Layers:
	-	`sha256:544cbecfff3001b17c55ddcb791ea0be9732cc71bde09f5df96ccaa61c09a1a5`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 29.2 MB (29208843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86dbd4c37a0622d05f792801039d1cf96be2773546c3ead10868493ba923bf00`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:064ddb2e5ae66585b5c392e33a7357703689377f3b79742bd11255b7b4432425
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:2dec3152a232394a3b4b236883080efd7afc465404c214d91239c053010a62e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532639532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010046dca39b9e66ef9c6bb142b17ae66714474c30e283c0a6383906e5c97d6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:28:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:13 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:16 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 20:14:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf24c45e46aa1a74f830772cd1a8a97cf3b4dd807debd829e88da59e6663d7`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 741.4 KB (741371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e016ba9a343320418f83a9c68d5b27858adfcb2b5ccdfb44d55955b3f2bb32f`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 9.8 MB (9783607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53d08f4eb335405ce1030a2149a748da9f452b79133d92bed9bb8557c9f5c3`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 91.6 KB (91560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ae7b17d1d017b6673185eeff6557bd29cdac9fc09b46557706bc900141c06`  
		Last Modified: Wed, 16 Sep 2026 03:30:47 GMT  
		Size: 137.0 MB (136985813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac1e33bd0c582059107783914f248d88dc276e6ffc9b29c5f5f1793efc2fdf`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f05bd237d593e0f3051e5fd53f811e635b31f99e311288fe591a49b9629ad3`  
		Last Modified: Wed, 16 Sep 2026 04:25:34 GMT  
		Size: 124.9 MB (124902568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686213966843573f9d808fa92caae45629a03707772219a18c34bbdabb0de50`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 364.8 KB (364828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314e6c2326d5f567b5c16d1326cd58c74c781faa7356564cfe092fe53925f513`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71a63186ccc893f9157464ccf329e49a5a5dda5d01b9e730f618c9ee9deaab4`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 25.8 MB (25777724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65268cf89c1811f7511cec05d543f56b12e71821a25c49fd7c2e7ac93a8e76b`  
		Last Modified: Mon, 21 Sep 2026 20:18:49 GMT  
		Size: 1.2 GB (1192287557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:56c7f25b51c17700741eb3f4d7e45a107f05d367c232a83437082645d648828f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64365635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd2370ed73c99764a3e67d5473f17d870650288e0017073f0c001b68dea30149`

```dockerfile
```

-	Layers:
	-	`sha256:13346abc7d3f61f63c86196cd451c5f12988e8ce707bcd517a32d0d4afd8125a`  
		Last Modified: Mon, 21 Sep 2026 20:18:30 GMT  
		Size: 64.4 MB (64355942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b93aa07d3e9f2c503547b77b9608dfc0133f2306e9bb395c6bf052e6628eb785`  
		Last Modified: Mon, 21 Sep 2026 20:18:27 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4b1188cf375d663f8108968a801676aa322cad33ab154a785dc32e56037ba1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475744979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2802592cc87f33d7de0eed7a6b4ee2b00181f5e8b0c7e2d88401dc67a8e26c1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:28:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:29:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:48 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 20:14:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba5c0f1b81ae37786c64dcd3f73f35d3119ccb43a136dd6f7dc24f35e00bb81`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 741.8 KB (741802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e94c837a3ea779f1d6d24e687ee911a24757a210a8db4b52195b4cad33b06`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 9.6 MB (9607171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dae6b22c313ae33086401200eb021c95a3bafd9dab2a9d4a05ca03cd5eb8a`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 92.0 KB (91992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de321ac390edef2ab4dab0ae23270894de88e4c4eea337364ebbe29b37c44d`  
		Last Modified: Wed, 16 Sep 2026 03:30:29 GMT  
		Size: 130.3 MB (130329183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6540c38625250e063487c041b6708b971dada3236bb69d74e9511baa67af2368`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f448a64536a71ac68047a427eb1ec815f5ff0f2c8f3f8fc274f9a5d968877de8`  
		Last Modified: Wed, 16 Sep 2026 04:25:41 GMT  
		Size: 118.3 MB (118326641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81784a00d3593d3fa2953424bfe66bdf6c36e0d1f8de1e2388da9a194d08cf5`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 364.8 KB (364832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9bb723e07d29642dba219bd3c71a5f9d95935f17a48bca275894943247cff1`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 130.9 KB (130893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b2b8dc9b457eae275970f770fb3b7163866ce199a17193b666093e79f7847a`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 24.7 MB (24723696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bc96aad38ab3d897aacf9b3ba7ce9ecf1de49c73c1bdb386da093c5b7aeb51`  
		Last Modified: Mon, 21 Sep 2026 20:19:04 GMT  
		Size: 1.2 GB (1150672100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:57cb58006010ade64ebcac157d19df465b1362ecd0dfde5431c95d53bca0d15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64279933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9dc19fc0075a4c0488ccc6df3f08e044c1c880785b7efb09f3ec65d0f3b3d8`

```dockerfile
```

-	Layers:
	-	`sha256:fdd72d5f578aecc460e4746f1a5dd69196c086aa700cb0fc0ad62d5adbd1cce9`  
		Last Modified: Mon, 21 Sep 2026 20:18:46 GMT  
		Size: 64.3 MB (64270160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf84c3dcbdb244c9f735e53365f38c0d20207a46296e87aafa5a344bee9c432`  
		Last Modified: Mon, 21 Sep 2026 20:18:43 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:064ddb2e5ae66585b5c392e33a7357703689377f3b79742bd11255b7b4432425
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:2dec3152a232394a3b4b236883080efd7afc465404c214d91239c053010a62e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532639532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010046dca39b9e66ef9c6bb142b17ae66714474c30e283c0a6383906e5c97d6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:28:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:13 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:16 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 20:14:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf24c45e46aa1a74f830772cd1a8a97cf3b4dd807debd829e88da59e6663d7`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 741.4 KB (741371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e016ba9a343320418f83a9c68d5b27858adfcb2b5ccdfb44d55955b3f2bb32f`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 9.8 MB (9783607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53d08f4eb335405ce1030a2149a748da9f452b79133d92bed9bb8557c9f5c3`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 91.6 KB (91560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ae7b17d1d017b6673185eeff6557bd29cdac9fc09b46557706bc900141c06`  
		Last Modified: Wed, 16 Sep 2026 03:30:47 GMT  
		Size: 137.0 MB (136985813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac1e33bd0c582059107783914f248d88dc276e6ffc9b29c5f5f1793efc2fdf`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f05bd237d593e0f3051e5fd53f811e635b31f99e311288fe591a49b9629ad3`  
		Last Modified: Wed, 16 Sep 2026 04:25:34 GMT  
		Size: 124.9 MB (124902568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686213966843573f9d808fa92caae45629a03707772219a18c34bbdabb0de50`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 364.8 KB (364828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314e6c2326d5f567b5c16d1326cd58c74c781faa7356564cfe092fe53925f513`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71a63186ccc893f9157464ccf329e49a5a5dda5d01b9e730f618c9ee9deaab4`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 25.8 MB (25777724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65268cf89c1811f7511cec05d543f56b12e71821a25c49fd7c2e7ac93a8e76b`  
		Last Modified: Mon, 21 Sep 2026 20:18:49 GMT  
		Size: 1.2 GB (1192287557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:56c7f25b51c17700741eb3f4d7e45a107f05d367c232a83437082645d648828f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64365635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd2370ed73c99764a3e67d5473f17d870650288e0017073f0c001b68dea30149`

```dockerfile
```

-	Layers:
	-	`sha256:13346abc7d3f61f63c86196cd451c5f12988e8ce707bcd517a32d0d4afd8125a`  
		Last Modified: Mon, 21 Sep 2026 20:18:30 GMT  
		Size: 64.4 MB (64355942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b93aa07d3e9f2c503547b77b9608dfc0133f2306e9bb395c6bf052e6628eb785`  
		Last Modified: Mon, 21 Sep 2026 20:18:27 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4b1188cf375d663f8108968a801676aa322cad33ab154a785dc32e56037ba1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475744979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2802592cc87f33d7de0eed7a6b4ee2b00181f5e8b0c7e2d88401dc67a8e26c1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:28:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:29:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:48 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 20:14:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba5c0f1b81ae37786c64dcd3f73f35d3119ccb43a136dd6f7dc24f35e00bb81`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 741.8 KB (741802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e94c837a3ea779f1d6d24e687ee911a24757a210a8db4b52195b4cad33b06`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 9.6 MB (9607171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dae6b22c313ae33086401200eb021c95a3bafd9dab2a9d4a05ca03cd5eb8a`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 92.0 KB (91992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de321ac390edef2ab4dab0ae23270894de88e4c4eea337364ebbe29b37c44d`  
		Last Modified: Wed, 16 Sep 2026 03:30:29 GMT  
		Size: 130.3 MB (130329183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6540c38625250e063487c041b6708b971dada3236bb69d74e9511baa67af2368`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f448a64536a71ac68047a427eb1ec815f5ff0f2c8f3f8fc274f9a5d968877de8`  
		Last Modified: Wed, 16 Sep 2026 04:25:41 GMT  
		Size: 118.3 MB (118326641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81784a00d3593d3fa2953424bfe66bdf6c36e0d1f8de1e2388da9a194d08cf5`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 364.8 KB (364832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9bb723e07d29642dba219bd3c71a5f9d95935f17a48bca275894943247cff1`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 130.9 KB (130893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b2b8dc9b457eae275970f770fb3b7163866ce199a17193b666093e79f7847a`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 24.7 MB (24723696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bc96aad38ab3d897aacf9b3ba7ce9ecf1de49c73c1bdb386da093c5b7aeb51`  
		Last Modified: Mon, 21 Sep 2026 20:19:04 GMT  
		Size: 1.2 GB (1150672100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:57cb58006010ade64ebcac157d19df465b1362ecd0dfde5431c95d53bca0d15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64279933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9dc19fc0075a4c0488ccc6df3f08e044c1c880785b7efb09f3ec65d0f3b3d8`

```dockerfile
```

-	Layers:
	-	`sha256:fdd72d5f578aecc460e4746f1a5dd69196c086aa700cb0fc0ad62d5adbd1cce9`  
		Last Modified: Mon, 21 Sep 2026 20:18:46 GMT  
		Size: 64.3 MB (64270160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf84c3dcbdb244c9f735e53365f38c0d20207a46296e87aafa5a344bee9c432`  
		Last Modified: Mon, 21 Sep 2026 20:18:43 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:253012a423d3708db55e0f7247d9c620c44489c4378f51e4f463c787cd73bb03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:df7d71c57d70762a8f9420bf679c9cfb800732655824b66880c225931820a318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340351975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548a1d07a458902f4da470c8a567f1407f65a59d14a13b67d36164c5dc14dd9e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:28:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:13 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:16 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf24c45e46aa1a74f830772cd1a8a97cf3b4dd807debd829e88da59e6663d7`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 741.4 KB (741371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e016ba9a343320418f83a9c68d5b27858adfcb2b5ccdfb44d55955b3f2bb32f`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 9.8 MB (9783607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53d08f4eb335405ce1030a2149a748da9f452b79133d92bed9bb8557c9f5c3`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 91.6 KB (91560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ae7b17d1d017b6673185eeff6557bd29cdac9fc09b46557706bc900141c06`  
		Last Modified: Wed, 16 Sep 2026 03:30:47 GMT  
		Size: 137.0 MB (136985813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac1e33bd0c582059107783914f248d88dc276e6ffc9b29c5f5f1793efc2fdf`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f05bd237d593e0f3051e5fd53f811e635b31f99e311288fe591a49b9629ad3`  
		Last Modified: Wed, 16 Sep 2026 04:25:34 GMT  
		Size: 124.9 MB (124902568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686213966843573f9d808fa92caae45629a03707772219a18c34bbdabb0de50`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 364.8 KB (364828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314e6c2326d5f567b5c16d1326cd58c74c781faa7356564cfe092fe53925f513`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71a63186ccc893f9157464ccf329e49a5a5dda5d01b9e730f618c9ee9deaab4`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 25.8 MB (25777724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:f33465b4e901ec5064603d95229079a9deb2c2315a5c64516eee7312c27ccb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29161381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e7f812f221eb97ff4e3be08723ef32ce5b79284eb9b1f9982b799057ee80a1`

```dockerfile
```

-	Layers:
	-	`sha256:f5f0c66ac8b4f688913169d1c019b73a5f1d2b57971955e7a9cba4cf7de1fe07`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 29.1 MB (29144223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6f4b7b887265d7e44493a644649aa95270ebb439abc8f7c34cd919d8e58dc9a`  
		Last Modified: Wed, 16 Sep 2026 04:25:30 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3cb407ba828ec321e8628bcb1d884c31bfa5a167027ed50cb7fe8d416d732f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.1 MB (325072879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396f76ac6d8c15bf64a0ec4c168d2041be72b6e9f9fcecbea246979b0bd72d49`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:28:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:29:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:48 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba5c0f1b81ae37786c64dcd3f73f35d3119ccb43a136dd6f7dc24f35e00bb81`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 741.8 KB (741802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e94c837a3ea779f1d6d24e687ee911a24757a210a8db4b52195b4cad33b06`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 9.6 MB (9607171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dae6b22c313ae33086401200eb021c95a3bafd9dab2a9d4a05ca03cd5eb8a`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 92.0 KB (91992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de321ac390edef2ab4dab0ae23270894de88e4c4eea337364ebbe29b37c44d`  
		Last Modified: Wed, 16 Sep 2026 03:30:29 GMT  
		Size: 130.3 MB (130329183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6540c38625250e063487c041b6708b971dada3236bb69d74e9511baa67af2368`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f448a64536a71ac68047a427eb1ec815f5ff0f2c8f3f8fc274f9a5d968877de8`  
		Last Modified: Wed, 16 Sep 2026 04:25:41 GMT  
		Size: 118.3 MB (118326641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81784a00d3593d3fa2953424bfe66bdf6c36e0d1f8de1e2388da9a194d08cf5`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 364.8 KB (364832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9bb723e07d29642dba219bd3c71a5f9d95935f17a48bca275894943247cff1`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 130.9 KB (130893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b2b8dc9b457eae275970f770fb3b7163866ce199a17193b666093e79f7847a`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 24.7 MB (24723696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:19c201781d850513ac4f8176c36e966797e072df06d193bf4a74f3211a8c9186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29226138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3061774b050b5d83bdb48e869f727b32e95eb8a8c34df4d436de5b78e514e94a`

```dockerfile
```

-	Layers:
	-	`sha256:544cbecfff3001b17c55ddcb791ea0be9732cc71bde09f5df96ccaa61c09a1a5`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 29.2 MB (29208843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86dbd4c37a0622d05f792801039d1cf96be2773546c3ead10868493ba923bf00`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:253012a423d3708db55e0f7247d9c620c44489c4378f51e4f463c787cd73bb03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:df7d71c57d70762a8f9420bf679c9cfb800732655824b66880c225931820a318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340351975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548a1d07a458902f4da470c8a567f1407f65a59d14a13b67d36164c5dc14dd9e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:28:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:13 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:16 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf24c45e46aa1a74f830772cd1a8a97cf3b4dd807debd829e88da59e6663d7`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 741.4 KB (741371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e016ba9a343320418f83a9c68d5b27858adfcb2b5ccdfb44d55955b3f2bb32f`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 9.8 MB (9783607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53d08f4eb335405ce1030a2149a748da9f452b79133d92bed9bb8557c9f5c3`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 91.6 KB (91560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ae7b17d1d017b6673185eeff6557bd29cdac9fc09b46557706bc900141c06`  
		Last Modified: Wed, 16 Sep 2026 03:30:47 GMT  
		Size: 137.0 MB (136985813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac1e33bd0c582059107783914f248d88dc276e6ffc9b29c5f5f1793efc2fdf`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f05bd237d593e0f3051e5fd53f811e635b31f99e311288fe591a49b9629ad3`  
		Last Modified: Wed, 16 Sep 2026 04:25:34 GMT  
		Size: 124.9 MB (124902568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686213966843573f9d808fa92caae45629a03707772219a18c34bbdabb0de50`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 364.8 KB (364828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314e6c2326d5f567b5c16d1326cd58c74c781faa7356564cfe092fe53925f513`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71a63186ccc893f9157464ccf329e49a5a5dda5d01b9e730f618c9ee9deaab4`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 25.8 MB (25777724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:f33465b4e901ec5064603d95229079a9deb2c2315a5c64516eee7312c27ccb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29161381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e7f812f221eb97ff4e3be08723ef32ce5b79284eb9b1f9982b799057ee80a1`

```dockerfile
```

-	Layers:
	-	`sha256:f5f0c66ac8b4f688913169d1c019b73a5f1d2b57971955e7a9cba4cf7de1fe07`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 29.1 MB (29144223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6f4b7b887265d7e44493a644649aa95270ebb439abc8f7c34cd919d8e58dc9a`  
		Last Modified: Wed, 16 Sep 2026 04:25:30 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3cb407ba828ec321e8628bcb1d884c31bfa5a167027ed50cb7fe8d416d732f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.1 MB (325072879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396f76ac6d8c15bf64a0ec4c168d2041be72b6e9f9fcecbea246979b0bd72d49`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:28:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:29:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:48 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba5c0f1b81ae37786c64dcd3f73f35d3119ccb43a136dd6f7dc24f35e00bb81`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 741.8 KB (741802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e94c837a3ea779f1d6d24e687ee911a24757a210a8db4b52195b4cad33b06`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 9.6 MB (9607171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dae6b22c313ae33086401200eb021c95a3bafd9dab2a9d4a05ca03cd5eb8a`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 92.0 KB (91992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de321ac390edef2ab4dab0ae23270894de88e4c4eea337364ebbe29b37c44d`  
		Last Modified: Wed, 16 Sep 2026 03:30:29 GMT  
		Size: 130.3 MB (130329183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6540c38625250e063487c041b6708b971dada3236bb69d74e9511baa67af2368`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f448a64536a71ac68047a427eb1ec815f5ff0f2c8f3f8fc274f9a5d968877de8`  
		Last Modified: Wed, 16 Sep 2026 04:25:41 GMT  
		Size: 118.3 MB (118326641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81784a00d3593d3fa2953424bfe66bdf6c36e0d1f8de1e2388da9a194d08cf5`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 364.8 KB (364832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9bb723e07d29642dba219bd3c71a5f9d95935f17a48bca275894943247cff1`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 130.9 KB (130893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b2b8dc9b457eae275970f770fb3b7163866ce199a17193b666093e79f7847a`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 24.7 MB (24723696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:19c201781d850513ac4f8176c36e966797e072df06d193bf4a74f3211a8c9186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29226138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3061774b050b5d83bdb48e869f727b32e95eb8a8c34df4d436de5b78e514e94a`

```dockerfile
```

-	Layers:
	-	`sha256:544cbecfff3001b17c55ddcb791ea0be9732cc71bde09f5df96ccaa61c09a1a5`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 29.2 MB (29208843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86dbd4c37a0622d05f792801039d1cf96be2773546c3ead10868493ba923bf00`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:f656c19d3ad2b1fe1b93c39249f1ff198e08905a400046dd912c40a458770e89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:339f54ddb88213290504e01beb569573776d8d64c3e34c616fdfe7ab2423dbfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189175936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73602817ce2dd4d6b4bc6a9878ceddbb0eb0dd353fb1587c9d56e5de2aac4ece`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:28:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:13 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf24c45e46aa1a74f830772cd1a8a97cf3b4dd807debd829e88da59e6663d7`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 741.4 KB (741371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e016ba9a343320418f83a9c68d5b27858adfcb2b5ccdfb44d55955b3f2bb32f`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 9.8 MB (9783607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53d08f4eb335405ce1030a2149a748da9f452b79133d92bed9bb8557c9f5c3`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 91.6 KB (91560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ae7b17d1d017b6673185eeff6557bd29cdac9fc09b46557706bc900141c06`  
		Last Modified: Wed, 16 Sep 2026 03:30:47 GMT  
		Size: 137.0 MB (136985813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac1e33bd0c582059107783914f248d88dc276e6ffc9b29c5f5f1793efc2fdf`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:3e53995307e09824de636cd7a9e8a47dde2000f20d439afcbdd616130c5fd0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22749118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ffaaf04be1198273e9db04d0ba9ff6057bcd21280db5d3aa6c44c669a16c14c`

```dockerfile
```

-	Layers:
	-	`sha256:1b40a1f880917c10becd2f80102c3b7eb109446f324fddc46a2fd14002f23fb6`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 22.7 MB (22733439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ae1607d73129ff646af3cb0e81947b013bac9c29832d878234ad0153ecc84e`  
		Last Modified: Wed, 16 Sep 2026 03:30:43 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3aa1b7c5d26491b31698376327cb6e76b0815429a252a8e6c4f71c9562cfd4d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181526817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1eac2d083ebb4a9a891a5f22a449399e5744ecca2dad33ed842954acad39c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:28:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:29:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba5c0f1b81ae37786c64dcd3f73f35d3119ccb43a136dd6f7dc24f35e00bb81`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 741.8 KB (741802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e94c837a3ea779f1d6d24e687ee911a24757a210a8db4b52195b4cad33b06`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 9.6 MB (9607171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dae6b22c313ae33086401200eb021c95a3bafd9dab2a9d4a05ca03cd5eb8a`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 92.0 KB (91992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de321ac390edef2ab4dab0ae23270894de88e4c4eea337364ebbe29b37c44d`  
		Last Modified: Wed, 16 Sep 2026 03:30:29 GMT  
		Size: 130.3 MB (130329183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6540c38625250e063487c041b6708b971dada3236bb69d74e9511baa67af2368`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:2dd8bc03493e1e35202a0aed11ec6672e9e272bf69cbed91ac63aae4289bdb13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22721935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0764d7010da410508f07c7f3f141d18ce1fb9bcf6d85939693c43d922d331596`

```dockerfile
```

-	Layers:
	-	`sha256:8dd4abe8fc93675cef04c8cd4c64c1e7455ed5b86d73ed5cc23336976085347b`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 22.7 MB (22706131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c83e27cde1f6b62ab519b92e2faffde2f92a9ba0b4cda8cffa88092ab804f1e7`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:f656c19d3ad2b1fe1b93c39249f1ff198e08905a400046dd912c40a458770e89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:339f54ddb88213290504e01beb569573776d8d64c3e34c616fdfe7ab2423dbfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189175936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73602817ce2dd4d6b4bc6a9878ceddbb0eb0dd353fb1587c9d56e5de2aac4ece`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:28:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:13 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf24c45e46aa1a74f830772cd1a8a97cf3b4dd807debd829e88da59e6663d7`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 741.4 KB (741371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e016ba9a343320418f83a9c68d5b27858adfcb2b5ccdfb44d55955b3f2bb32f`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 9.8 MB (9783607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53d08f4eb335405ce1030a2149a748da9f452b79133d92bed9bb8557c9f5c3`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 91.6 KB (91560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ae7b17d1d017b6673185eeff6557bd29cdac9fc09b46557706bc900141c06`  
		Last Modified: Wed, 16 Sep 2026 03:30:47 GMT  
		Size: 137.0 MB (136985813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac1e33bd0c582059107783914f248d88dc276e6ffc9b29c5f5f1793efc2fdf`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:3e53995307e09824de636cd7a9e8a47dde2000f20d439afcbdd616130c5fd0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22749118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ffaaf04be1198273e9db04d0ba9ff6057bcd21280db5d3aa6c44c669a16c14c`

```dockerfile
```

-	Layers:
	-	`sha256:1b40a1f880917c10becd2f80102c3b7eb109446f324fddc46a2fd14002f23fb6`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 22.7 MB (22733439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ae1607d73129ff646af3cb0e81947b013bac9c29832d878234ad0153ecc84e`  
		Last Modified: Wed, 16 Sep 2026 03:30:43 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3aa1b7c5d26491b31698376327cb6e76b0815429a252a8e6c4f71c9562cfd4d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181526817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1eac2d083ebb4a9a891a5f22a449399e5744ecca2dad33ed842954acad39c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:28:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:29:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba5c0f1b81ae37786c64dcd3f73f35d3119ccb43a136dd6f7dc24f35e00bb81`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 741.8 KB (741802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e94c837a3ea779f1d6d24e687ee911a24757a210a8db4b52195b4cad33b06`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 9.6 MB (9607171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dae6b22c313ae33086401200eb021c95a3bafd9dab2a9d4a05ca03cd5eb8a`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 92.0 KB (91992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de321ac390edef2ab4dab0ae23270894de88e4c4eea337364ebbe29b37c44d`  
		Last Modified: Wed, 16 Sep 2026 03:30:29 GMT  
		Size: 130.3 MB (130329183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6540c38625250e063487c041b6708b971dada3236bb69d74e9511baa67af2368`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:2dd8bc03493e1e35202a0aed11ec6672e9e272bf69cbed91ac63aae4289bdb13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22721935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0764d7010da410508f07c7f3f141d18ce1fb9bcf6d85939693c43d922d331596`

```dockerfile
```

-	Layers:
	-	`sha256:8dd4abe8fc93675cef04c8cd4c64c1e7455ed5b86d73ed5cc23336976085347b`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 22.7 MB (22706131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c83e27cde1f6b62ab519b92e2faffde2f92a9ba0b4cda8cffa88092ab804f1e7`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json
