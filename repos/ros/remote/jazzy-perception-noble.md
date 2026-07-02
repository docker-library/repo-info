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
