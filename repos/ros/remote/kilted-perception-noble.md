## `ros:kilted-perception-noble`

```console
$ docker pull ros@sha256:5f0135752911361b7d0ef477fd272e528f258c42f0569068392fab196ea84ff8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-perception-noble` - linux; amd64

```console
$ docker pull ros@sha256:5d746acd6536266f81daacf79fdaf0701ae6e169dbf166ac467811a48d4a37a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1082745251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83a809775f47deacd4a3d41450bb94fc86b4e6f89452e1c7e18d0381394dd81`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:37 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:37 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:11 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a337d31c79741a4661670680a0b56a340802c38b18c77ec15cbb84c8594e35`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 683.3 KB (683348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c96b6de7c46dc05b25dae282950258830073dc7f538ec5f03b1dfe250d3434d`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 6.7 MB (6714649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c4771d37ad474b48d49089c0b8604cee5c1b3965b9dccaca17734eb7f696d9`  
		Last Modified: Sat, 17 Oct 2026 00:37:06 GMT  
		Size: 94.8 KB (94840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4549e3e21d70a39e6f28f29a155263b031358fa53b52b739fcd0b311f78636`  
		Last Modified: Sat, 17 Oct 2026 00:37:09 GMT  
		Size: 121.3 MB (121282474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8042b47d90dcfdfd644fdc464cae915c8392e57cfa1e767de8d3bf4ffb87a`  
		Last Modified: Sat, 17 Oct 2026 00:37:07 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3467b7eb48ac5e207a916dcd5cad43d8666d0f93d82251994e847927b28258f`  
		Last Modified: Sat, 17 Oct 2026 01:33:08 GMT  
		Size: 110.2 MB (110244871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e19f82e5eef6cc8a0c9e7d7221ce1bad9093f0cfcf1dfa13650a03bf463d3a`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 376.5 KB (376543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0053ea58ce0b615b9e0b29d1f587c6bf945efebb990be629a9623724771ad8`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 2.7 KB (2653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d93637ad175eee43176a9895349933246108eb040a6767fe2a21b6b6185e0d9`  
		Last Modified: Sat, 17 Oct 2026 01:33:06 GMT  
		Size: 27.9 MB (27919312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2bd92219fa23e18f51fb85d9ee608998073231d572b1232a8302413a035ae9`  
		Last Modified: Sat, 17 Oct 2026 02:24:48 GMT  
		Size: 785.7 MB (785660606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:587fc5c335122e3871d069ada757569014170a13f3e6f8d36f2a4d117f6d3845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61073408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f522c4fbd7e6f744571643e092333d4b423ebb8e7c42825ffdb517ccd5b6a6a`

```dockerfile
```

-	Layers:
	-	`sha256:a9f7aed573c4fa91d247d974d1f9c0b9767ba6fa0efc68a1c62ae4c288937f24`  
		Last Modified: Sat, 17 Oct 2026 02:24:37 GMT  
		Size: 61.1 MB (61064056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e08103149ba7ca6c854b784254a28e53a1c4fcf27cee34ee51ee9db8825b75f8`  
		Last Modified: Sat, 17 Oct 2026 02:24:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-perception-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aed65b3d1fabeb81abaf1bc68277f5d31f8d0e89e501e7ff3740fdc1fd9f72c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.4 MB (985428839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b979ac917c4a9643d23a6f76d00f0ef28fb2ee9d4ebe2256f78f0ecb1b8b9f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:35:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:53 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:34 GMT
ENV ROS_DISTRO=kilted
# Sat, 17 Oct 2026 00:36:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:34 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-perception=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983dce44d120ca4754e630afd57ed67e897b660e6d7e1f5451ade3a48cc277d`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 683.4 KB (683371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d0ed6dafa169bfecd6daef25e560b6a20efae522bb1040013634825ec5d165`  
		Last Modified: Sat, 17 Oct 2026 00:37:03 GMT  
		Size: 6.7 MB (6727981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6154191c3cd235cf72bfe670dedfff7cc9bc0a77dc9faf7c46052f5741193`  
		Last Modified: Sat, 17 Oct 2026 00:37:02 GMT  
		Size: 94.8 KB (94821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0a375abab3473c5b108989d23f88b7ac73a52ef8874ed1f6b7cdbbc45979cb`  
		Last Modified: Sat, 17 Oct 2026 00:37:05 GMT  
		Size: 116.1 MB (116086563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149001be590298e2fecc783d3aaf115d80d9a7b91b581278b45dcea4c7b8b0a`  
		Last Modified: Sat, 17 Oct 2026 00:37:04 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2094ed40d2c6f1fa54a64c9a49ef581948fb26aaefbc6638f35247916ff26fd3`  
		Last Modified: Sat, 17 Oct 2026 01:34:03 GMT  
		Size: 105.7 MB (105684021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d7e2078f86fdec64a24aefb4e922db9b887224edc7807f168d2f4818d404d9`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 376.6 KB (376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235401bde3a2a29a8be807bdb3a2b0d2011d787d04f24751a9f527657767c53e`  
		Last Modified: Sat, 17 Oct 2026 01:34:00 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c4f5921dac312b5602729793e01e28e441a351bc20209ea4967ac2a015bdeb`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 27.0 MB (27030461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62df37ec46bae6321e323c64b746b1daf97f37e7d6402358e1dc42ab96ec7089`  
		Last Modified: Sat, 17 Oct 2026 02:24:53 GMT  
		Size: 699.8 MB (699802471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-perception-noble` - unknown; unknown

```console
$ docker pull ros@sha256:29cf15abb35482938dc0d495512352d85f5de8f8f571b44c23aa17984acdf775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61004011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6039dd00bda9fcff62212523bb090b0f8587b8994beadca53ccca15dceea9c77`

```dockerfile
```

-	Layers:
	-	`sha256:3fb3c6a1bdbf00d6060eb4f59eba096c4d3115b06c9ef51c6608817bbaa0ca6d`  
		Last Modified: Sat, 17 Oct 2026 02:24:44 GMT  
		Size: 61.0 MB (60994580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:939e8776ab8def00db67832efbee797ace0156d5b62132b935997e1d994e0447`  
		Last Modified: Sat, 17 Oct 2026 02:24:42 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json
