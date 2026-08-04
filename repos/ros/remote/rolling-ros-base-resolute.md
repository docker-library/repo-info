## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:fdbd65c54290345baffa3559475b767837883b056f130d500ff1dd9a3d9a27b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:47c8ef9a48fc05047777f73abe87c4d1f03f14376694a33eca22c01b1b0e1ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349950794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ddbdd1ef635fa62a9462a7c8d6f21c5b10141c495d916bc4c9afb481695959`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:47:20 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:37 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:34 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:34 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:08 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:09 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682b5d429ab8a035d3903c873f611d9826c2f3655182771e5a99242bbaa995d5`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 740.2 KB (740213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257128f5efb77905a75440964a0fa9e26de99c224a4b898a4509e96f7777f2ab`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 12.8 MB (12753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11412969dac8e0b57ab8a04312f7fbeedbc026c6c5b40869f262cef34a7a2f50`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 90.5 KB (90503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44710f1fb76a94aa02ca6914d828e2b0fc6347a10c9c4ee0ef6f058408cb4384`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 143.7 MB (143662361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622d74507cf2aa2b0a23b07541428778ca5e27349bd94a247f60533e85fbac9c`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11fa10d04a32f149cd41ffe89f3804a58cf72655d7c7f29d817b99f6394087`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 124.9 MB (124864497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8778090b2b0d9d51ca93d8964443d7132b64510cd63253ea3d547adc268ec9c`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 361.5 KB (361472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8565b87d8270e7e5c0df25f81bd2d321efd30f56fef833ddcff5f82a3be16246`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 130.8 KB (130819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5abbb19f1f221cb9d9da3b825bd7160751edc3d9706b87ac455ac300f5be7e9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 25.8 MB (25778452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:cf320e232eb29fbfc9d6e4caf693ae7a8f02c3b4bc345aa1080203c0c8710a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29158254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5b8410eedd6747a44b247df8efdc3ac87d8b3990a92feb7ca77dd590f4258b`

```dockerfile
```

-	Layers:
	-	`sha256:b0478f0e6f7b064b8873e600f09ffa7024b187f4336d338b79b843ef5d7193d8`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 29.1 MB (29141091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c6d9f183df97b82b4b8bcc93e12b92220090e89659424379677928186ee75f`  
		Last Modified: Tue, 04 Aug 2026 02:33:19 GMT  
		Size: 17.2 KB (17163 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e0aeb51ac11553ff7e6db3797a93227bffd86743cd222f66c07013e4164aeff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334814080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687756aa7f8d19a29f4fc0fae6b2b947f1dbfde90be652fc952ddad98fb3d198`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:47:21 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:35 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:48:42 GMT
ENV ROS_DISTRO=rolling
# Tue, 04 Aug 2026 01:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:48:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:48:42 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:48 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec143ee2047da2675de0faa0d887cf7333298839d98aab8faaeadfccf16b105e`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 740.6 KB (740604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fa76e0e25af24593bb56ab3cd630eab462d47f07d4a11de290152192cd2b35`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 12.9 MB (12936330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38743eed5473a5440771fcbce2fabad9bad09a759ef9909623fb81229cfe519`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 90.9 KB (90943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621ae0add5ebc66a12cf87118f96656978aee19a41167394221de9c08b96fa28`  
		Last Modified: Tue, 04 Aug 2026 01:49:25 GMT  
		Size: 136.9 MB (136855051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d38b7d0f4a7a3422ab4aa0be4469ed8ef7bb65ad18c7ab4fc8e2663cd70ab4`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4dcc5c59f1de2944046550a60a31f2688be54a4f1f8472d8bc51c0a7b5c7e`  
		Last Modified: Tue, 04 Aug 2026 02:34:03 GMT  
		Size: 118.3 MB (118277171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa64f3b72ecb747e5ca9aa46798292bc1a39d95b0106a40d199765bdfcbf4868`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 361.5 KB (361477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4435fbdbd8c5273af08aa6c3718c4627ebc8f6ef6364f474a6ed7fa6fdbb96b2`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1d0ec5ba73a143cf5362d4aba28de25c6a4659420e81826ec22c0a42e2b1f2`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 24.7 MB (24726020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:53d7698962f590143488c8c41451ba25a3bde3a21978ff64a502f206b6ecd9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29232733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f41be36c3f093ccb78cac679cc867367f1926140cb8f3e1cb58de8f88c2c4`

```dockerfile
```

-	Layers:
	-	`sha256:0bcd63f89516272416c510972fd063855fae193761853d9bbdc7b5ce08967098`  
		Last Modified: Tue, 04 Aug 2026 02:34:02 GMT  
		Size: 29.2 MB (29215433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c0922c214d2b210ee3419e3285510a538e421872c734f3cd36a187c9bac063`  
		Last Modified: Tue, 04 Aug 2026 02:34:00 GMT  
		Size: 17.3 KB (17300 bytes)  
		MIME: application/vnd.in-toto+json
