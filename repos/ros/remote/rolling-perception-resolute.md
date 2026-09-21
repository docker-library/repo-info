## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:064ddb2e5ae66585b5c392e33a7357703689377f3b79742bd11255b7b4432425
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:2dec3152a232394a3b4b236883080efd7afc465404c214d91239c053010a62e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532639532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010046dca39b9e66ef9c6bb142b17ae66714474c30e283c0a6383906e5c97d6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:28:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:13 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:03 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:16 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 20:14:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf24c45e46aa1a74f830772cd1a8a97cf3b4dd807debd829e88da59e6663d7`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 741.4 KB (741371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e016ba9a343320418f83a9c68d5b27858adfcb2b5ccdfb44d55955b3f2bb32f`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 9.8 MB (9783607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53d08f4eb335405ce1030a2149a748da9f452b79133d92bed9bb8557c9f5c3`  
		Last Modified: Wed, 16 Sep 2026 03:30:44 GMT  
		Size: 91.6 KB (91560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ae7b17d1d017b6673185eeff6557bd29cdac9fc09b46557706bc900141c06`  
		Last Modified: Wed, 16 Sep 2026 03:30:47 GMT  
		Size: 137.0 MB (136985813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ac1e33bd0c582059107783914f248d88dc276e6ffc9b29c5f5f1793efc2fdf`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f05bd237d593e0f3051e5fd53f811e635b31f99e311288fe591a49b9629ad3`  
		Last Modified: Wed, 16 Sep 2026 04:25:34 GMT  
		Size: 124.9 MB (124902568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686213966843573f9d808fa92caae45629a03707772219a18c34bbdabb0de50`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 364.8 KB (364828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314e6c2326d5f567b5c16d1326cd58c74c781faa7356564cfe092fe53925f513`  
		Last Modified: Wed, 16 Sep 2026 04:25:31 GMT  
		Size: 130.9 KB (130919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71a63186ccc893f9157464ccf329e49a5a5dda5d01b9e730f618c9ee9deaab4`  
		Last Modified: Wed, 16 Sep 2026 04:25:32 GMT  
		Size: 25.8 MB (25777724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65268cf89c1811f7511cec05d543f56b12e71821a25c49fd7c2e7ac93a8e76b`  
		Last Modified: Mon, 21 Sep 2026 20:18:49 GMT  
		Size: 1.2 GB (1192287557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:56c7f25b51c17700741eb3f4d7e45a107f05d367c232a83437082645d648828f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64365635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd2370ed73c99764a3e67d5473f17d870650288e0017073f0c001b68dea30149`

```dockerfile
```

-	Layers:
	-	`sha256:13346abc7d3f61f63c86196cd451c5f12988e8ce707bcd517a32d0d4afd8125a`  
		Last Modified: Mon, 21 Sep 2026 20:18:30 GMT  
		Size: 64.4 MB (64355942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b93aa07d3e9f2c503547b77b9608dfc0133f2306e9bb395c6bf052e6628eb785`  
		Last Modified: Mon, 21 Sep 2026 20:18:27 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4b1188cf375d663f8108968a801676aa322cad33ab154a785dc32e56037ba1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1475744979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2802592cc87f33d7de0eed7a6b4ee2b00181f5e8b0c7e2d88401dc67a8e26c1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:28:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:52 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ROS_DISTRO=rolling
# Wed, 16 Sep 2026 03:29:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:48 GMT
CMD ["bash"]
# Wed, 16 Sep 2026 04:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:24:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 16 Sep 2026 04:24:29 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 16 Sep 2026 04:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 20:14:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba5c0f1b81ae37786c64dcd3f73f35d3119ccb43a136dd6f7dc24f35e00bb81`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 741.8 KB (741802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e94c837a3ea779f1d6d24e687ee911a24757a210a8db4b52195b4cad33b06`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 9.6 MB (9607171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dae6b22c313ae33086401200eb021c95a3bafd9dab2a9d4a05ca03cd5eb8a`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 92.0 KB (91992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de321ac390edef2ab4dab0ae23270894de88e4c4eea337364ebbe29b37c44d`  
		Last Modified: Wed, 16 Sep 2026 03:30:29 GMT  
		Size: 130.3 MB (130329183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6540c38625250e063487c041b6708b971dada3236bb69d74e9511baa67af2368`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f448a64536a71ac68047a427eb1ec815f5ff0f2c8f3f8fc274f9a5d968877de8`  
		Last Modified: Wed, 16 Sep 2026 04:25:41 GMT  
		Size: 118.3 MB (118326641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81784a00d3593d3fa2953424bfe66bdf6c36e0d1f8de1e2388da9a194d08cf5`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 364.8 KB (364832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9bb723e07d29642dba219bd3c71a5f9d95935f17a48bca275894943247cff1`  
		Last Modified: Wed, 16 Sep 2026 04:25:37 GMT  
		Size: 130.9 KB (130893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b2b8dc9b457eae275970f770fb3b7163866ce199a17193b666093e79f7847a`  
		Last Modified: Wed, 16 Sep 2026 04:25:39 GMT  
		Size: 24.7 MB (24723696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bc96aad38ab3d897aacf9b3ba7ce9ecf1de49c73c1bdb386da093c5b7aeb51`  
		Last Modified: Mon, 21 Sep 2026 20:19:04 GMT  
		Size: 1.2 GB (1150672100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:57cb58006010ade64ebcac157d19df465b1362ecd0dfde5431c95d53bca0d15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64279933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9dc19fc0075a4c0488ccc6df3f08e044c1c880785b7efb09f3ec65d0f3b3d8`

```dockerfile
```

-	Layers:
	-	`sha256:fdd72d5f578aecc460e4746f1a5dd69196c086aa700cb0fc0ad62d5adbd1cce9`  
		Last Modified: Mon, 21 Sep 2026 20:18:46 GMT  
		Size: 64.3 MB (64270160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf84c3dcbdb244c9f735e53365f38c0d20207a46296e87aafa5a344bee9c432`  
		Last Modified: Mon, 21 Sep 2026 20:18:43 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json
