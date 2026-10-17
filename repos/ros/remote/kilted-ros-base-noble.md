## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:b22b776bb18f5eb78dbf456fdb5a5c199ec04316fb3a2cf6b654ab954abd3e62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:753e7237f147a7dd92198b31d1ef6ab81924295657c8c9bdc96645bb3b817041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297084645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20025e1ca44c4974ea555b9f609483b2398598a94690e24658aa0d0d83d03e2`
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

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6e82425f1854e096e09e2bb3c216e7fedb5660523054207580a0b4f5ce202c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d029fd1994c1fff9fdebfc96cfb63d3ff27e138238bbfd8a99786450c28b23e`

```dockerfile
```

-	Layers:
	-	`sha256:41cb8e2a52d7b02fbd537930a6b03f3d8d33f8c1482710268065db06b43890be`  
		Last Modified: Sat, 17 Oct 2026 01:33:05 GMT  
		Size: 24.9 MB (24876152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c74693121f3566dc09e626c1eae37a1477184758c9ea5b8afcd88e7448619ad`  
		Last Modified: Sat, 17 Oct 2026 01:33:04 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ca69df12b7e943cd29d404d04ade6d8461b428a42fac4a822c68954ee645538b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285626368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3da329cb6665ed92814213ac9b81e036c9968ddba39aa138eebd45b514a999`
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

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:80992a442f79ac4b805f6ccb420bc8c91ab60758a1a24552635833a8313028f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f088b138f83787f9ef4fa8b659fcf1b76ab976b402ce59e240d267d9a45ca5`

```dockerfile
```

-	Layers:
	-	`sha256:884e960d5ed061f0c3652971975e9139bbba67769e6d0442494df3896815dc37`  
		Last Modified: Sat, 17 Oct 2026 01:34:01 GMT  
		Size: 24.9 MB (24898412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9a4f4e557794fe7d00bec0433f6d5559aa773ee71a5ba4218ad7fff8eb1904`  
		Last Modified: Sat, 17 Oct 2026 01:33:59 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json
