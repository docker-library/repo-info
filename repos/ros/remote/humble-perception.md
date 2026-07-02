## `ros:humble-perception`

```console
$ docker pull ros@sha256:d89271d71fb7cefd5c39481b012172e4e8378835b8e6f23b19769b55a06dac35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:4c4298df37c45fafee3d1509b14e0987971f76dbe23660ae08fd2f3f8688953a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.8 MB (955832649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de460aa7645c9b53786e085b4185623243f1489f599613949b7e7a6ce8ecafea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:27 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:33:00 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:33:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:01 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:33:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:33:50 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:33:53 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:34:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3926550422394aa83c1b53c4be73afffcc0634e77ecc34803568f4bcfb1e49`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 1.2 MB (1215842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e86c051c759741cbd80e7077c162999229780c2ae693a10ad1f8c326e6030`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 5.9 MB (5949015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf407a2bc1d9446d2f6d8bf6e29a55b8f3e51499596bf7905019454c7559ac`  
		Last Modified: Thu, 02 Jul 2026 02:33:24 GMT  
		Size: 97.4 KB (97419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c461099d7262bb399f4ac8ed23d2e95bd3c865b4b05e60663d699b7e704686`  
		Last Modified: Thu, 02 Jul 2026 02:33:27 GMT  
		Size: 104.9 MB (104868087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b648fd5c44b4fa950ce7c35a3e1cfc7e250180224e3019b9696f6c3b8ed660`  
		Last Modified: Thu, 02 Jul 2026 02:33:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c461a1c43cf20a0c74324fc81eedc343610af46fc2f49cb18fc360a12905e19`  
		Last Modified: Thu, 02 Jul 2026 05:34:56 GMT  
		Size: 98.2 MB (98160181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6653d40d75a9d547f12b6b53a70d0324f19054978c841bb846ffebc85d784bc0`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 394.3 KB (394261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632df2d4e950a35f4d24f896cf23007e92044489ab219e48a30cbefd39bf11eb`  
		Last Modified: Thu, 02 Jul 2026 05:34:52 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3964903d039e77cb629609e3a3723a48e7ec310279cd934dd1620b34fb9b00d6`  
		Last Modified: Thu, 02 Jul 2026 05:34:54 GMT  
		Size: 23.3 MB (23342866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a73df547a3f6916c947f25d3daf02eb354b649d53b49c391dc723bb370a7bb8`  
		Last Modified: Thu, 02 Jul 2026 06:25:41 GMT  
		Size: 692.1 MB (692063362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:299cb0ca393c9e29001b143b840b514cf484992643fffb6a47a34fd64ec10e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58929631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b40d116c8704557a87d60bd7b6e52f159f93aed567ba93b50eca96359cd5950`

```dockerfile
```

-	Layers:
	-	`sha256:22932e45d6ffd4b06d05d989a48bfe125e98a258e2d4c48ff22eefcadba5a079`  
		Last Modified: Thu, 02 Jul 2026 06:25:30 GMT  
		Size: 58.9 MB (58920279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87be45d216f4f1eaba33c7208e23df477b5c0f64efd5a879dfc1c74bd4357e86`  
		Last Modified: Thu, 02 Jul 2026 06:25:27 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:61dc037aa1963fc3246001297bc4a8c763397205571989fa42851c2d6256040e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.5 MB (916516613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131e801b0b3cd3b0ad4e8c05dfc239b907fedd33a87ae60f04501133411778b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:33 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:38 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV LC_ALL=C.UTF-8
# Thu, 02 Jul 2026 02:32:13 GMT
ENV ROS_DISTRO=humble
# Thu, 02 Jul 2026 02:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:13 GMT
CMD ["bash"]
# Thu, 02 Jul 2026 05:35:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:35:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 02 Jul 2026 05:35:16 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 02 Jul 2026 05:35:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd4e32690a0f59d8889f1fddd11622b11071a232e9b03a7a15afd1917ca8e3`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 1.2 MB (1215970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e7462ed77dfd190eb3532383abf95b31c5c66482ca078a6045f739997b09b`  
		Last Modified: Thu, 02 Jul 2026 02:32:40 GMT  
		Size: 5.9 MB (5909161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a672981123fe10808f756daabf51bf56aeb3d7c7bb6ef7e4f11f91784debccf0`  
		Last Modified: Thu, 02 Jul 2026 02:32:39 GMT  
		Size: 97.5 KB (97540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a59875832cf1080665c36e7e978a45c6683e56731a48a87bd015964402c2298`  
		Last Modified: Thu, 02 Jul 2026 02:32:42 GMT  
		Size: 102.6 MB (102623899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1130ded35d209574b639f4e86c54403bf9fba3f055ac4932a421caa1d416bf`  
		Last Modified: Thu, 02 Jul 2026 02:32:41 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a95ec4818463c5a31c57a69c6ab40f0247bca893cc24d8ea04734f3de8e194`  
		Last Modified: Thu, 02 Jul 2026 05:36:14 GMT  
		Size: 95.8 MB (95797241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bd08169712dee64b72959b3342413c21110bade5cd27aae9f522ae3ee8ba9`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 394.3 KB (394263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63f9c34214249e2a738cf1f863a1742f3f158a67178ca1a8f3173fb32db3eed`  
		Last Modified: Thu, 02 Jul 2026 05:36:10 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3c56c2ed8ed0bd0468a10df3b2d497e186bb2ecd04dfed47bd0021d0d1636e`  
		Last Modified: Thu, 02 Jul 2026 05:36:11 GMT  
		Size: 22.7 MB (22738187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fcbeba7f67735b23a8f73825040fe9a268348a95526246d878f4eb238085a88`  
		Last Modified: Thu, 02 Jul 2026 06:24:06 GMT  
		Size: 660.1 MB (660124455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:0811572d93541586005be1b04aef1f9ea1414790096f4f53c5a311603fc6b62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58914036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f2f109dc775d64262a80d144ad7b14e9c542ac0d2dc058b5548a5c7c4046f4`

```dockerfile
```

-	Layers:
	-	`sha256:db47b5126753ce0a7f5e4c74ab7d42f372ec56c7ac93b72f77fadfb35df676ca`  
		Last Modified: Thu, 02 Jul 2026 06:23:53 GMT  
		Size: 58.9 MB (58904604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:267de9595d44ece91be157b7e45860f85f7c938e5cb983b3f6b204ae05b9388d`  
		Last Modified: Thu, 02 Jul 2026 06:23:50 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
