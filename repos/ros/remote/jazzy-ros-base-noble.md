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
