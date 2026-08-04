## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:7bea3d9aa2483d3ca34c8e30d921b79273b0913bd7dc64bebf51d082b5d107e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:09da889006b4d4f120ada9b788394d566818f9e451f59a3a9246a1f9eecf849b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263994963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c99f6aa2ad179162a267eb881058cb7e518fca9db73110927bd3950e2903f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:43 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:31:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:00 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:01 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77da4fe5aaf8a10916d28d70ae83b9984daffc53397583cf7804ca30365a047`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 1.2 MB (1212330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b0742485fab751e31372fff86b1a5e125f0fb40844db84d17c3994b5a766e3`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 5.9 MB (5949651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679797a3685e4691860198b6c1d08e5aa67c9f98fa1cced97c570c3cfa512f93`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 97.5 KB (97502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ab66f5cc8c2304b9878c94d0a9558c7e245bcfd32e949d002b77d943ae662a`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 105.1 MB (105106729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e3252c2ab045092004c8426c151e6b3a44435491de1dcbad7b2627351c1bc`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d960f0268a7659d14d191254489e57704723aac3fd7377f59c017caa0f408a9c`  
		Last Modified: Tue, 04 Aug 2026 02:32:58 GMT  
		Size: 98.2 MB (98160636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab68613df83bfd3d44c92a585a2ea020937e186bf1a7c9883a390a46b5c0fb1`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 383.7 KB (383651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219cacdeeaae57688ecdbcb64e41807dcb53093b746a66e6d3577f5d6af47422`  
		Last Modified: Tue, 04 Aug 2026 02:32:55 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0bf4a449eab2c91ac51d143e1f466bc19afe67a024ca339f3d45a455ea3990`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.3 MB (23345250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:cfb2a63b937a988349485d59404c94424458f5609dfbf5378a2ca1de2703f258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23964853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dcc8fa238429938e439b7742783c0a43e87d1f9cff9fd60e6ad6ced2bf7b34`

```dockerfile
```

-	Layers:
	-	`sha256:2b4f15d2d7cece30d5ae68d19784943155e2a6d46dbbc867ea8c4d6560ddb72e`  
		Last Modified: Tue, 04 Aug 2026 02:32:56 GMT  
		Size: 23.9 MB (23948505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1ca1671d7f8857ed74610d224afaa7c879dbeda49435c4aba62559e10849f2a`  
		Last Modified: Tue, 04 Aug 2026 02:32:54 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da735406a84643be3ad3fe3b8ff4888683ac38457c97f14f8099cb8567dd2ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256632565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab21a242635709a4e4fdb9383ddb12294e47bc7104c533dcd881fe1893ed70d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:40 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:39 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:33 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:36 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397de6fc09eecd81d8ae2b8e05788b455df423dfb7cf0efbb5e35d1c7867ff7b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 1.2 MB (1212522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6136372b5d0d1b9d1eb0f51a9016ec7fe78c0c6a195c095eace51355d8b2e4d4`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 5.9 MB (5909577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3332509bae527aa22cc96b9949aee9a387e8dbb49eb5cdec0a0b8c971b9a4b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 97.5 KB (97547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ab4e46694818cfc738f0db28325c7cd140b13727d7199c414719e55530a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 102.9 MB (102869088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8e59594932430fe58eb790d3f6cb0c4e482a0a5fbeafc42cd4a2f5a473782`  
		Last Modified: Tue, 04 Aug 2026 01:45:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30d399290a30d7f32d2a2364d487184ef4f85ef5c3ead4e0a3512740fca6ae`  
		Last Modified: Tue, 04 Aug 2026 02:33:31 GMT  
		Size: 95.8 MB (95797838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6749707449b5aafe5d1bb52cf20a9c1c4c7754201ecacf4437090f76831c165`  
		Last Modified: Tue, 04 Aug 2026 02:33:28 GMT  
		Size: 383.6 KB (383638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672f53ebc5ac6b20eb9b9aae8eb37cb20f11fc36e62dc90cc9e89c05feb8cc45`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 2.5 KB (2505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0162f5d422de6065e4490fb1f2b0fefa45d9903d53ed14bd084309e07ae83e41`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 22.7 MB (22739623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:880b615a263a31ddb748fdafe55e8e44f22c8011d77e4446490455ae0752be5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23978007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6ac8f7849ae2a5ed55fd8186f37c2abc09671ee6bdddcfe67ae03c26cc8727`

```dockerfile
```

-	Layers:
	-	`sha256:15aca40d048e52b21bfcb6f3ac1cb8b82c45bf306fcd456bfb15b148218919fb`  
		Last Modified: Tue, 04 Aug 2026 02:33:30 GMT  
		Size: 24.0 MB (23961522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a6ef94a2e0d7c1d4b58ab9dce34ffa6fa985a0de47ebdb24cb85fff6e7b54c`  
		Last Modified: Tue, 04 Aug 2026 02:33:29 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json
