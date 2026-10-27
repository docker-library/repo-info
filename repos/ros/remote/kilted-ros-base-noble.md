## `ros:kilted-ros-base-noble`

```console
$ docker pull ros@sha256:ead7117130ebf582faf4b75eaf8128d598df9de705d53ee40bffe020a04ac0a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base-noble` - linux; amd64

```console
$ docker pull ros@sha256:eaa91e036ab9ac65f591d9c59ed2ee792c579555246d7ee41765db92dcb133c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297063620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3e08407fd29c136e5df8dffcae76adf0970b8c8c4d9744ecb46a6396163bf6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:06 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:37:57 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:37:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:37:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:37:57 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:25 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dc83cfb54c100abefe0c5789c9596dd735fb6060b478c3278783aeaf09f70`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 683.3 KB (683286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f700f32ef995c460ab129f09891f4ddfb743874c91194da67f67b5fcf93b0`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 6.7 MB (6713060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e061d3532c880b6e507c66169b2eec7e7ee08595efd66710447bb606a5fc8587`  
		Last Modified: Mon, 26 Oct 2026 23:38:24 GMT  
		Size: 94.8 KB (94779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ed945075418a4426d3520ac44b679147116e608399b6482235a742f223fbe`  
		Last Modified: Mon, 26 Oct 2026 23:38:27 GMT  
		Size: 121.3 MB (121282392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c98b6e4e76afde314b4a1bc4751e0a9d406e5caf149acdc0c835164c8107b`  
		Last Modified: Mon, 26 Oct 2026 23:38:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4476a4c64a0f1c1d6abc81390584d3d6c247024aaffba8abcd92fed66f6f46`  
		Last Modified: Tue, 27 Oct 2026 00:33:23 GMT  
		Size: 110.2 MB (110243705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80198ea7ac609bf3193290363fd38990ec51568626d7d449854606f09e28b44c`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 356.7 KB (356749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764782835e18f6f0bef0195b6f25d833b4cc386c2e7fb56e08a68fb2095685db`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 2.7 KB (2668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991297366c9de3a3788174b417a297a89fbc701088899f26b1d7767e6444f584`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 27.9 MB (27919173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:9ea4f294ac450f081ffc63704e7dc409c9ed867c320e014766576edb90abd2c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24891871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c5ae16a1668162442b7c4b4af8ebe0dadb5cfd5ce4b034ea1627e35ae1bb06`

```dockerfile
```

-	Layers:
	-	`sha256:0bf06ac3ca096897be8de5bbf9108d133f956e79c12924994aa9e3ee511278ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:21 GMT  
		Size: 24.9 MB (24875524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd2df90cf4d30b03c60e45450edbcab71c20f94f2e9cd933138e4a256bd5ee61`  
		Last Modified: Tue, 27 Oct 2026 00:33:19 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ea44927d6f747bec1dbc3dad4ae7a1fe7a7e6f11b79e144220885691bced99f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285608025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3069486ad2e9ed4f336b593c1568cd2fb881bc0dec1cffb48b25319d4717a204`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:41:44 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:04 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:42:47 GMT
ENV ROS_DISTRO=kilted
# Mon, 26 Oct 2026 23:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:42:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:47 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:10 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:12 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7570ccd68d909595ef92f220097d912ad01d622534fd1553f91849e874b2d32`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 683.3 KB (683339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c2268257e3a997d95076d921c2fd6e74693709412a133f1160c4192c09aa82`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 6.7 MB (6728544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80492cfaa373ae7f08e6653a0cd8d6b94437d5c5a166334e2b1809778e2d5f0e`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 94.8 KB (94791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad910f55a0ac69c6d6b4818c1ffa257dc9b05971620fb7a642d1f8da572158c`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 116.1 MB (116086429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2327ed85048e49e3eee3efa95d5fe25c8e2f1447d34de8d92a62fc70f0400f87`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894fffd64402f351c47ddc303da8f675d7f45e012830f4ba82dce785ca467d8b`  
		Last Modified: Tue, 27 Oct 2026 00:33:09 GMT  
		Size: 105.7 MB (105684772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d512f1b36f32be80d750f62345b6d8b45918fd1fea66be87cf5cac268d50359`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 356.8 KB (356750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907dd0999e0d0d0a15d4e8b46e8c7c4bf70441d7d35ac93ad10c545051ab37e5`  
		Last Modified: Tue, 27 Oct 2026 00:33:06 GMT  
		Size: 2.7 KB (2655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d890e56a5560ee6ab256a68955083c1743d24fa1b4704e70db430d02c8fc1`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 27.0 MB (27030421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base-noble` - unknown; unknown

```console
$ docker pull ros@sha256:fa8bf7a258dee2f641bb1d7fa88d72df2851461de8528c4469be8ff5025fc438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e59682e9f9fb53f32d1deeeef28e59145c5aa7ca85a178e3c972eb81d22933`

```dockerfile
```

-	Layers:
	-	`sha256:315fbd5f0dd9df2c786852315f09c59aba1d6889a6da8bac3a0d424ee7f92c35`  
		Last Modified: Tue, 27 Oct 2026 00:33:07 GMT  
		Size: 24.9 MB (24897784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a77f0fab0eac387903e3a98e3666d9c72f5aea530006f04aeefc8640c83960d0`  
		Last Modified: Tue, 27 Oct 2026 00:33:05 GMT  
		Size: 16.5 KB (16483 bytes)  
		MIME: application/vnd.in-toto+json
