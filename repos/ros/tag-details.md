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
$ docker pull ros@sha256:860e53793ccf575e5369b5e9a19939de2bfcfb46a299954d06f54f2af54fed19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble` - linux; amd64

```console
$ docker pull ros@sha256:6b4abb5340e430c632bcf4710fb34996df4f80e502993e5755f8fc59a39c7b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266877506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b6841678ad1277ea7bb2a65942cad7999da6acd29587a8da210ed5b0928d0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46ed72a21c108fa6b40f45f0885ae9a8feff84bd032b3b1396cbdde9c5f76`  
		Last Modified: Fri, 02 Oct 2026 02:31:21 GMT  
		Size: 98.2 MB (98199982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d93248370c0ee133c07283fd1145856e8a394fbda33495346025a475bbb750`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 389.4 KB (389415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1247efdbbc2a789a3ddcdd2256b53e60c06f036c8fc06f694cb4757b1dd1954`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39059d943f4d2244529c8a555ed1b29e592ed0a4ab34cb689e429169d92bf2f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 23.3 MB (23348095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:849d5b1347fb6bb504a39b9640202cdd9c79fd691c82787d8c5679e7becd4938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439c88d6a0978da67d300364fee0fef53308fe10318ac76dbba729ffd1ab92be`

```dockerfile
```

-	Layers:
	-	`sha256:db81dd8b0c392743da0ecc1e3945dca56e4bc90f05b30f89bbdf46fd98f07161`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 24.0 MB (23958067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b1c052815323d1d302cba9d71080d598ee9a27c97c6a95a8f6a1f84b7e2a657`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bbf36a9a05f3df5670a2b98db218e70a1320a956c79f1e0f0a333920049aa605
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259511766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a526e88ae55b5089962d6817f3d372767babd8e7154c841dc13646f2b88eb5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420bcece04798f21e90f98ee882ff1dce134f13d7019dbcaa1a0e7caa17028`  
		Last Modified: Fri, 02 Oct 2026 02:31:34 GMT  
		Size: 95.8 MB (95835960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb31659d74b1b03ec8ac51f49f3b0928863045a662462ac275103a496ee088`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 389.4 KB (389416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45d9d03c465d67366f306d2b1abf490fa999669af5f3e361c4dd35c7a06713c`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf412a31c6bc935b585c861cc8d6a54b7433b28a8b5ebd072076d90df7d42e`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 22.8 MB (22751140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble` - unknown; unknown

```console
$ docker pull ros@sha256:64d8d47c73a77fb49e7a783839c7ddd0e260c6f3f244e1c855923913c6e784f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9061779cb9f3a3fd3fdd7d7d6c5a9b66ddb1e50fca1e922f4d2fbed64de61738`

```dockerfile
```

-	Layers:
	-	`sha256:0dfcd23fe6644ea529b08c09d631b853d018d90f9d6c1ea933de179753454202`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 24.0 MB (23971084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0c50d4bf4e7166f0ba2b588007a7a0d7e3f799a0c382031b2e5a200cc5298fe`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception`

```console
$ docker pull ros@sha256:de170d8905daf457ab2ab4f1806b8031412f16d7bef1db1cdea704e5d6626447
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:9162948028dbc1a7c4028f05fa3e341aa5afa8b0e25e6078c64cf30eff4f62ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **959.1 MB (959059404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5245126ba7e3c6a8c2129d438fed97c1e268ab47bd96bdb982da8174d7ebde`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46ed72a21c108fa6b40f45f0885ae9a8feff84bd032b3b1396cbdde9c5f76`  
		Last Modified: Fri, 02 Oct 2026 02:31:21 GMT  
		Size: 98.2 MB (98199982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d93248370c0ee133c07283fd1145856e8a394fbda33495346025a475bbb750`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 389.4 KB (389415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1247efdbbc2a789a3ddcdd2256b53e60c06f036c8fc06f694cb4757b1dd1954`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39059d943f4d2244529c8a555ed1b29e592ed0a4ab34cb689e429169d92bf2f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 23.3 MB (23348095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10a2496f2202e0a8d110dfae25959d8bd77704149f8b2963ddacd95da5cfb45`  
		Last Modified: Fri, 02 Oct 2026 03:21:47 GMT  
		Size: 692.2 MB (692181898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:f61beb67704002bb7fbef7d3dad88b4f77ac0d54ffb66e406b51f76676e6a19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26bf74c0de8e0be83d017a84c5e24fb52dcd46cf3c43a2cc42767ba6eeb3a98`

```dockerfile
```

-	Layers:
	-	`sha256:3e10b26003b6d73491f8e08dd2edfa7fd16d84c3f0415b56b24634d38aa86806`  
		Last Modified: Fri, 02 Oct 2026 03:21:36 GMT  
		Size: 59.1 MB (59062918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828159dc828909f55c7bcd2d6280cc663ce752d3390ea08c9b9f6f512cf40fa6`  
		Last Modified: Fri, 02 Oct 2026 03:21:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:83bf5d919191b747a6d3bdb90f99bd240cc738b6292c69c584fcab9c5143bb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.7 MB (919673775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08193b28e67a272b18235e7a3e2fff5482923c89023dcfdc6b77b6d2d5d376e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420bcece04798f21e90f98ee882ff1dce134f13d7019dbcaa1a0e7caa17028`  
		Last Modified: Fri, 02 Oct 2026 02:31:34 GMT  
		Size: 95.8 MB (95835960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb31659d74b1b03ec8ac51f49f3b0928863045a662462ac275103a496ee088`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 389.4 KB (389416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45d9d03c465d67366f306d2b1abf490fa999669af5f3e361c4dd35c7a06713c`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf412a31c6bc935b585c861cc8d6a54b7433b28a8b5ebd072076d90df7d42e`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 22.8 MB (22751140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dcb29e7daf270b7c9154333948e2e6022f13755075180c7460734f9ce1d455`  
		Last Modified: Fri, 02 Oct 2026 03:21:40 GMT  
		Size: 660.2 MB (660162009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:2635e8dca4abc9f696ccc88cfefa503290dc4936e18fea837005f8e8cf20f690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59056674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d11d9160b510e64c95f75fab5ed9329eaf8305986e855bceced9537f58bb193`

```dockerfile
```

-	Layers:
	-	`sha256:8989d4bf7780096c73d208939a9f08b779767a20cf630451aed3cc78e300b7bc`  
		Last Modified: Fri, 02 Oct 2026 03:21:30 GMT  
		Size: 59.0 MB (59047243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:effd8ec6acf52d8b4b6a37a2c4f8746dbf2a9e9f1e86052d425f38d7a827d4bb`  
		Last Modified: Fri, 02 Oct 2026 03:21:27 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-perception-jammy`

```console
$ docker pull ros@sha256:de170d8905daf457ab2ab4f1806b8031412f16d7bef1db1cdea704e5d6626447
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception-jammy` - linux; amd64

```console
$ docker pull ros@sha256:9162948028dbc1a7c4028f05fa3e341aa5afa8b0e25e6078c64cf30eff4f62ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **959.1 MB (959059404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5245126ba7e3c6a8c2129d438fed97c1e268ab47bd96bdb982da8174d7ebde`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46ed72a21c108fa6b40f45f0885ae9a8feff84bd032b3b1396cbdde9c5f76`  
		Last Modified: Fri, 02 Oct 2026 02:31:21 GMT  
		Size: 98.2 MB (98199982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d93248370c0ee133c07283fd1145856e8a394fbda33495346025a475bbb750`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 389.4 KB (389415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1247efdbbc2a789a3ddcdd2256b53e60c06f036c8fc06f694cb4757b1dd1954`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39059d943f4d2244529c8a555ed1b29e592ed0a4ab34cb689e429169d92bf2f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 23.3 MB (23348095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10a2496f2202e0a8d110dfae25959d8bd77704149f8b2963ddacd95da5cfb45`  
		Last Modified: Fri, 02 Oct 2026 03:21:47 GMT  
		Size: 692.2 MB (692181898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:f61beb67704002bb7fbef7d3dad88b4f77ac0d54ffb66e406b51f76676e6a19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59072270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26bf74c0de8e0be83d017a84c5e24fb52dcd46cf3c43a2cc42767ba6eeb3a98`

```dockerfile
```

-	Layers:
	-	`sha256:3e10b26003b6d73491f8e08dd2edfa7fd16d84c3f0415b56b24634d38aa86806`  
		Last Modified: Fri, 02 Oct 2026 03:21:36 GMT  
		Size: 59.1 MB (59062918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828159dc828909f55c7bcd2d6280cc663ce752d3390ea08c9b9f6f512cf40fa6`  
		Last Modified: Fri, 02 Oct 2026 03:21:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:83bf5d919191b747a6d3bdb90f99bd240cc738b6292c69c584fcab9c5143bb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.7 MB (919673775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08193b28e67a272b18235e7a3e2fff5482923c89023dcfdc6b77b6d2d5d376e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420bcece04798f21e90f98ee882ff1dce134f13d7019dbcaa1a0e7caa17028`  
		Last Modified: Fri, 02 Oct 2026 02:31:34 GMT  
		Size: 95.8 MB (95835960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb31659d74b1b03ec8ac51f49f3b0928863045a662462ac275103a496ee088`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 389.4 KB (389416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45d9d03c465d67366f306d2b1abf490fa999669af5f3e361c4dd35c7a06713c`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf412a31c6bc935b585c861cc8d6a54b7433b28a8b5ebd072076d90df7d42e`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 22.8 MB (22751140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dcb29e7daf270b7c9154333948e2e6022f13755075180c7460734f9ce1d455`  
		Last Modified: Fri, 02 Oct 2026 03:21:40 GMT  
		Size: 660.2 MB (660162009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:2635e8dca4abc9f696ccc88cfefa503290dc4936e18fea837005f8e8cf20f690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59056674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d11d9160b510e64c95f75fab5ed9329eaf8305986e855bceced9537f58bb193`

```dockerfile
```

-	Layers:
	-	`sha256:8989d4bf7780096c73d208939a9f08b779767a20cf630451aed3cc78e300b7bc`  
		Last Modified: Fri, 02 Oct 2026 03:21:30 GMT  
		Size: 59.0 MB (59047243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:effd8ec6acf52d8b4b6a37a2c4f8746dbf2a9e9f1e86052d425f38d7a827d4bb`  
		Last Modified: Fri, 02 Oct 2026 03:21:27 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base`

```console
$ docker pull ros@sha256:860e53793ccf575e5369b5e9a19939de2bfcfb46a299954d06f54f2af54fed19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6b4abb5340e430c632bcf4710fb34996df4f80e502993e5755f8fc59a39c7b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266877506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b6841678ad1277ea7bb2a65942cad7999da6acd29587a8da210ed5b0928d0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46ed72a21c108fa6b40f45f0885ae9a8feff84bd032b3b1396cbdde9c5f76`  
		Last Modified: Fri, 02 Oct 2026 02:31:21 GMT  
		Size: 98.2 MB (98199982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d93248370c0ee133c07283fd1145856e8a394fbda33495346025a475bbb750`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 389.4 KB (389415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1247efdbbc2a789a3ddcdd2256b53e60c06f036c8fc06f694cb4757b1dd1954`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39059d943f4d2244529c8a555ed1b29e592ed0a4ab34cb689e429169d92bf2f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 23.3 MB (23348095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:849d5b1347fb6bb504a39b9640202cdd9c79fd691c82787d8c5679e7becd4938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439c88d6a0978da67d300364fee0fef53308fe10318ac76dbba729ffd1ab92be`

```dockerfile
```

-	Layers:
	-	`sha256:db81dd8b0c392743da0ecc1e3945dca56e4bc90f05b30f89bbdf46fd98f07161`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 24.0 MB (23958067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b1c052815323d1d302cba9d71080d598ee9a27c97c6a95a8f6a1f84b7e2a657`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bbf36a9a05f3df5670a2b98db218e70a1320a956c79f1e0f0a333920049aa605
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259511766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a526e88ae55b5089962d6817f3d372767babd8e7154c841dc13646f2b88eb5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420bcece04798f21e90f98ee882ff1dce134f13d7019dbcaa1a0e7caa17028`  
		Last Modified: Fri, 02 Oct 2026 02:31:34 GMT  
		Size: 95.8 MB (95835960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb31659d74b1b03ec8ac51f49f3b0928863045a662462ac275103a496ee088`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 389.4 KB (389416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45d9d03c465d67366f306d2b1abf490fa999669af5f3e361c4dd35c7a06713c`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf412a31c6bc935b585c861cc8d6a54b7433b28a8b5ebd072076d90df7d42e`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 22.8 MB (22751140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:64d8d47c73a77fb49e7a783839c7ddd0e260c6f3f244e1c855923913c6e784f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9061779cb9f3a3fd3fdd7d7d6c5a9b66ddb1e50fca1e922f4d2fbed64de61738`

```dockerfile
```

-	Layers:
	-	`sha256:0dfcd23fe6644ea529b08c09d631b853d018d90f9d6c1ea933de179753454202`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 24.0 MB (23971084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0c50d4bf4e7166f0ba2b588007a7a0d7e3f799a0c382031b2e5a200cc5298fe`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:860e53793ccf575e5369b5e9a19939de2bfcfb46a299954d06f54f2af54fed19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:6b4abb5340e430c632bcf4710fb34996df4f80e502993e5755f8fc59a39c7b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266877506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b6841678ad1277ea7bb2a65942cad7999da6acd29587a8da210ed5b0928d0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:12 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e46ed72a21c108fa6b40f45f0885ae9a8feff84bd032b3b1396cbdde9c5f76`  
		Last Modified: Fri, 02 Oct 2026 02:31:21 GMT  
		Size: 98.2 MB (98199982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d93248370c0ee133c07283fd1145856e8a394fbda33495346025a475bbb750`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 389.4 KB (389415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1247efdbbc2a789a3ddcdd2256b53e60c06f036c8fc06f694cb4757b1dd1954`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39059d943f4d2244529c8a555ed1b29e592ed0a4ab34cb689e429169d92bf2f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 23.3 MB (23348095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:849d5b1347fb6bb504a39b9640202cdd9c79fd691c82787d8c5679e7becd4938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439c88d6a0978da67d300364fee0fef53308fe10318ac76dbba729ffd1ab92be`

```dockerfile
```

-	Layers:
	-	`sha256:db81dd8b0c392743da0ecc1e3945dca56e4bc90f05b30f89bbdf46fd98f07161`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 24.0 MB (23958067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b1c052815323d1d302cba9d71080d598ee9a27c97c6a95a8f6a1f84b7e2a657`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bbf36a9a05f3df5670a2b98db218e70a1320a956c79f1e0f0a333920049aa605
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259511766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a526e88ae55b5089962d6817f3d372767babd8e7154c841dc13646f2b88eb5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420bcece04798f21e90f98ee882ff1dce134f13d7019dbcaa1a0e7caa17028`  
		Last Modified: Fri, 02 Oct 2026 02:31:34 GMT  
		Size: 95.8 MB (95835960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb31659d74b1b03ec8ac51f49f3b0928863045a662462ac275103a496ee088`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 389.4 KB (389416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45d9d03c465d67366f306d2b1abf490fa999669af5f3e361c4dd35c7a06713c`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf412a31c6bc935b585c861cc8d6a54b7433b28a8b5ebd072076d90df7d42e`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 22.8 MB (22751140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:64d8d47c73a77fb49e7a783839c7ddd0e260c6f3f244e1c855923913c6e784f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23987569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9061779cb9f3a3fd3fdd7d7d6c5a9b66ddb1e50fca1e922f4d2fbed64de61738`

```dockerfile
```

-	Layers:
	-	`sha256:0dfcd23fe6644ea529b08c09d631b853d018d90f9d6c1ea933de179753454202`  
		Last Modified: Fri, 02 Oct 2026 02:31:32 GMT  
		Size: 24.0 MB (23971084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0c50d4bf4e7166f0ba2b588007a7a0d7e3f799a0c382031b2e5a200cc5298fe`  
		Last Modified: Fri, 02 Oct 2026 02:31:31 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:6892c5a0fec6c3bddc4cea502c7623f88988d7b1442419a23c685757249c7437
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a4ccdc6f1d361aedd41f0a91bd9af30979961dd448791015f11f0d8d1259fd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144937335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b036fe0ee3894727645d1cac5465ccae11db2ac5cc3b4e867009d1de1f3a2d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:d449e6ffd090a082886f1eb6e4a8a3a2177fd0f9bcf948a031811c7d84699b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2ad0c78f49487ee2bfb4726e7e8bf3c05a877e20da7c2bcb7eb57481d168b9`

```dockerfile
```

-	Layers:
	-	`sha256:6876d42b98c6cb6e72f873e5e45195ba2b49f3a0be39eeac60d39b91097cf1f3`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 17.9 MB (17916890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44da6ca3f7f78ff39c4252659f346f8b07de70cb684d1631c9be7b337b2d386e`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d8bdefcfb553802cca2fff87233f0c0adfbbd50e87e7c64c9af9a098250e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140532607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ac8ab1e22bb7a395ab40eba5221db4ced1c3e9e339b56fc01d20c210784cfc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:c0d562c394c569677aad2d80e8f677fef4936fe33777872be8f25b58094514e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f22d3bfc7ea77275d34c26b51babc85e8e3ec1e76c923c5b111d781469b4f`

```dockerfile
```

-	Layers:
	-	`sha256:08bf7d0eb582109a3557a27bda5707c2653ba7fc43fc7ac148fbaf5a53c0be49`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 17.9 MB (17903235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d526c78c9b0ab1a9c1ecbee7b925c4c1099aa06a6523948ea2bec250edf47160`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:6892c5a0fec6c3bddc4cea502c7623f88988d7b1442419a23c685757249c7437
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:a4ccdc6f1d361aedd41f0a91bd9af30979961dd448791015f11f0d8d1259fd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144937335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b036fe0ee3894727645d1cac5465ccae11db2ac5cc3b4e867009d1de1f3a2d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:51 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002b86229673ff1430fe07afe1839d097f0d8b713bad707b3e0d3064200ca8c`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 1.2 MB (1212880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e804a0ad2a8bf7be6a3840017d207a853e13bb6c7bb8336d715ac85bd592082`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 6.0 MB (5952340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0b6f752f7b983a42c4fc8bf72b268764ed14aed27bc428c8964abe13e1919`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 98.0 KB (97958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b65fcd8f7286a56e6fecfcd7cd73119c8394b49c7adbfcf16e8c1bc569a0ddc`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 107.9 MB (107922333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcc0fc0e26ee91bc9e0f7a730d41bb6eb404aefed99de732d1f9ecff40b5a53`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:d449e6ffd090a082886f1eb6e4a8a3a2177fd0f9bcf948a031811c7d84699b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2ad0c78f49487ee2bfb4726e7e8bf3c05a877e20da7c2bcb7eb57481d168b9`

```dockerfile
```

-	Layers:
	-	`sha256:6876d42b98c6cb6e72f873e5e45195ba2b49f3a0be39eeac60d39b91097cf1f3`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 17.9 MB (17916890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44da6ca3f7f78ff39c4252659f346f8b07de70cb684d1631c9be7b337b2d386e`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d8bdefcfb553802cca2fff87233f0c0adfbbd50e87e7c64c9af9a098250e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140532607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ac8ab1e22bb7a395ab40eba5221db4ced1c3e9e339b56fc01d20c210784cfc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:50 GMT
ENV ROS_DISTRO=humble
# Fri, 02 Oct 2026 01:33:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b557813fcf11a25538d23fe1de0d1cf1fb9dc99d43a1c54ea228dca996cae7`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 1.2 MB (1212867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe48d969d878c110f3b21574ade580dfffee64713836a2b307826cb274e442b`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 5.9 MB (5911995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50744702b8e53a0cafefc9b55960d72c5f0bae00626388f8f52c2784926e184e`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be6951d519d8e68d6ae87632a4b65e3ecc55686c1c00fed925e6a4e097df99f`  
		Last Modified: Fri, 02 Oct 2026 01:34:19 GMT  
		Size: 105.6 MB (105625459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022cc4907bf5a12b531765cb8979b1a775f568a5396ad80f8bd32af24bfe7ab7`  
		Last Modified: Fri, 02 Oct 2026 01:34:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:c0d562c394c569677aad2d80e8f677fef4936fe33777872be8f25b58094514e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f22d3bfc7ea77275d34c26b51babc85e8e3ec1e76c923c5b111d781469b4f`

```dockerfile
```

-	Layers:
	-	`sha256:08bf7d0eb582109a3557a27bda5707c2653ba7fc43fc7ac148fbaf5a53c0be49`  
		Last Modified: Fri, 02 Oct 2026 01:34:17 GMT  
		Size: 17.9 MB (17903235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d526c78c9b0ab1a9c1ecbee7b925c4c1099aa06a6523948ea2bec250edf47160`  
		Last Modified: Fri, 02 Oct 2026 01:34:16 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy`

```console
$ docker pull ros@sha256:066420e07f60aa18262f2479981def87ebcfcec42eefb0c0c57c4a46098348ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:a5426de405f6f0a82b0f3def3bbd3bce2a71a91421fe980c17613b4e51ef38d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298960233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b9d24bad695363d48418c1109d23e9738774b88a2017ec6d01ff9df4c3072c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:f14c7040f232da10af5bee6cf98c4ce65a59bb7b56ddee278f262bff7d35db00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7d955c39469677cff8536dc1bfa0f7b08372d3af19630c4d09861a597d64c9`

```dockerfile
```

-	Layers:
	-	`sha256:9aafc6469861e47cc313868dda55e3a650895c855b7072bf84a5c508fd69c020`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 24.9 MB (24921672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7958f9db6c2fe5cb5f37c0d3385b2b0e948b525a5e2aad4e14adc66b2e68cd41`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ec00a06df4f573a86e4336c4585940f7f614646ef22675ace1b3e14ee0a82cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287390179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c5545ce25528f70a63f266924b40c80e95bf8e27c233f4108f4d5fda5c0eb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:81883285d1df2f8922901d1617af7296ebe1606e30fb370928da7c5d167866b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff93186a2d8e99a9d1aa295015b2286e714702d402e1af8dab851076c82b765`

```dockerfile
```

-	Layers:
	-	`sha256:a974b5a448087369113838f3cbde6e23d895829d37f16e57906b0cc098fa6596`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 24.9 MB (24943927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5631331ee34c711cea7fdb1a3f8c0833f8fdb7b2bcc81a1cd8e8bd6fed1729d4`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:8135425379a118d936377a0c0c51c2fd33d0c8f1cca8bfd4b88c626a5d8f806e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:e33bfb524d656a129657e9ea99d82d7c4e74abf56111d2e20bb29612a30af67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083975911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d8ece9b1946a01c7379836d8cb06ef5282efe9f9735113c5b8db683066a83d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d4d25d9f87f348fee3af60c9ce7716be0f0100e42b908ba7959917bffd6936`  
		Last Modified: Fri, 02 Oct 2026 03:22:50 GMT  
		Size: 785.0 MB (785015678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:74ce26e4e73ff35a26010f3baefd5a993fdf2c1f2d16a52d94c4908fd0523834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61119990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35c76f29a56aeea3827e24c1097c0dd108f74775eac74b3a216ab9e522a2040`

```dockerfile
```

-	Layers:
	-	`sha256:ade56666efd5440d8f41f53a24789680b6b856bee8f329e11456e463eab191e5`  
		Last Modified: Fri, 02 Oct 2026 03:22:37 GMT  
		Size: 61.1 MB (61110651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48231cd7f2e6783dcbeb916c22d04139670a7078d336e92a3926560b29e2f585`  
		Last Modified: Fri, 02 Oct 2026 03:22:34 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7101cde85253ee44375f6cf26b197f84982149da9b174864eb99582e0b15f62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.5 MB (986517932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de69d08514c646c2ed2faea445fe9f36aac949446fdc4c5702a04ec11acd9672`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c24d94ab33f4423e35ed823683b7065cbf79643526a911e9b5be8ddb51c30e9`  
		Last Modified: Fri, 02 Oct 2026 03:22:06 GMT  
		Size: 699.1 MB (699127753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:fcda863f1e5acfedaadccf4d4138e21a67aa1d21c455ba07e65793bfb74af133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61050590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e6dc25106b2aff015003700b03899d509473af6c2c969b4910d2ea644e838e`

```dockerfile
```

-	Layers:
	-	`sha256:d8ea3c2d9031fd9d5f278e2101fc8f36ef03473eb8cf50a89bc6fe9943b6068f`  
		Last Modified: Fri, 02 Oct 2026 03:21:56 GMT  
		Size: 61.0 MB (61041171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54a56f974102a6dbd4ea90819c15b6f074ee2eb1a8b9109b61205e2d871efc73`  
		Last Modified: Fri, 02 Oct 2026 03:21:53 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-perception-noble`

```console
$ docker pull ros@sha256:8135425379a118d936377a0c0c51c2fd33d0c8f1cca8bfd4b88c626a5d8f806e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:e33bfb524d656a129657e9ea99d82d7c4e74abf56111d2e20bb29612a30af67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1083975911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d8ece9b1946a01c7379836d8cb06ef5282efe9f9735113c5b8db683066a83d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d4d25d9f87f348fee3af60c9ce7716be0f0100e42b908ba7959917bffd6936`  
		Last Modified: Fri, 02 Oct 2026 03:22:50 GMT  
		Size: 785.0 MB (785015678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:74ce26e4e73ff35a26010f3baefd5a993fdf2c1f2d16a52d94c4908fd0523834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61119990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35c76f29a56aeea3827e24c1097c0dd108f74775eac74b3a216ab9e522a2040`

```dockerfile
```

-	Layers:
	-	`sha256:ade56666efd5440d8f41f53a24789680b6b856bee8f329e11456e463eab191e5`  
		Last Modified: Fri, 02 Oct 2026 03:22:37 GMT  
		Size: 61.1 MB (61110651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48231cd7f2e6783dcbeb916c22d04139670a7078d336e92a3926560b29e2f585`  
		Last Modified: Fri, 02 Oct 2026 03:22:34 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7101cde85253ee44375f6cf26b197f84982149da9b174864eb99582e0b15f62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.5 MB (986517932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de69d08514c646c2ed2faea445fe9f36aac949446fdc4c5702a04ec11acd9672`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c24d94ab33f4423e35ed823683b7065cbf79643526a911e9b5be8ddb51c30e9`  
		Last Modified: Fri, 02 Oct 2026 03:22:06 GMT  
		Size: 699.1 MB (699127753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:fcda863f1e5acfedaadccf4d4138e21a67aa1d21c455ba07e65793bfb74af133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61050590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e6dc25106b2aff015003700b03899d509473af6c2c969b4910d2ea644e838e`

```dockerfile
```

-	Layers:
	-	`sha256:d8ea3c2d9031fd9d5f278e2101fc8f36ef03473eb8cf50a89bc6fe9943b6068f`  
		Last Modified: Fri, 02 Oct 2026 03:21:56 GMT  
		Size: 61.0 MB (61041171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54a56f974102a6dbd4ea90819c15b6f074ee2eb1a8b9109b61205e2d871efc73`  
		Last Modified: Fri, 02 Oct 2026 03:21:53 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base`

```console
$ docker pull ros@sha256:066420e07f60aa18262f2479981def87ebcfcec42eefb0c0c57c4a46098348ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:a5426de405f6f0a82b0f3def3bbd3bce2a71a91421fe980c17613b4e51ef38d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298960233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b9d24bad695363d48418c1109d23e9738774b88a2017ec6d01ff9df4c3072c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:f14c7040f232da10af5bee6cf98c4ce65a59bb7b56ddee278f262bff7d35db00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7d955c39469677cff8536dc1bfa0f7b08372d3af19630c4d09861a597d64c9`

```dockerfile
```

-	Layers:
	-	`sha256:9aafc6469861e47cc313868dda55e3a650895c855b7072bf84a5c508fd69c020`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 24.9 MB (24921672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7958f9db6c2fe5cb5f37c0d3385b2b0e948b525a5e2aad4e14adc66b2e68cd41`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ec00a06df4f573a86e4336c4585940f7f614646ef22675ace1b3e14ee0a82cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287390179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c5545ce25528f70a63f266924b40c80e95bf8e27c233f4108f4d5fda5c0eb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:81883285d1df2f8922901d1617af7296ebe1606e30fb370928da7c5d167866b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff93186a2d8e99a9d1aa295015b2286e714702d402e1af8dab851076c82b765`

```dockerfile
```

-	Layers:
	-	`sha256:a974b5a448087369113838f3cbde6e23d895829d37f16e57906b0cc098fa6596`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 24.9 MB (24943927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5631331ee34c711cea7fdb1a3f8c0833f8fdb7b2bcc81a1cd8e8bd6fed1729d4`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-base-noble`

```console
$ docker pull ros@sha256:066420e07f60aa18262f2479981def87ebcfcec42eefb0c0c57c4a46098348ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:a5426de405f6f0a82b0f3def3bbd3bce2a71a91421fe980c17613b4e51ef38d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298960233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b9d24bad695363d48418c1109d23e9738774b88a2017ec6d01ff9df4c3072c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02610e3730d4b174ff31669e18767af30a38bb8d46de8971037b7201a31496`  
		Last Modified: Fri, 02 Oct 2026 02:31:29 GMT  
		Size: 110.2 MB (110244081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3c7b0669cf139d4466385352966568f18b93f9622d5df0560f1a8fc534e8c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 425.5 KB (425548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bdbd59ab2b0ff75b7c76c65a2294d7bca49c1fe60c3e7313694d6fdf17ad7c`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 2.7 KB (2689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85cb46e7f9e1987dbff0953b61e3d207e5dc4a4c09d33fe70377aa111a7b47b`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 28.1 MB (28090293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:f14c7040f232da10af5bee6cf98c4ce65a59bb7b56ddee278f262bff7d35db00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7d955c39469677cff8536dc1bfa0f7b08372d3af19630c4d09861a597d64c9`

```dockerfile
```

-	Layers:
	-	`sha256:9aafc6469861e47cc313868dda55e3a650895c855b7072bf84a5c508fd69c020`  
		Last Modified: Fri, 02 Oct 2026 02:31:26 GMT  
		Size: 24.9 MB (24921672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7958f9db6c2fe5cb5f37c0d3385b2b0e948b525a5e2aad4e14adc66b2e68cd41`  
		Last Modified: Fri, 02 Oct 2026 02:31:25 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ec00a06df4f573a86e4336c4585940f7f614646ef22675ace1b3e14ee0a82cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287390179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c5545ce25528f70a63f266924b40c80e95bf8e27c233f4108f4d5fda5c0eb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1464792e2dcc03bfcc4a380f2db85d23190b68d3f2d80095dbdcc86f468cd9a`  
		Last Modified: Fri, 02 Oct 2026 02:31:40 GMT  
		Size: 105.7 MB (105678958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b84fc58bc29d30ded586d328dcac888b1f355f7ee068dd61a3501e21c5ee18`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 425.6 KB (425551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fe4a81959604b7aaa16fad152b936d65b546181d567296beebb24b37fe277`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acb301d1f70c1439fe8ce12b4d688a40872e15ba3c5b2325b832afc6cc90a06`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.2 MB (27194796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:81883285d1df2f8922901d1617af7296ebe1606e30fb370928da7c5d167866b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff93186a2d8e99a9d1aa295015b2286e714702d402e1af8dab851076c82b765`

```dockerfile
```

-	Layers:
	-	`sha256:a974b5a448087369113838f3cbde6e23d895829d37f16e57906b0cc098fa6596`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 24.9 MB (24943927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5631331ee34c711cea7fdb1a3f8c0833f8fdb7b2bcc81a1cd8e8bd6fed1729d4`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 16.5 KB (16466 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core`

```console
$ docker pull ros@sha256:8bbec5839a5258d43c8ff8d44c79c87a5c5a929ad419b22d0fa6cd5f196c7818
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:439734de612622a4328f4eea94a727d2da8d15c9b8028143d09607f986f97183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160197622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1b8b1ae7d6fb91a40fbccad62a5f7fb6608cdf23147a4d396d4713028e1442`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:b447f5b82881c53f08d393ee2f0f949703a17a32ba8216bd5d59e653206a7179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f13c91e77262139db838805e70c09009c7bfa441d964c79a9cb306fa45eb8c`

```dockerfile
```

-	Layers:
	-	`sha256:d932d039dd8b84d96e6897abc0e79bd8b09d80f5715633e3dd9c38cfe9fc3bf9`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 18.6 MB (18607919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d5bcc243a351ba012465504ea2c7ae43506be8716de8e74d8d8d3646f757d5`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 14.6 KB (14607 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8f687fdf084482819aa7dab48c3887331edd0d3687b219951fdb66c418316ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154088203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd477870b3ed477f96b62949711d3ef5fe53cec9cfa5a52be16d7827384e201`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:6b22a5b84ba108df2dcfecabb9c00dd3f045c045e710f37cd2a4d1fd53598971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c526461601a0ee663bc6547184be5c2248910cf48199270db3f761819aad36`

```dockerfile
```

-	Layers:
	-	`sha256:2ce46351123c8771627d5d5ad939b03d3860a483e9093dd141038a0cb856f6bc`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 18.6 MB (18581925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be30b8e204a623dbca500b98205291432817a44c320a58a8d8dcf66e9fc3145b`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:jazzy-ros-core-noble`

```console
$ docker pull ros@sha256:8bbec5839a5258d43c8ff8d44c79c87a5c5a929ad419b22d0fa6cd5f196c7818
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:439734de612622a4328f4eea94a727d2da8d15c9b8028143d09607f986f97183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160197622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1b8b1ae7d6fb91a40fbccad62a5f7fb6608cdf23147a4d396d4713028e1442`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:18 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:23 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:34:09 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:34:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:34:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36511fcaae4567766304af008756aa35d7783372c97a4986814397dd21925a7f`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570520b7f3a785cf844c7aed36ed0f7b225433f9c859f0675a9e927b6ba0832`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 9.1 MB (9119867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a737a9006d9c2b045837305c33443ea754a175b0e6124bce3e8ab8055b62c0`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 95.0 KB (95041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b07210c227e201d0d344b12f5bbb2bb7023b02554bbe612f67ed736f1e0130`  
		Last Modified: Fri, 02 Oct 2026 01:34:40 GMT  
		Size: 120.5 MB (120534508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d52dbe0d5266f18937c1e0d15154dcc13fdb800bbc742b621f109a0d25b28`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:b447f5b82881c53f08d393ee2f0f949703a17a32ba8216bd5d59e653206a7179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18622526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f13c91e77262139db838805e70c09009c7bfa441d964c79a9cb306fa45eb8c`

```dockerfile
```

-	Layers:
	-	`sha256:d932d039dd8b84d96e6897abc0e79bd8b09d80f5715633e3dd9c38cfe9fc3bf9`  
		Last Modified: Fri, 02 Oct 2026 01:34:38 GMT  
		Size: 18.6 MB (18607919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d5bcc243a351ba012465504ea2c7ae43506be8716de8e74d8d8d3646f757d5`  
		Last Modified: Fri, 02 Oct 2026 01:34:37 GMT  
		Size: 14.6 KB (14607 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8f687fdf084482819aa7dab48c3887331edd0d3687b219951fdb66c418316ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154088203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd477870b3ed477f96b62949711d3ef5fe53cec9cfa5a52be16d7827384e201`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:13 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ROS_DISTRO=jazzy
# Fri, 02 Oct 2026 01:33:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67678ff0249d2d6f797f1e59d0f94f273e3a087280667f828ab393d60f9c8bb7`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 683.5 KB (683516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c25488505afd3615c12ca0586cc6b2711036abeffbbba50fc0e876adb3ce`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 9.0 MB (8990784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eab992b03775030af3f4a2c503e795df95cd8cf0396e42661c47d2a71e0eef`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 95.0 KB (94951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5682617504ebb80773d2faf85a796d24b412518cb98adf6d3c5758052dd114f`  
		Last Modified: Fri, 02 Oct 2026 01:34:30 GMT  
		Size: 115.4 MB (115378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7a1574b6b3a62efd1d75d62c70003738971f623f93b34f0eebcfaba401b13`  
		Last Modified: Fri, 02 Oct 2026 01:34:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6b22a5b84ba108df2dcfecabb9c00dd3f045c045e710f37cd2a4d1fd53598971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18596658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c526461601a0ee663bc6547184be5c2248910cf48199270db3f761819aad36`

```dockerfile
```

-	Layers:
	-	`sha256:2ce46351123c8771627d5d5ad939b03d3860a483e9093dd141038a0cb856f6bc`  
		Last Modified: Fri, 02 Oct 2026 01:34:27 GMT  
		Size: 18.6 MB (18581925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be30b8e204a623dbca500b98205291432817a44c320a58a8d8dcf66e9fc3145b`  
		Last Modified: Fri, 02 Oct 2026 01:34:26 GMT  
		Size: 14.7 KB (14733 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted`

```console
$ docker pull ros@sha256:2d99ad44fba30e74e43e8ec751c621c2b8c015deed04b9a1fc8434fbc4428cc1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted` - linux; amd64

```console
$ docker pull ros@sha256:e797233622ddb8771b9b17cb8182adb43c9a506a99fbea2c8ca4033077572fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299429581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562e9fa18338286b157490a6487a71bc148849978ad4612fdacfa9bed2f5e301`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:94f6c4bed3e686526585392ecb2d921b8d29edf62eb13aedd8285b7ddfb92964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf65527c32d9085b702d18dbcb96f4c53a831950434f9175a0d74776921a670`

```dockerfile
```

-	Layers:
	-	`sha256:f6fac9845334fb4b0074e1cd9684eaf525a9f0909c77e01d324a501146d8d6f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 24.9 MB (24876088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b404b4a5eb7676e8cb862b87226e1eac5153b50e6e2274292f0b9aaae5b6c152`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:85f57b862db15b77059f12e338d900a59abad617d19a34ae728746c5c8c7d36d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 MB (287816376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd27d2dd297e0a3d0b95ea9e9cabd6bb110346108de70443e0334ebfe4a94fcd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f8fb37ca38ff6ea21e120238afdd9b6933a01e6c4c562ee231a1b8fb2ddcc`  
		Last Modified: Fri, 02 Oct 2026 02:31:42 GMT  
		Size: 105.7 MB (105681048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8fe8730e81a63b5bfc284073d9a29e2091272fe4c09ecb492122c8db090e6`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 374.8 KB (374755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0332d327a027c3e759491ef0d979bed4016fa4e8e86539c611bdc3eb1f89dc03`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4f6b135e971315db07bf581ab35e36123cca2ec91fc65efd96964d81f88f29`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.0 MB (27028264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted` - unknown; unknown

```console
$ docker pull ros@sha256:b560885b3756d96c046bc8d6718d7b02c9c03ce5d122e1222b3427fe148cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c38dff4a38662ac7c500bd2188658a9e0879feab4c0cb3cde08488448a34f0`

```dockerfile
```

-	Layers:
	-	`sha256:d29a8534aaea0ccdb1eb767595c8ba3d80696cda1055d6576d43a6468864857d`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 24.9 MB (24898348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b701a499a4ec2eda1e3d6c359db4779ba04b9f3dda267b9d0efab70389d8447`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception`

```console
$ docker pull ros@sha256:e40579c9ef8e2c20fe488f7a20b8461d26c08d012aa45f26666d152040b66ec3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception` - linux; amd64

```console
$ docker pull ros@sha256:2136a2dd7960b61cf0c9dad55aedc22db376a59d3efd2cbb9dd25351e78bd6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084453448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:378f97a6f34266bd01463d68f69e248d012d028a70b15e051d846db469ae1bc4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd57061453766f35cfb4fe0e0b9e81b5f98f1410c708354dc4a2f20410299ee`  
		Last Modified: Fri, 02 Oct 2026 03:22:14 GMT  
		Size: 785.0 MB (785023867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:c272f7c9bc4764eef4f51d7eb0d8045794b8969a7531f19a40dc306dfa6f987e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61079062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22dfe58dcbde0fdcf740ff9a62358ea35f4ad31cf05dcf7fbd972d7edfeaf701`

```dockerfile
```

-	Layers:
	-	`sha256:fafff7bc257c6580497d9cc71010a11fc6a60a789b2e89fa333558f9fb2341bd`  
		Last Modified: Fri, 02 Oct 2026 03:22:02 GMT  
		Size: 61.1 MB (61069711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70ceb47e3c94fc29008b8a7a36c34f832df071478d269d0b0b2062ae9f87529f`  
		Last Modified: Fri, 02 Oct 2026 03:21:59 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:863870a8d2f69d21a5c5b95180894bc39f60c302ff976c02f9e21ebb467b96e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **987.0 MB (987000642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1bf13ae8db63380bdb1c2e67a441844fd08001a8e4d17e3df1b9eed4e0c5c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f8fb37ca38ff6ea21e120238afdd9b6933a01e6c4c562ee231a1b8fb2ddcc`  
		Last Modified: Fri, 02 Oct 2026 02:31:42 GMT  
		Size: 105.7 MB (105681048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8fe8730e81a63b5bfc284073d9a29e2091272fe4c09ecb492122c8db090e6`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 374.8 KB (374755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0332d327a027c3e759491ef0d979bed4016fa4e8e86539c611bdc3eb1f89dc03`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4f6b135e971315db07bf581ab35e36123cca2ec91fc65efd96964d81f88f29`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.0 MB (27028264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90aa875937c2b02cce801181ce4e95076482eb692574aea532a5e8a767f06c2`  
		Last Modified: Fri, 02 Oct 2026 03:21:58 GMT  
		Size: 699.2 MB (699184266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception` - unknown; unknown

```console
$ docker pull ros@sha256:326bcca8af239d62878b5d4c57ce8118b4e89895f15c97c93dbe608df19e6803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61009668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc31a6d7b13a69be7ebd44de3565c37241837f2eb225a5fda6a5cf401395c39`

```dockerfile
```

-	Layers:
	-	`sha256:0f373e551ac63d5460422cf1bb81373cab8b883a0d2035448eb9695431bc125a`  
		Last Modified: Fri, 02 Oct 2026 03:21:48 GMT  
		Size: 61.0 MB (61000236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:389a188d561aeff85f554afb114f8e7c66213c890d5d11978e7bb4e719695479`  
		Last Modified: Fri, 02 Oct 2026 03:21:45 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:e40579c9ef8e2c20fe488f7a20b8461d26c08d012aa45f26666d152040b66ec3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:2136a2dd7960b61cf0c9dad55aedc22db376a59d3efd2cbb9dd25351e78bd6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084453448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:378f97a6f34266bd01463d68f69e248d012d028a70b15e051d846db469ae1bc4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd57061453766f35cfb4fe0e0b9e81b5f98f1410c708354dc4a2f20410299ee`  
		Last Modified: Fri, 02 Oct 2026 03:22:14 GMT  
		Size: 785.0 MB (785023867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:c272f7c9bc4764eef4f51d7eb0d8045794b8969a7531f19a40dc306dfa6f987e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61079062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22dfe58dcbde0fdcf740ff9a62358ea35f4ad31cf05dcf7fbd972d7edfeaf701`

```dockerfile
```

-	Layers:
	-	`sha256:fafff7bc257c6580497d9cc71010a11fc6a60a789b2e89fa333558f9fb2341bd`  
		Last Modified: Fri, 02 Oct 2026 03:22:02 GMT  
		Size: 61.1 MB (61069711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70ceb47e3c94fc29008b8a7a36c34f832df071478d269d0b0b2062ae9f87529f`  
		Last Modified: Fri, 02 Oct 2026 03:21:59 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:863870a8d2f69d21a5c5b95180894bc39f60c302ff976c02f9e21ebb467b96e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **987.0 MB (987000642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1bf13ae8db63380bdb1c2e67a441844fd08001a8e4d17e3df1b9eed4e0c5c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f8fb37ca38ff6ea21e120238afdd9b6933a01e6c4c562ee231a1b8fb2ddcc`  
		Last Modified: Fri, 02 Oct 2026 02:31:42 GMT  
		Size: 105.7 MB (105681048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8fe8730e81a63b5bfc284073d9a29e2091272fe4c09ecb492122c8db090e6`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 374.8 KB (374755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0332d327a027c3e759491ef0d979bed4016fa4e8e86539c611bdc3eb1f89dc03`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4f6b135e971315db07bf581ab35e36123cca2ec91fc65efd96964d81f88f29`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.0 MB (27028264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90aa875937c2b02cce801181ce4e95076482eb692574aea532a5e8a767f06c2`  
		Last Modified: Fri, 02 Oct 2026 03:21:58 GMT  
		Size: 699.2 MB (699184266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:326bcca8af239d62878b5d4c57ce8118b4e89895f15c97c93dbe608df19e6803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61009668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc31a6d7b13a69be7ebd44de3565c37241837f2eb225a5fda6a5cf401395c39`

```dockerfile
```

-	Layers:
	-	`sha256:0f373e551ac63d5460422cf1bb81373cab8b883a0d2035448eb9695431bc125a`  
		Last Modified: Fri, 02 Oct 2026 03:21:48 GMT  
		Size: 61.0 MB (61000236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:389a188d561aeff85f554afb114f8e7c66213c890d5d11978e7bb4e719695479`  
		Last Modified: Fri, 02 Oct 2026 03:21:45 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:2d99ad44fba30e74e43e8ec751c621c2b8c015deed04b9a1fc8434fbc4428cc1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:e797233622ddb8771b9b17cb8182adb43c9a506a99fbea2c8ca4033077572fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299429581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562e9fa18338286b157490a6487a71bc148849978ad4612fdacfa9bed2f5e301`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:94f6c4bed3e686526585392ecb2d921b8d29edf62eb13aedd8285b7ddfb92964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf65527c32d9085b702d18dbcb96f4c53a831950434f9175a0d74776921a670`

```dockerfile
```

-	Layers:
	-	`sha256:f6fac9845334fb4b0074e1cd9684eaf525a9f0909c77e01d324a501146d8d6f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 24.9 MB (24876088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b404b4a5eb7676e8cb862b87226e1eac5153b50e6e2274292f0b9aaae5b6c152`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:85f57b862db15b77059f12e338d900a59abad617d19a34ae728746c5c8c7d36d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 MB (287816376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd27d2dd297e0a3d0b95ea9e9cabd6bb110346108de70443e0334ebfe4a94fcd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f8fb37ca38ff6ea21e120238afdd9b6933a01e6c4c562ee231a1b8fb2ddcc`  
		Last Modified: Fri, 02 Oct 2026 02:31:42 GMT  
		Size: 105.7 MB (105681048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8fe8730e81a63b5bfc284073d9a29e2091272fe4c09ecb492122c8db090e6`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 374.8 KB (374755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0332d327a027c3e759491ef0d979bed4016fa4e8e86539c611bdc3eb1f89dc03`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4f6b135e971315db07bf581ab35e36123cca2ec91fc65efd96964d81f88f29`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.0 MB (27028264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:b560885b3756d96c046bc8d6718d7b02c9c03ce5d122e1222b3427fe148cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c38dff4a38662ac7c500bd2188658a9e0879feab4c0cb3cde08488448a34f0`

```dockerfile
```

-	Layers:
	-	`sha256:d29a8534aaea0ccdb1eb767595c8ba3d80696cda1055d6576d43a6468864857d`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 24.9 MB (24898348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b701a499a4ec2eda1e3d6c359db4779ba04b9f3dda267b9d0efab70389d8447`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:2d99ad44fba30e74e43e8ec751c621c2b8c015deed04b9a1fc8434fbc4428cc1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:e797233622ddb8771b9b17cb8182adb43c9a506a99fbea2c8ca4033077572fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299429581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562e9fa18338286b157490a6487a71bc148849978ad4612fdacfa9bed2f5e301`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:20 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:22 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21fe9979fdefc4c368c3042813e69ce3d6c3009eb9d75476ececfbd14800df9`  
		Last Modified: Fri, 02 Oct 2026 02:31:20 GMT  
		Size: 110.2 MB (110246264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730f75c4e1ffae93d165f5348e9d1c924d54f1442802a8db411aa4eedf60e1f`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 374.8 KB (374750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b9036cff09e6df02fe5ae7a1be0c35dc19c8ca14f73a1021e6fbeddbb616d2`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 2.6 KB (2650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b299fce2de255ea052298856f1670472fedb36b3250ce00c1a78abd61ec73ee7`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 27.9 MB (27917136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:94f6c4bed3e686526585392ecb2d921b8d29edf62eb13aedd8285b7ddfb92964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf65527c32d9085b702d18dbcb96f4c53a831950434f9175a0d74776921a670`

```dockerfile
```

-	Layers:
	-	`sha256:f6fac9845334fb4b0074e1cd9684eaf525a9f0909c77e01d324a501146d8d6f3`  
		Last Modified: Fri, 02 Oct 2026 02:31:18 GMT  
		Size: 24.9 MB (24876088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b404b4a5eb7676e8cb862b87226e1eac5153b50e6e2274292f0b9aaae5b6c152`  
		Last Modified: Fri, 02 Oct 2026 02:31:16 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:85f57b862db15b77059f12e338d900a59abad617d19a34ae728746c5c8c7d36d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 MB (287816376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd27d2dd297e0a3d0b95ea9e9cabd6bb110346108de70443e0334ebfe4a94fcd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f8fb37ca38ff6ea21e120238afdd9b6933a01e6c4c562ee231a1b8fb2ddcc`  
		Last Modified: Fri, 02 Oct 2026 02:31:42 GMT  
		Size: 105.7 MB (105681048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8fe8730e81a63b5bfc284073d9a29e2091272fe4c09ecb492122c8db090e6`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 374.8 KB (374755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0332d327a027c3e759491ef0d979bed4016fa4e8e86539c611bdc3eb1f89dc03`  
		Last Modified: Fri, 02 Oct 2026 02:31:38 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4f6b135e971315db07bf581ab35e36123cca2ec91fc65efd96964d81f88f29`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 27.0 MB (27028264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:b560885b3756d96c046bc8d6718d7b02c9c03ce5d122e1222b3427fe148cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c38dff4a38662ac7c500bd2188658a9e0879feab4c0cb3cde08488448a34f0`

```dockerfile
```

-	Layers:
	-	`sha256:d29a8534aaea0ccdb1eb767595c8ba3d80696cda1055d6576d43a6468864857d`  
		Last Modified: Fri, 02 Oct 2026 02:31:39 GMT  
		Size: 24.9 MB (24898348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b701a499a4ec2eda1e3d6c359db4779ba04b9f3dda267b9d0efab70389d8447`  
		Last Modified: Fri, 02 Oct 2026 02:31:37 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core`

```console
$ docker pull ros@sha256:76e4ed564bbcd375975124828a2571d174d00c3d1014056f9b2069866b137b4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:87de92209df8b13c8bc9d9f2c1f39d786c2cbb9a33830a07a304f368cbe5159f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160888781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419eb48c2ddf6172304dc9cc0494fd486375fd3cf560552680876eaefedd8b12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:6ec3ad70bcfe594b17954f9660cf053d5de3f43c82660d2b53eba3b19a3bc0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c45915411c809a60134b45db1fd431d28d204cec2957f27e0e357fdbc65b826`

```dockerfile
```

-	Layers:
	-	`sha256:5cb07b905163fd507ce7fcdd492f62d8262ee21785ed84aec724efb157cae76a`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 18.6 MB (18616420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f8e9dafb0c5d234188de4f9af3cdfde736929ab92fc805fd34b24461dc6633e`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 14.6 KB (14620 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f70c23fa24aa6dabbba18a4ea688f2e12023962268db8d3bb3b7d57125a4a359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154729651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e1165d5149db8ab3ea93bbf66c023926526444c66c2a79cf82d07698225ad1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:23b7e736a2c9037e34d3c76762b6cf713ac8427f8a9af2d9e7896bd060ab5ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ed1eb60217354df765efc909aac06a1ba14feb60fdc2fb3be3b8ccdbc9c563`

```dockerfile
```

-	Layers:
	-	`sha256:d8a12a20ebdec0fe0b8c5e3acaca575d2107117a16c29efde67eb9ee0f4991fb`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 18.6 MB (18590431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a6f0b19416f8c038061a6c6e52f1570469b17207696446847dda2ebbb09f9d1`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:76e4ed564bbcd375975124828a2571d174d00c3d1014056f9b2069866b137b4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:87de92209df8b13c8bc9d9f2c1f39d786c2cbb9a33830a07a304f368cbe5159f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160888781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419eb48c2ddf6172304dc9cc0494fd486375fd3cf560552680876eaefedd8b12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6ec3ad70bcfe594b17954f9660cf053d5de3f43c82660d2b53eba3b19a3bc0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c45915411c809a60134b45db1fd431d28d204cec2957f27e0e357fdbc65b826`

```dockerfile
```

-	Layers:
	-	`sha256:5cb07b905163fd507ce7fcdd492f62d8262ee21785ed84aec724efb157cae76a`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 18.6 MB (18616420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f8e9dafb0c5d234188de4f9af3cdfde736929ab92fc805fd34b24461dc6633e`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 14.6 KB (14620 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f70c23fa24aa6dabbba18a4ea688f2e12023962268db8d3bb3b7d57125a4a359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154729651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e1165d5149db8ab3ea93bbf66c023926526444c66c2a79cf82d07698225ad1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:23b7e736a2c9037e34d3c76762b6cf713ac8427f8a9af2d9e7896bd060ab5ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ed1eb60217354df765efc909aac06a1ba14feb60fdc2fb3be3b8ccdbc9c563`

```dockerfile
```

-	Layers:
	-	`sha256:d8a12a20ebdec0fe0b8c5e3acaca575d2107117a16c29efde67eb9ee0f4991fb`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 18.6 MB (18590431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a6f0b19416f8c038061a6c6e52f1570469b17207696446847dda2ebbb09f9d1`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:latest`

```console
$ docker pull ros@sha256:f79cd486fa218596747c45d00ca42101b0303fc6d94ed5adb72145cd6f54b86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:16d9b64d0bee68954a46be5c0d039802fe58da834758d8a9de6e4e03216d9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec94f16b7711f3e2d9f3b0bc641a3515190c0377ce50ef249fd81f19be415d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:795a5d138a63d1658461ee9114f65e139042a52dcd4b38a53b7b08fec2807441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29194556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f15a996bf91fc33ef4f85f34fa56e92dfcba9e0321a5ffa6ef918d04d11156e`

```dockerfile
```

-	Layers:
	-	`sha256:963eb5c5b35d21b5a6646064d2cc34d72e7a98ce214d0ae14e681e9430bfeb44`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 29.2 MB (29177101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c972f030b4664d8540ca707c7fd3459a4b11dddf9c4b98de5e9bc14de30a1e`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:41224432cace886306d93455e29fd60197923993c9734ae434c5c0faf3d83fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328659307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2c7cade8ae726d9018c235049e94301d8782673eb2d41c37c8cd5d7e15dc00`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dd603b75fb2c72154362bc92e68f84a3920a7aa30fca35bcd73de9f4a069cc`  
		Last Modified: Fri, 02 Oct 2026 02:32:19 GMT  
		Size: 118.3 MB (118332255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4d2654d414d427efa650606cedbcc5bfa58ffcda1f89cb9bbeeddbcf39a6d9`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 402.7 KB (402674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66cc4d10848c71c5f883f3511ad06e87f60ad50ffc8c2e27436de5f9bb37a5d`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 130.9 KB (130880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff03e4b4b666ea6fe83012f8bc757bfb1158139a8ac9ec1c49a13893efc89db`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 24.7 MB (24738684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:b58d7f76901f2e491048e5cf834cc8c6ad8b8f8c6f0a87d22e8a25bf02566b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29259336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745baf26c41948b9a89486078ea89b1a620fd11d026811bd779761ba29b39a9f`

```dockerfile
```

-	Layers:
	-	`sha256:b3de4d4c56f736a4fec08681bee2931fcc12deed96c74c292206f4f8350d609b`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 29.2 MB (29241733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3a8b7f6a4936ec8f94ed19c32eb31220df51954363c8a0295735fd408f7b785`  
		Last Modified: Fri, 02 Oct 2026 02:32:15 GMT  
		Size: 17.6 KB (17603 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical`

```console
$ docker pull ros@sha256:f79cd486fa218596747c45d00ca42101b0303fc6d94ed5adb72145cd6f54b86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:16d9b64d0bee68954a46be5c0d039802fe58da834758d8a9de6e4e03216d9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec94f16b7711f3e2d9f3b0bc641a3515190c0377ce50ef249fd81f19be415d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:795a5d138a63d1658461ee9114f65e139042a52dcd4b38a53b7b08fec2807441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29194556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f15a996bf91fc33ef4f85f34fa56e92dfcba9e0321a5ffa6ef918d04d11156e`

```dockerfile
```

-	Layers:
	-	`sha256:963eb5c5b35d21b5a6646064d2cc34d72e7a98ce214d0ae14e681e9430bfeb44`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 29.2 MB (29177101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c972f030b4664d8540ca707c7fd3459a4b11dddf9c4b98de5e9bc14de30a1e`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:41224432cace886306d93455e29fd60197923993c9734ae434c5c0faf3d83fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328659307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2c7cade8ae726d9018c235049e94301d8782673eb2d41c37c8cd5d7e15dc00`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dd603b75fb2c72154362bc92e68f84a3920a7aa30fca35bcd73de9f4a069cc`  
		Last Modified: Fri, 02 Oct 2026 02:32:19 GMT  
		Size: 118.3 MB (118332255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4d2654d414d427efa650606cedbcc5bfa58ffcda1f89cb9bbeeddbcf39a6d9`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 402.7 KB (402674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66cc4d10848c71c5f883f3511ad06e87f60ad50ffc8c2e27436de5f9bb37a5d`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 130.9 KB (130880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff03e4b4b666ea6fe83012f8bc757bfb1158139a8ac9ec1c49a13893efc89db`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 24.7 MB (24738684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:b58d7f76901f2e491048e5cf834cc8c6ad8b8f8c6f0a87d22e8a25bf02566b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29259336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745baf26c41948b9a89486078ea89b1a620fd11d026811bd779761ba29b39a9f`

```dockerfile
```

-	Layers:
	-	`sha256:b3de4d4c56f736a4fec08681bee2931fcc12deed96c74c292206f4f8350d609b`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 29.2 MB (29241733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3a8b7f6a4936ec8f94ed19c32eb31220df51954363c8a0295735fd408f7b785`  
		Last Modified: Fri, 02 Oct 2026 02:32:15 GMT  
		Size: 17.6 KB (17603 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception`

```console
$ docker pull ros@sha256:63387fcddde3142eca0205a6153e96331bb789027016a2f66aeab8ac0a5d79ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception` - linux; amd64

```console
$ docker pull ros@sha256:d37dcbf630fa184b4553de0765348077bbb5e65f192c96bc87dd9d822091dd7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532382919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8bb76d5967f6599f58d7469f7ac910cd4d017267be79ad97553fc07010c5a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:21:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7482652f2eddfd93255597fb0825c80cef30d9be8ca18ffe7d6a09d13ae7ccd6`  
		Last Modified: Fri, 02 Oct 2026 03:26:17 GMT  
		Size: 1.2 GB (1188632802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:99477f7fe5bb0298bf53ddb9607424e475c215372a1bc02b1ec4ef91c310dacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64396866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f20680a10dc45d903ff09b1b683ed5ea6d39fbdfd6bbe18960c2b24f542cc41`

```dockerfile
```

-	Layers:
	-	`sha256:316dd930d5d64944e42d0fcff00da67b21b938a0bd23e14ade6de6eb1f4b14f4`  
		Last Modified: Fri, 02 Oct 2026 03:25:58 GMT  
		Size: 64.4 MB (64387171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acf80ad6255fe329d7fee9ef694c45e12737ea57ad9ded80449d5566f77cda64`  
		Last Modified: Fri, 02 Oct 2026 03:25:56 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:29b1fbf04972225a117d882d62644c7c74e40afa138a598f936b933e1126fdd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475857446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e02767685f540a4b84fd732699a498cb77c44849b066d1946d68792a10e48b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dd603b75fb2c72154362bc92e68f84a3920a7aa30fca35bcd73de9f4a069cc`  
		Last Modified: Fri, 02 Oct 2026 02:32:19 GMT  
		Size: 118.3 MB (118332255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4d2654d414d427efa650606cedbcc5bfa58ffcda1f89cb9bbeeddbcf39a6d9`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 402.7 KB (402674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66cc4d10848c71c5f883f3511ad06e87f60ad50ffc8c2e27436de5f9bb37a5d`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 130.9 KB (130880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff03e4b4b666ea6fe83012f8bc757bfb1158139a8ac9ec1c49a13893efc89db`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 24.7 MB (24738684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d76200b5448222c52ce8dbe5b106555f1c92a47adf411bcdf4801996001c15b`  
		Last Modified: Fri, 02 Oct 2026 03:24:13 GMT  
		Size: 1.1 GB (1147198139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception` - unknown; unknown

```console
$ docker pull ros@sha256:6a1d58fd299b877a099c38e79d1d07f42c43beedf9c024dc49cceca3d51d0400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64311164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145aab8f9cc61316b4581748737db47af8eb2ff4e9db1b5472d0a1ff5d3e19c5`

```dockerfile
```

-	Layers:
	-	`sha256:2c8f6cb00f0d9bfe4cc23253d8b76c7df03959130a107c6383836ff933fbc948`  
		Last Modified: Fri, 02 Oct 2026 03:23:51 GMT  
		Size: 64.3 MB (64301389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dd2fb9ad385088c5f6758a6841500966448484ece31459fc052348068c1b53b`  
		Last Modified: Fri, 02 Oct 2026 03:23:48 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:63387fcddde3142eca0205a6153e96331bb789027016a2f66aeab8ac0a5d79ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:d37dcbf630fa184b4553de0765348077bbb5e65f192c96bc87dd9d822091dd7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532382919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8bb76d5967f6599f58d7469f7ac910cd4d017267be79ad97553fc07010c5a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:21:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7482652f2eddfd93255597fb0825c80cef30d9be8ca18ffe7d6a09d13ae7ccd6`  
		Last Modified: Fri, 02 Oct 2026 03:26:17 GMT  
		Size: 1.2 GB (1188632802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:99477f7fe5bb0298bf53ddb9607424e475c215372a1bc02b1ec4ef91c310dacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64396866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f20680a10dc45d903ff09b1b683ed5ea6d39fbdfd6bbe18960c2b24f542cc41`

```dockerfile
```

-	Layers:
	-	`sha256:316dd930d5d64944e42d0fcff00da67b21b938a0bd23e14ade6de6eb1f4b14f4`  
		Last Modified: Fri, 02 Oct 2026 03:25:58 GMT  
		Size: 64.4 MB (64387171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acf80ad6255fe329d7fee9ef694c45e12737ea57ad9ded80449d5566f77cda64`  
		Last Modified: Fri, 02 Oct 2026 03:25:56 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:29b1fbf04972225a117d882d62644c7c74e40afa138a598f936b933e1126fdd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475857446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e02767685f540a4b84fd732699a498cb77c44849b066d1946d68792a10e48b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dd603b75fb2c72154362bc92e68f84a3920a7aa30fca35bcd73de9f4a069cc`  
		Last Modified: Fri, 02 Oct 2026 02:32:19 GMT  
		Size: 118.3 MB (118332255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4d2654d414d427efa650606cedbcc5bfa58ffcda1f89cb9bbeeddbcf39a6d9`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 402.7 KB (402674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66cc4d10848c71c5f883f3511ad06e87f60ad50ffc8c2e27436de5f9bb37a5d`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 130.9 KB (130880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff03e4b4b666ea6fe83012f8bc757bfb1158139a8ac9ec1c49a13893efc89db`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 24.7 MB (24738684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d76200b5448222c52ce8dbe5b106555f1c92a47adf411bcdf4801996001c15b`  
		Last Modified: Fri, 02 Oct 2026 03:24:13 GMT  
		Size: 1.1 GB (1147198139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:6a1d58fd299b877a099c38e79d1d07f42c43beedf9c024dc49cceca3d51d0400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64311164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145aab8f9cc61316b4581748737db47af8eb2ff4e9db1b5472d0a1ff5d3e19c5`

```dockerfile
```

-	Layers:
	-	`sha256:2c8f6cb00f0d9bfe4cc23253d8b76c7df03959130a107c6383836ff933fbc948`  
		Last Modified: Fri, 02 Oct 2026 03:23:51 GMT  
		Size: 64.3 MB (64301389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dd2fb9ad385088c5f6758a6841500966448484ece31459fc052348068c1b53b`  
		Last Modified: Fri, 02 Oct 2026 03:23:48 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:f79cd486fa218596747c45d00ca42101b0303fc6d94ed5adb72145cd6f54b86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:16d9b64d0bee68954a46be5c0d039802fe58da834758d8a9de6e4e03216d9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec94f16b7711f3e2d9f3b0bc641a3515190c0377ce50ef249fd81f19be415d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:795a5d138a63d1658461ee9114f65e139042a52dcd4b38a53b7b08fec2807441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29194556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f15a996bf91fc33ef4f85f34fa56e92dfcba9e0321a5ffa6ef918d04d11156e`

```dockerfile
```

-	Layers:
	-	`sha256:963eb5c5b35d21b5a6646064d2cc34d72e7a98ce214d0ae14e681e9430bfeb44`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 29.2 MB (29177101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c972f030b4664d8540ca707c7fd3459a4b11dddf9c4b98de5e9bc14de30a1e`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:41224432cace886306d93455e29fd60197923993c9734ae434c5c0faf3d83fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328659307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2c7cade8ae726d9018c235049e94301d8782673eb2d41c37c8cd5d7e15dc00`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dd603b75fb2c72154362bc92e68f84a3920a7aa30fca35bcd73de9f4a069cc`  
		Last Modified: Fri, 02 Oct 2026 02:32:19 GMT  
		Size: 118.3 MB (118332255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4d2654d414d427efa650606cedbcc5bfa58ffcda1f89cb9bbeeddbcf39a6d9`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 402.7 KB (402674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66cc4d10848c71c5f883f3511ad06e87f60ad50ffc8c2e27436de5f9bb37a5d`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 130.9 KB (130880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff03e4b4b666ea6fe83012f8bc757bfb1158139a8ac9ec1c49a13893efc89db`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 24.7 MB (24738684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:b58d7f76901f2e491048e5cf834cc8c6ad8b8f8c6f0a87d22e8a25bf02566b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29259336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745baf26c41948b9a89486078ea89b1a620fd11d026811bd779761ba29b39a9f`

```dockerfile
```

-	Layers:
	-	`sha256:b3de4d4c56f736a4fec08681bee2931fcc12deed96c74c292206f4f8350d609b`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 29.2 MB (29241733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3a8b7f6a4936ec8f94ed19c32eb31220df51954363c8a0295735fd408f7b785`  
		Last Modified: Fri, 02 Oct 2026 02:32:15 GMT  
		Size: 17.6 KB (17603 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:f79cd486fa218596747c45d00ca42101b0303fc6d94ed5adb72145cd6f54b86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:16d9b64d0bee68954a46be5c0d039802fe58da834758d8a9de6e4e03216d9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec94f16b7711f3e2d9f3b0bc641a3515190c0377ce50ef249fd81f19be415d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:40 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dcfd1466c6259724bd77e2bc42226e07b7f3b4c12f51be3164cea5bbb578dc`  
		Last Modified: Fri, 02 Oct 2026 02:31:54 GMT  
		Size: 124.9 MB (124919609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d5891600115b576a648f3d092b333d0974ec76a283290362f5373b935d9a1`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 402.7 KB (402677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66351cc45643a5aca93391937b85b1d250f9778f44700877ff7243f567100f`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 130.9 KB (130916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29567fedc62aa5c320a4e34d37fb194a921bbcfa7c74c23379968ffb9d060cab`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 25.8 MB (25797287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:795a5d138a63d1658461ee9114f65e139042a52dcd4b38a53b7b08fec2807441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29194556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f15a996bf91fc33ef4f85f34fa56e92dfcba9e0321a5ffa6ef918d04d11156e`

```dockerfile
```

-	Layers:
	-	`sha256:963eb5c5b35d21b5a6646064d2cc34d72e7a98ce214d0ae14e681e9430bfeb44`  
		Last Modified: Fri, 02 Oct 2026 02:31:52 GMT  
		Size: 29.2 MB (29177101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c972f030b4664d8540ca707c7fd3459a4b11dddf9c4b98de5e9bc14de30a1e`  
		Last Modified: Fri, 02 Oct 2026 02:31:51 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:41224432cace886306d93455e29fd60197923993c9734ae434c5c0faf3d83fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328659307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2c7cade8ae726d9018c235049e94301d8782673eb2d41c37c8cd5d7e15dc00`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dd603b75fb2c72154362bc92e68f84a3920a7aa30fca35bcd73de9f4a069cc`  
		Last Modified: Fri, 02 Oct 2026 02:32:19 GMT  
		Size: 118.3 MB (118332255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4d2654d414d427efa650606cedbcc5bfa58ffcda1f89cb9bbeeddbcf39a6d9`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 402.7 KB (402674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66cc4d10848c71c5f883f3511ad06e87f60ad50ffc8c2e27436de5f9bb37a5d`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 130.9 KB (130880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff03e4b4b666ea6fe83012f8bc757bfb1158139a8ac9ec1c49a13893efc89db`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 24.7 MB (24738684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:b58d7f76901f2e491048e5cf834cc8c6ad8b8f8c6f0a87d22e8a25bf02566b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29259336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745baf26c41948b9a89486078ea89b1a620fd11d026811bd779761ba29b39a9f`

```dockerfile
```

-	Layers:
	-	`sha256:b3de4d4c56f736a4fec08681bee2931fcc12deed96c74c292206f4f8350d609b`  
		Last Modified: Fri, 02 Oct 2026 02:32:17 GMT  
		Size: 29.2 MB (29241733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3a8b7f6a4936ec8f94ed19c32eb31220df51954363c8a0295735fd408f7b785`  
		Last Modified: Fri, 02 Oct 2026 02:32:15 GMT  
		Size: 17.6 KB (17603 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:6c178598874dd141d2757390591744e089ee49ad046eb14b74e6017704eddb05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d9a53e895d7bb41c0ec625b246e6dd66f2829116cacc21eeb77d6f459e5c8259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192499628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f20a64bfea8ec0f58277deca5f2001b372ce63c92eb371ce39a86be683e8437`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:9737fd3f1079d016e4014c38b6892e5773be8234e012b5966ddf3089a3ef4283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22791292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd58941cdd97e593eb842506c114eb676960f6ab7372a7853c17263ec07d6ff`

```dockerfile
```

-	Layers:
	-	`sha256:1d1aadccf6d11b4a0236c83e3a6d34c508f70e10790093e43df40e9cfd6cc867`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 22.8 MB (22775705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3ef08f7eb64137d636ad74545f1d902e31a7797b1162410682f65861eeb08a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 15.6 KB (15587 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0fa58d8af67f10404b1d5075edb10a2632e49611406f2993c5941a227220c4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185054814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44bded52ea12f338b4e174c8ee2c22ec0bf54b7eeaf3a195c9ee3041d7e97509`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:38e1bc873a61276b572cdfd7bbe2e398237838a80702a65feebbbb15ac89c3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22764109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950ee3a6f8e3ae5dd38152cc9e63168793ad62c73fcfb7c34eb920a20c2f65fd`

```dockerfile
```

-	Layers:
	-	`sha256:eb1595a68e372b49f0e5f6815bec8128fc5edbbc9b716249dbea87cc50fc6846`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 22.7 MB (22748397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35f1af728bddff7eda4da8f8ea36ba0ad8b2aeca39ef406869d15c0d55e5893f`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 15.7 KB (15712 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:6c178598874dd141d2757390591744e089ee49ad046eb14b74e6017704eddb05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:d9a53e895d7bb41c0ec625b246e6dd66f2829116cacc21eeb77d6f459e5c8259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192499628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f20a64bfea8ec0f58277deca5f2001b372ce63c92eb371ce39a86be683e8437`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:34:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:36:06 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926eb5415bf6bffd4436bd8a537ec16c50cd960b6add3b205418af85634dbdf8`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 741.6 KB (741646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaf1ebf6af3e1af497aab7ba60bc84aa2b37e4cbdc09669cde43999491689e6`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 12.8 MB (12760549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032a1ae34c64fdaf74f088ab002a735ad49d44757b64be049fc9a1f6c4e48f7e`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 91.9 KB (91945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3220e8ca7ac7094a4dbee43adbe2b0b1e442adbcf4edb97cae2bba46253663be`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 137.1 MB (137067384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fadcda85dbaa7d14f94edc054397b63249f1149db57171a57a8706e8cfb54b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:9737fd3f1079d016e4014c38b6892e5773be8234e012b5966ddf3089a3ef4283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22791292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd58941cdd97e593eb842506c114eb676960f6ab7372a7853c17263ec07d6ff`

```dockerfile
```

-	Layers:
	-	`sha256:1d1aadccf6d11b4a0236c83e3a6d34c508f70e10790093e43df40e9cfd6cc867`  
		Last Modified: Fri, 02 Oct 2026 01:36:49 GMT  
		Size: 22.8 MB (22775705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3ef08f7eb64137d636ad74545f1d902e31a7797b1162410682f65861eeb08a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:48 GMT  
		Size: 15.6 KB (15587 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0fa58d8af67f10404b1d5075edb10a2632e49611406f2993c5941a227220c4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185054814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44bded52ea12f338b4e174c8ee2c22ec0bf54b7eeaf3a195c9ee3041d7e97509`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:34:43 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:59 GMT
ENV ROS_DISTRO=lyrical
# Fri, 02 Oct 2026 01:35:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:36:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:36:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cf326251e0827b2667debc67ee8342039fc72446171da41aa363cbc69ee77`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 742.0 KB (742033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048f3b7d1aa8f38d63e22c3baa5f05eddb7c0640a72ebf9805100d220c95aa4e`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 12.9 MB (12937859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9fbcbdfbe56b627c2f1a3e96927da4ebaac13037c0d2c3336a97883a452bd`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 92.4 KB (92373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c115d3385eef7b87b3f0c4269c85bbe05fb537b1ea82bfd03b8bf17e489c6a3`  
		Last Modified: Fri, 02 Oct 2026 01:36:42 GMT  
		Size: 130.4 MB (130417206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cd57eb074ccb792b190609a3f59aba75c4711588f4f4efa70bc1abfdd6b527`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:38e1bc873a61276b572cdfd7bbe2e398237838a80702a65feebbbb15ac89c3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22764109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950ee3a6f8e3ae5dd38152cc9e63168793ad62c73fcfb7c34eb920a20c2f65fd`

```dockerfile
```

-	Layers:
	-	`sha256:eb1595a68e372b49f0e5f6815bec8128fc5edbbc9b716249dbea87cc50fc6846`  
		Last Modified: Fri, 02 Oct 2026 01:36:39 GMT  
		Size: 22.7 MB (22748397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35f1af728bddff7eda4da8f8ea36ba0ad8b2aeca39ef406869d15c0d55e5893f`  
		Last Modified: Fri, 02 Oct 2026 01:36:38 GMT  
		Size: 15.7 KB (15712 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling`

```console
$ docker pull ros@sha256:77b515a49c60b7e8ab95a2d08948cd2762bac6dd03852efe770a6ddfd52df975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling` - linux; amd64

```console
$ docker pull ros@sha256:4a258503925b89534e71ec3f3ec41248b8339e73477749eaf6b529ff202c6494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343862106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2066f04ddd5b49d5113c56cbdf75c5cbb041135f224791c95574b9358f7482a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:1c04dbfce0a0b8f4070eff4cf03184cd743f908d97ebd2b22fe4836fa2d7adaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29246335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aece3a96fb425c98b97ad9b37c9f9a0c12afe97f7d8692d5868d97d44b32487`

```dockerfile
```

-	Layers:
	-	`sha256:7d43640bd021c77712b514c5c7105be96a9ee0477161c4d3950150df229fb4ea`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 29.2 MB (29229172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefd53ff5d2d1d2194f6d1259a145e7f0e81dbbc8c029987b55bf5036f68c569`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:03c32b404c0fcf79b09308ede5d539e6f27efe5f47adb4c6374082bfeed0fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328755079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784c6a1321b1363358ca52320e1563faa260d60a9661844c7bfbf494db5544b4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:31:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a7ddef4643d92821cf72a0be255557e95ef26d3830f3287c1d80e571932bb0`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 118.3 MB (118332072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae18089d69434af73e4297e70a431fb3d1215cd6f00f7dd0c750550900c8d74`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 365.4 KB (365361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a932b707e9f33940fece768c3cfdcc7498c164ff3b48c3f3a6958043b575db`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46443d04cb4f14ba34ee41fc89aeffc062f1916b37c4f1833afa4a39398624f9`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 24.8 MB (24795903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling` - unknown; unknown

```console
$ docker pull ros@sha256:9dd583f0349c0eaf4906512579c93a28daba82d2775a5b6636c233a99ce918d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29311092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0114d0a777bd61b32fee740578f52631e5646efb16902ec6ff311cb87d9ec8f`

```dockerfile
```

-	Layers:
	-	`sha256:dfb00a53ea0244f600cabd1dd501534993e0ee3c8159d2c4ba6fa4d473aba5fb`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 29.3 MB (29293792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51602c108b3c30c7172eaf0cf290af5147f3da554b8e9040638fd314e07d4036`  
		Last Modified: Fri, 02 Oct 2026 02:32:12 GMT  
		Size: 17.3 KB (17300 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception`

```console
$ docker pull ros@sha256:8e5dce6c9e5bc3858f812fd7dd6da1a8ad61473aa1f9447a3ebd0760fd320b02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception` - linux; amd64

```console
$ docker pull ros@sha256:efc922c82d07fead4794a1b645e8647bb3681f2a81c97fa56567fa672085292e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532404761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb05fd3b4c7f823aa18a0942e6a328b24d381df7e0f797a4852ef39e30d5e34`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b73cdb3a6bbaf49a29b9d903c795b6bd7742fd8e22e9ec89abf8a277ef30fd`  
		Last Modified: Fri, 02 Oct 2026 03:24:19 GMT  
		Size: 1.2 GB (1188542655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:c7fd7e4528779a99f333e7928b235c68dfddd0f2dc882b2d41b0788df96636b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64450574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d389eb769d88ff761d1683693b68a1eb5362ba4c25cced822b78eeb6c7e4c0`

```dockerfile
```

-	Layers:
	-	`sha256:1cd10fbb52db1945b23b5ecb8d68c4d6f37f515cef5c9f91b05be21429b8491d`  
		Last Modified: Fri, 02 Oct 2026 03:23:58 GMT  
		Size: 64.4 MB (64440879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee3ed9abecc9e1d6e6848d534907eb131fa4db74929730faa52e8afcc9219e3`  
		Last Modified: Fri, 02 Oct 2026 03:23:55 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:703a6aa0c269ecd061dbdd0f1bf19f640cd5acf411a271c0be702cb0942ff8c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475907759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c47fbd8fc654511b66e617718ac964de11587707d310591a3751489c8116f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:31:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a7ddef4643d92821cf72a0be255557e95ef26d3830f3287c1d80e571932bb0`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 118.3 MB (118332072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae18089d69434af73e4297e70a431fb3d1215cd6f00f7dd0c750550900c8d74`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 365.4 KB (365361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a932b707e9f33940fece768c3cfdcc7498c164ff3b48c3f3a6958043b575db`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46443d04cb4f14ba34ee41fc89aeffc062f1916b37c4f1833afa4a39398624f9`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 24.8 MB (24795903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dd519a2d3998a0d7ede94936d80f6b59e7b86ccfda2eaef406fa33c9fb856a`  
		Last Modified: Fri, 02 Oct 2026 03:24:25 GMT  
		Size: 1.1 GB (1147152680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception` - unknown; unknown

```console
$ docker pull ros@sha256:e344fe1ec7f31c282494503e5debfb80a9b5c85abba438776b3a5e306706dc69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64364872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bc01a52df374fd134028e412df927aed8e5f687211a8aa0027571b455e4b1a`

```dockerfile
```

-	Layers:
	-	`sha256:40240eb85d8fb55bdc6e6efc5605281247dba7cc7096002efa6619a26135a322`  
		Last Modified: Fri, 02 Oct 2026 03:24:05 GMT  
		Size: 64.4 MB (64355097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682b731faefbdc9443f050435ed8755552be0710f6145f75270afce7b52f733e`  
		Last Modified: Fri, 02 Oct 2026 03:24:03 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:8e5dce6c9e5bc3858f812fd7dd6da1a8ad61473aa1f9447a3ebd0760fd320b02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:efc922c82d07fead4794a1b645e8647bb3681f2a81c97fa56567fa672085292e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532404761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb05fd3b4c7f823aa18a0942e6a328b24d381df7e0f797a4852ef39e30d5e34`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b73cdb3a6bbaf49a29b9d903c795b6bd7742fd8e22e9ec89abf8a277ef30fd`  
		Last Modified: Fri, 02 Oct 2026 03:24:19 GMT  
		Size: 1.2 GB (1188542655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:c7fd7e4528779a99f333e7928b235c68dfddd0f2dc882b2d41b0788df96636b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64450574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d389eb769d88ff761d1683693b68a1eb5362ba4c25cced822b78eeb6c7e4c0`

```dockerfile
```

-	Layers:
	-	`sha256:1cd10fbb52db1945b23b5ecb8d68c4d6f37f515cef5c9f91b05be21429b8491d`  
		Last Modified: Fri, 02 Oct 2026 03:23:58 GMT  
		Size: 64.4 MB (64440879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee3ed9abecc9e1d6e6848d534907eb131fa4db74929730faa52e8afcc9219e3`  
		Last Modified: Fri, 02 Oct 2026 03:23:55 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:703a6aa0c269ecd061dbdd0f1bf19f640cd5acf411a271c0be702cb0942ff8c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475907759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c47fbd8fc654511b66e617718ac964de11587707d310591a3751489c8116f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:31:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a7ddef4643d92821cf72a0be255557e95ef26d3830f3287c1d80e571932bb0`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 118.3 MB (118332072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae18089d69434af73e4297e70a431fb3d1215cd6f00f7dd0c750550900c8d74`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 365.4 KB (365361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a932b707e9f33940fece768c3cfdcc7498c164ff3b48c3f3a6958043b575db`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46443d04cb4f14ba34ee41fc89aeffc062f1916b37c4f1833afa4a39398624f9`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 24.8 MB (24795903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dd519a2d3998a0d7ede94936d80f6b59e7b86ccfda2eaef406fa33c9fb856a`  
		Last Modified: Fri, 02 Oct 2026 03:24:25 GMT  
		Size: 1.1 GB (1147152680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:e344fe1ec7f31c282494503e5debfb80a9b5c85abba438776b3a5e306706dc69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64364872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bc01a52df374fd134028e412df927aed8e5f687211a8aa0027571b455e4b1a`

```dockerfile
```

-	Layers:
	-	`sha256:40240eb85d8fb55bdc6e6efc5605281247dba7cc7096002efa6619a26135a322`  
		Last Modified: Fri, 02 Oct 2026 03:24:05 GMT  
		Size: 64.4 MB (64355097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:682b731faefbdc9443f050435ed8755552be0710f6145f75270afce7b52f733e`  
		Last Modified: Fri, 02 Oct 2026 03:24:03 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:77b515a49c60b7e8ab95a2d08948cd2762bac6dd03852efe770a6ddfd52df975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:4a258503925b89534e71ec3f3ec41248b8339e73477749eaf6b529ff202c6494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343862106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2066f04ddd5b49d5113c56cbdf75c5cbb041135f224791c95574b9358f7482a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:1c04dbfce0a0b8f4070eff4cf03184cd743f908d97ebd2b22fe4836fa2d7adaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29246335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aece3a96fb425c98b97ad9b37c9f9a0c12afe97f7d8692d5868d97d44b32487`

```dockerfile
```

-	Layers:
	-	`sha256:7d43640bd021c77712b514c5c7105be96a9ee0477161c4d3950150df229fb4ea`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 29.2 MB (29229172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefd53ff5d2d1d2194f6d1259a145e7f0e81dbbc8c029987b55bf5036f68c569`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:03c32b404c0fcf79b09308ede5d539e6f27efe5f47adb4c6374082bfeed0fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328755079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784c6a1321b1363358ca52320e1563faa260d60a9661844c7bfbf494db5544b4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:31:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a7ddef4643d92821cf72a0be255557e95ef26d3830f3287c1d80e571932bb0`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 118.3 MB (118332072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae18089d69434af73e4297e70a431fb3d1215cd6f00f7dd0c750550900c8d74`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 365.4 KB (365361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a932b707e9f33940fece768c3cfdcc7498c164ff3b48c3f3a6958043b575db`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46443d04cb4f14ba34ee41fc89aeffc062f1916b37c4f1833afa4a39398624f9`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 24.8 MB (24795903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:9dd583f0349c0eaf4906512579c93a28daba82d2775a5b6636c233a99ce918d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29311092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0114d0a777bd61b32fee740578f52631e5646efb16902ec6ff311cb87d9ec8f`

```dockerfile
```

-	Layers:
	-	`sha256:dfb00a53ea0244f600cabd1dd501534993e0ee3c8159d2c4ba6fa4d473aba5fb`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 29.3 MB (29293792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51602c108b3c30c7172eaf0cf290af5147f3da554b8e9040638fd314e07d4036`  
		Last Modified: Fri, 02 Oct 2026 02:32:12 GMT  
		Size: 17.3 KB (17300 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:77b515a49c60b7e8ab95a2d08948cd2762bac6dd03852efe770a6ddfd52df975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:4a258503925b89534e71ec3f3ec41248b8339e73477749eaf6b529ff202c6494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343862106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2066f04ddd5b49d5113c56cbdf75c5cbb041135f224791c95574b9358f7482a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:30:30 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:30:31 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd1e557066b5816cbd0ed362001fa29f3c919e78aa800124ac015f6137aa536`  
		Last Modified: Fri, 02 Oct 2026 02:31:45 GMT  
		Size: 124.9 MB (124919578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed21e5d372fbf652afb081aa07a52c88ebf405f6418beb0f8ef80c98873f4a2`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 365.4 KB (365360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b045c8737751fdfc328b135189e7446658174428b5f3a19762d7dc0a4ec16577`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278401394ce8c7a4258161c7f9a5dd41aa260c46d15012c20c32142e8b72d52`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 25.9 MB (25868810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:1c04dbfce0a0b8f4070eff4cf03184cd743f908d97ebd2b22fe4836fa2d7adaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29246335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aece3a96fb425c98b97ad9b37c9f9a0c12afe97f7d8692d5868d97d44b32487`

```dockerfile
```

-	Layers:
	-	`sha256:7d43640bd021c77712b514c5c7105be96a9ee0477161c4d3950150df229fb4ea`  
		Last Modified: Fri, 02 Oct 2026 02:31:43 GMT  
		Size: 29.2 MB (29229172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefd53ff5d2d1d2194f6d1259a145e7f0e81dbbc8c029987b55bf5036f68c569`  
		Last Modified: Fri, 02 Oct 2026 02:31:41 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:03c32b404c0fcf79b09308ede5d539e6f27efe5f47adb4c6374082bfeed0fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328755079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784c6a1321b1363358ca52320e1563faa260d60a9661844c7bfbf494db5544b4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
# Fri, 02 Oct 2026 02:30:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:31:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 02 Oct 2026 02:31:02 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 02 Oct 2026 02:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a7ddef4643d92821cf72a0be255557e95ef26d3830f3287c1d80e571932bb0`  
		Last Modified: Fri, 02 Oct 2026 02:32:16 GMT  
		Size: 118.3 MB (118332072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae18089d69434af73e4297e70a431fb3d1215cd6f00f7dd0c750550900c8d74`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 365.4 KB (365361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a932b707e9f33940fece768c3cfdcc7498c164ff3b48c3f3a6958043b575db`  
		Last Modified: Fri, 02 Oct 2026 02:32:13 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46443d04cb4f14ba34ee41fc89aeffc062f1916b37c4f1833afa4a39398624f9`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 24.8 MB (24795903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:9dd583f0349c0eaf4906512579c93a28daba82d2775a5b6636c233a99ce918d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29311092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0114d0a777bd61b32fee740578f52631e5646efb16902ec6ff311cb87d9ec8f`

```dockerfile
```

-	Layers:
	-	`sha256:dfb00a53ea0244f600cabd1dd501534993e0ee3c8159d2c4ba6fa4d473aba5fb`  
		Last Modified: Fri, 02 Oct 2026 02:32:14 GMT  
		Size: 29.3 MB (29293792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51602c108b3c30c7172eaf0cf290af5147f3da554b8e9040638fd314e07d4036`  
		Last Modified: Fri, 02 Oct 2026 02:32:12 GMT  
		Size: 17.3 KB (17300 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:fab97bc978a6a38d4c234df83d3f7a729fb598e2e36e56fcd08d901fc0a1dd2d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:cb216d180699ed7e9f42d4a89d50f85145867a2589c50045598aef42cc398a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192577458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d0ed2d89b9959dd7c8c2d32353b97199ec002ff5fc50795fbcf8118bf37d17`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:0c0ae8e588e7adfee0684bc2f28c953e3b6ce113536f86e32bbd1d6d3bfd4bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22818151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3813a3ce3850050e7fba880847b0530f608ba83ceb48fbaf43759b0a8eae9220`

```dockerfile
```

-	Layers:
	-	`sha256:8e643a3de7788e32bed76057dbd3a6801694d336dc5168b5af46b37c871930cf`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 22.8 MB (22802468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6d38917f3b498c4c614f0b0bcfa3bf5fd6116b622eb25e7661bdcb936deec71`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c4b59b4dcb8683a09d3b48d7f5f14366366ce1027d5746f930597d47eae951b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185130861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9dd1de21e389f2b556dddcf63cdd6dc9e8e6d8f81978681a341e8e88b6ae10`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:1f21a216bf7cf75a20b0abc1849cb213096a66ad9161c4de719892445d7d9948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22790968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334548b282691e571fd59ec2c1e1058868d91875ab71b54baa81b51b05477fb6`

```dockerfile
```

-	Layers:
	-	`sha256:483bd0c82bfbce4e4aceea9618ad653a593a00b79c9a4982a1f9d331fb70e680`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 22.8 MB (22775160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c255a70b0a2f52fe591de1c028b92d1c80aac3dbc3b8dac65d63e26d8e56187`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:fab97bc978a6a38d4c234df83d3f7a729fb598e2e36e56fcd08d901fc0a1dd2d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:cb216d180699ed7e9f42d4a89d50f85145867a2589c50045598aef42cc398a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192577458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d0ed2d89b9959dd7c8c2d32353b97199ec002ff5fc50795fbcf8118bf37d17`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:36:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:32 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:23 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6715bf347ae2b3f06a7ca28e12c1f41ab00a53b17cf98171abeea45314b84a4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 741.7 KB (741651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f85f064c1eb6036c10fb3277c49b88d03536f6cf39e4a7953679810299134`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 12.8 MB (12760464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801be42b95590ca6e8438e4eb13948d6c9ea2363fe3205914be84dc24e423bd4`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 92.0 KB (91969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff3cd263c7118e8b69c65c7b05856f07c238a16388f62041fabe794ac5b13a6`  
		Last Modified: Fri, 02 Oct 2026 01:38:06 GMT  
		Size: 137.1 MB (137145269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca636fe0b8e56c8c3eb7c2c43f8d73c410e2f928255d06395442e41eef58114e`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:0c0ae8e588e7adfee0684bc2f28c953e3b6ce113536f86e32bbd1d6d3bfd4bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22818151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3813a3ce3850050e7fba880847b0530f608ba83ceb48fbaf43759b0a8eae9220`

```dockerfile
```

-	Layers:
	-	`sha256:8e643a3de7788e32bed76057dbd3a6801694d336dc5168b5af46b37c871930cf`  
		Last Modified: Fri, 02 Oct 2026 01:38:03 GMT  
		Size: 22.8 MB (22802468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6d38917f3b498c4c614f0b0bcfa3bf5fd6116b622eb25e7661bdcb936deec71`  
		Last Modified: Fri, 02 Oct 2026 01:38:02 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c4b59b4dcb8683a09d3b48d7f5f14366366ce1027d5746f930597d47eae951b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185130861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9dd1de21e389f2b556dddcf63cdd6dc9e8e6d8f81978681a341e8e88b6ae10`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:36:29 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:43 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:48 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:37:45 GMT
ENV ROS_DISTRO=rolling
# Fri, 02 Oct 2026 01:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:37:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90104c2ad1addca51526cdf5e498d0932c2fa6ec7db88ebc2a5618a6a2907c`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 742.0 KB (742045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb33ea0d8b4843644849a4e86807945d3540a80b9245f5c901edc3791a9ea0c`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 12.9 MB (12937875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33c8dca414036e9173cc1381cff6a8ebc0e5362142cd96f1844aa2a0ef428c9`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 92.4 KB (92362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99c0e416797fda0fd7c6f815c58368c9bf634cccd11d39f801db58e1de057c`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 130.5 MB (130493238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5be814c074eebd263fefaf601d31c9560b51fad607419e0bc5e15315835085`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:1f21a216bf7cf75a20b0abc1849cb213096a66ad9161c4de719892445d7d9948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22790968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334548b282691e571fd59ec2c1e1058868d91875ab71b54baa81b51b05477fb6`

```dockerfile
```

-	Layers:
	-	`sha256:483bd0c82bfbce4e4aceea9618ad653a593a00b79c9a4982a1f9d331fb70e680`  
		Last Modified: Fri, 02 Oct 2026 01:38:26 GMT  
		Size: 22.8 MB (22775160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c255a70b0a2f52fe591de1c028b92d1c80aac3dbc3b8dac65d63e26d8e56187`  
		Last Modified: Fri, 02 Oct 2026 01:38:25 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
