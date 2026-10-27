## `ros:rolling-perception-resolute`

```console
$ docker pull ros@sha256:094d3ddb12b918d390cc41f5f7ff343778e69a56eb35d7bbf6c12ed3d3aec4d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:fbcc074181d1f52e3e4fbd6f67b3a82e2c2041b1c92ace331c93b5329faeab41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1529713078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b50d55ffad8d943dc2148e56eb1fea1ef43f507cc8d253ac77c246f96687379`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:37:12 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:31 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:25 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:25 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:28 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:30 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14660459e36819afb4f42c3b562f2fb94add0a25afaee3257ba5d6e53e77790`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 741.3 KB (741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a69eee9681333a4efaf3d0d0a3076fd6e279270ac3ea1ef1ba75694686a998`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 9.8 MB (9785466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69a06624fa4c3b4f144480f53ccac9ddcd3c8b51065efcbe7d6e686dbb6633`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 91.6 KB (91604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a5919917964cb06cf40f7199e0242c7384d3ba4943d792839378254c6d0a`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 137.1 MB (137147923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c9144426177e7e2a237be2a53ad8d3c8f32e6994e6a9b8b67858a3d0e2eb7`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ed7a179974459052c511757f0bd59a8d16a5509fdf691f2bb48c76b2bef229`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252d4f78782eb8b220e0945af7f8f3e33b26bfb5f50ae89f0b3c6ab928373bf0`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd83114e35e696de0c8cb2b3986936072525b11e9e34ca77f2f59ded1110a7a`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 130.9 KB (130914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1557c9c61cd6aade629a6aec07ece42d4a0e2dd557c02687abebd6a8d999c3`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.9 MB (25871254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f102a243d3bc7b3bd1645908775c38335b1e3489276c1659f4ee2ea4deb7fa`  
		Last Modified: Tue, 27 Oct 2026 01:25:51 GMT  
		Size: 1.2 GB (1188530507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:e338727faee39ff09202de210b90a3016ad1fbf129f4f5aeb1aa8401d2544865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64452774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f36bf1f28249bdf8df6f9ed0da5da4159b1e7f5c98e637542f202e749cb36d`

```dockerfile
```

-	Layers:
	-	`sha256:6b281297ceded011592f0eb2917d87440c6a51fdcea88ffbdc170d14642d763f`  
		Last Modified: Tue, 27 Oct 2026 01:25:31 GMT  
		Size: 64.4 MB (64443081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deb0216983fd5b7778a76e779fd206978ffc24f79123b95fd5cc73b91a9a34b2`  
		Last Modified: Tue, 27 Oct 2026 01:25:29 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a89f22db4c5da961b54b060f01058a6fe62cf8e2413e84626d188c80abcadef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1472868950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d91416ef5386bd3e6cc60823165aa8b0fc1706bb2dec90f472cbc65483d8cae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:42:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:25 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:33 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:29 GMT
ENV ROS_DISTRO=rolling
# Mon, 26 Oct 2026 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:29 GMT
CMD ["bash"]
# Tue, 27 Oct 2026 00:32:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:19 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-perception=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790d3a8fccccad8c467b7611b292cb39e7d81daa7262a55cdf299d65670ac3d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 741.8 KB (741780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd345fd1808e70a19f54f03da15bb2e6d50f7cdafa9163b09ef7f6857f204277`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 9.6 MB (9610100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8006730f2e96e614b51248f7b69191e200b7e4a3f8177b90475107fb9abdd84d`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 92.2 KB (92210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51312d6be673ce69bdd971e586875798647667e03a5a4356cef8c9901adba89f`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 130.5 MB (130533794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18930bcaeb48b2384ec342370be3733979c112642e7dd420ff5984dd638a3439`  
		Last Modified: Tue, 27 Oct 2026 00:33:34 GMT  
		Size: 118.3 MB (118323370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89d405af3c70c832373867ce4c5b3f1baf88fc8e61827956a186c7f7d38ce6a`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 369.0 KB (368965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f203046fa2b5ede5846fbf8aa17fe2ca117c1712c41160049355889d4fb9565d`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 130.9 KB (130888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49ee439281413efa55c8c72fb0d1605fabdfbb07edd4d9a780e4a25303c4ad`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 24.8 MB (24796959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8df855a2626eaddac00fd219d4c7a0c7fa715b55a0e8c810b14282e938bf85`  
		Last Modified: Tue, 27 Oct 2026 01:24:10 GMT  
		Size: 1.1 GB (1147147992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:5b88d0bc06b6f24b8ecc3550dc0e0aa7cc10051ac738db9a059f87f59a31ace8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64367072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9cb319265669d0437baf02a9c455aca1ff15ffefd0993dd5a32ddff35b46cd`

```dockerfile
```

-	Layers:
	-	`sha256:635b7321b49a6bcdc0f1abaafc06b7e3c0414b3f68c834d5efc37a7f53d6df28`  
		Last Modified: Tue, 27 Oct 2026 01:23:51 GMT  
		Size: 64.4 MB (64357299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3230c58ba74b4b1b4ebd3850f6956864c37585eb816c44a0051d242ae504da6`  
		Last Modified: Tue, 27 Oct 2026 01:23:48 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json
