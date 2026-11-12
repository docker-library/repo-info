## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:94acac3899448b2097ef8e925d8a9854ecd1fd7cb1690c3bbd7f7079f11ef258
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:f4630e385d46e8832d94b465e0e4f25466e3848d61fdf360cd5599a64d2a5ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142578434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b621b717cd1167a6c484d2a9e80384f64838ea901756552bba99fae1c377837`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:34:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:36:42 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:36:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074560c8655e85fabe0716fa1b96ad8da5d4d8034fc8c77581421da8b3c63b8b`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 1.2 MB (1214774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76521ffea3356ff95836ef5face012f818645dd2fe237624f45e71417043189`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 6.0 MB (5952707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033bac91ac17db5de1454fb077af999632c418c76b48cfe9f185e5115bf1dff6`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 97.8 KB (97825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653117d02b27e594796039a2f6f21841801463df80936d0908d1c5379bf81fe`  
		Last Modified: Wed, 11 Nov 2026 23:37:11 GMT  
		Size: 105.2 MB (105243399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a35502a219f811c9b4483a10b26fa3cdd7bfba870f06f96c5cd47f239f108`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:9cbc69f404b13496e9030a4fbf2dfe1fdd841441c27f52f3e1b4693b42431890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17931516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2604f21bdabef4659db0ad77841e7ae6c76a8b3d1a667925e2f9bb82914cc3`

```dockerfile
```

-	Layers:
	-	`sha256:e7182fac9b3d20bc71f289b343386bab3e579fdb0565f5c69095e96a769e0cde`  
		Last Modified: Wed, 11 Nov 2026 23:37:09 GMT  
		Size: 17.9 MB (17916890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f83c59532f7fae3ebbd92d75a994941693e11933c729329bdce979e68dd572f`  
		Last Modified: Wed, 11 Nov 2026 23:37:08 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0b5ce6774dd605dda510b729950266826d68f0ba8d1018c581e7e361e5bab343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138278970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d8315a4e4b4e3e88398b0b84f44496c364ef411f238ab4dcdaad76f5adeddb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:00 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:14 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:37:48 GMT
ENV ROS_DISTRO=humble
# Wed, 11 Nov 2026 23:37:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ce1848bc4a89509d0fd0dd7038c5702a6d898a83f7103d02e6dde37f437fac`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 1.2 MB (1215118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e7840aaf5d1699f5cfd1e3c1d48c2d88dcf26c14cf136ff6de1f857c803e52`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 5.9 MB (5910832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f664db0f15de3e12a91a9c32062505f9670db533fc7b4de999551d9894714983`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 98.1 KB (98108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c5d5bfd93d2acc16836dfaee7b00fc6b823482d3859a1796178f2e44c5a088`  
		Last Modified: Wed, 11 Nov 2026 23:38:17 GMT  
		Size: 103.1 MB (103053304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007703271a609370140030fbd05a7c39f1f4bc09795c089771cb85ce4a50e64`  
		Last Modified: Wed, 11 Nov 2026 23:38:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:e12a3404c3e6298a8c64db1b3981e4252849a7b4f16b3a1bc7f6bea76ffd5e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17917986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92522b7001da3a4ce0009d267a96b82caaad4f25a4edf3668889052d2593b538`

```dockerfile
```

-	Layers:
	-	`sha256:43292ba38a64d4b6d8bbe843d117c81bc15ab5bf34a62791e9ebbc9af1b376d4`  
		Last Modified: Wed, 11 Nov 2026 23:38:15 GMT  
		Size: 17.9 MB (17903235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9109b023a84716020d538520e6cd7ad4609e9f9e99b5e50a970d7159b731f70c`  
		Last Modified: Wed, 11 Nov 2026 23:38:14 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
