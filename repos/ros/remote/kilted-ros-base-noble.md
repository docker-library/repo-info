## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:5250522494a7714654d9dab463fd84bbf523657bac7faee2b02c9a1cbda2a548
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
