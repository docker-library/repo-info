## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:7fd952a7f1f87c990f7b55f1e9cdf4e267010e52efd990665a94f7e41c7ce561
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:19a2aec88315b852a4420cc52b4639bfaf0699848f157e1557baebef7d037e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349527657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257ec6b327b65586f1b808dc6d25279ee1d45683bd6eaf58fbfbba628d3b5b45`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:39:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:39:44 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:40:37 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:40:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:40:37 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:30:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:30:56 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:30:58 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:31:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547e2a397c18788ad08b55531c2ff7390909206aea61dd305be97a7756bd0cc2`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 741.5 KB (741504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0beddd533d07fa4f56373fe8fa4089cb62749befa1f485c9448178c5e417847`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 9.8 MB (9783839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f4973a08e9574760c2b2dc07b9f252558e1a28525a578cc2750626d79fd7e`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 91.7 KB (91727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbdd120909528d121c59bcf6e34071315f369a9f28c05a574d99371506f86cd`  
		Last Modified: Wed, 09 Sep 2026 02:41:20 GMT  
		Size: 143.7 MB (143697563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5c2c621fc5cf24589f14cb74f77a2349ecf1bc70319d5b1252fb02b36db5d8`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e1369e91e417f81997d88872e795e8cab32b57af7c7cd6eb333b5d15d2282f`  
		Last Modified: Wed, 09 Sep 2026 03:32:16 GMT  
		Size: 127.3 MB (127335764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb045f01a5469c0819291274c8f01d121edcca3d1229688804d84a5111a94ac`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 364.8 KB (364821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba88f06caf0c07499ec401e37e4ea91007b75a06dd9ec60959731fb0278b5901`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 130.8 KB (130811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d015695855054c8969eaca79695c7a57ad6f03377f94a6b6dfd8b639d65e86b`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 25.8 MB (25778336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:55d033a0d4aa8ad0c305a4307224d688fc40d4f4e6a4d2fef355d90295415793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29160954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3e004d6599e83cf56c965f69664f4c9a97a36b410bcfbb74453485c3d2a8ad`

```dockerfile
```

-	Layers:
	-	`sha256:eaec155306e3e4a93c71b630137bb402165b616ee9306a2b4b68e1330ec6a923`  
		Last Modified: Wed, 09 Sep 2026 03:32:14 GMT  
		Size: 29.1 MB (29143796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7babfe86633590eb350a0a8f93d0fe18443abe027b07addee88d719e65428907`  
		Last Modified: Wed, 09 Sep 2026 03:32:12 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7bfeca57f16f1938e081aaaca91101e45e8650bf337db4eaad755053d9121bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333977977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c52f194c00aa33a6207c7236397e05637816961ec1aaa93bdc9c08892b9a421`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:34:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:37 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:42 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:35:38 GMT
ENV ROS_DISTRO=rolling
# Wed, 09 Sep 2026 02:35:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:35:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Sep 2026 02:35:38 GMT
CMD ["bash"]
# Wed, 09 Sep 2026 03:42:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:42:24 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Wed, 09 Sep 2026 03:42:26 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Wed, 09 Sep 2026 03:42:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c438b3d945e112f84f0a4be0545840f6556984b01ea4da14ca9d66d30dc58b2`  
		Last Modified: Wed, 09 Sep 2026 02:36:16 GMT  
		Size: 741.7 KB (741674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1c934cfee68b88ca686e24a2ae95741e151f53c99a783f54daf5850aca1e6`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 9.6 MB (9607070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bed05825d81155f4f636c53b39ae99b0e96b201201cce7e813da326fbc0051b`  
		Last Modified: Wed, 09 Sep 2026 02:36:17 GMT  
		Size: 92.0 KB (91958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c8a96a7cfcd63fe0647d99ec0fa85f4f2dd70454e77bbb43748fda5980a4d`  
		Last Modified: Wed, 09 Sep 2026 02:36:20 GMT  
		Size: 136.9 MB (136893601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bba95311feaf834f23b2c1f361216b73aa05849c5cf9eada3d8d53979ce1c82`  
		Last Modified: Wed, 09 Sep 2026 02:36:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e13d8860b25ee6c499ee7e307feb37b97a710109c952ca1c4bffd8804b1b16d`  
		Last Modified: Wed, 09 Sep 2026 03:43:37 GMT  
		Size: 120.7 MB (120688567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f997806a3e0e9497e6c7ee7bc463ac87861154c9df5a552c483fcc63743666`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 364.8 KB (364821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09e7ce9db0fe70fa509bc664e07e55a67112f5a451db7a95ca82334a8d3cd08`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 130.9 KB (130868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48598ef3207bf4f96e0608753727c54e028900456868f6f5fb199218c66ff367`  
		Last Modified: Wed, 09 Sep 2026 03:43:35 GMT  
		Size: 24.7 MB (24724001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:ac72ed46958bc8e674b9e130695a2a070174bfc957a1fefa84f4879439a8118c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29225711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd6bd758ac09c0c6a4457534dc07b702c0c7063ef777e6e97c1f0e6b96627ed`

```dockerfile
```

-	Layers:
	-	`sha256:0079b12f9dd9cc409969990bf66fab9657b7dbe4b78ef9aa28de9b173f442dce`  
		Last Modified: Wed, 09 Sep 2026 03:43:35 GMT  
		Size: 29.2 MB (29208416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9efaca3c7a99b19c046d49d9bc1303e2cdc47083a92458f92d71b77480f200be`  
		Last Modified: Wed, 09 Sep 2026 03:43:33 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json
