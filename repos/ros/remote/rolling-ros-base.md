## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:fd1a2cf7995148ad54d29fbf452b9084b9b8a386ee36ee8241495410903a58cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:e1169629f7bba0a9306d834ea1b485108811b50f927704147697596af8b5bc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341182571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fc6c82cb444776de90796cf2a645abf708d64bba4c1d46791824e4497ed8e6`
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

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:d0636348624aa3b5a84d1c6457d58a8ea70b6307bdc3b4aa9e02e2ae735dff3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29248362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217cba709fcb43c112784d6702491313f827c35543bd6e350ef1e11d20c5099f`

```dockerfile
```

-	Layers:
	-	`sha256:110ea622c35b7fb8f84bc20acc04413dce93a993d37d601a23c5eace8e89b25c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29231204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66810ece0301aebd3b4848d72ab8ba642a6e9622c871de3c98889a2b99a49797`  
		Last Modified: Tue, 27 Oct 2026 00:33:40 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:738ae99d64665fa9528c344cdd05bd879dcd9a4cd3af286e49056ccdf0dd5c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325720958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7683d303efa386e6cb122deb60b676b9f8592748fdc8aa7271eb5b22058d93be`
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

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:0d9422ae614845d70d12f2e34ad018d3ca1712927998f8dfccc9deffd84afeda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c895198a3e23b158e89ff95bba212f4774ba4828f555f27e88757a05835e945d`

```dockerfile
```

-	Layers:
	-	`sha256:7c0137c5b7a7b708670f6e7c35fa6d0c5ab246c7d43cce448c7b29ed4c7cb741`  
		Last Modified: Tue, 27 Oct 2026 00:33:32 GMT  
		Size: 29.3 MB (29295824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6b82499956d5056e9db974240d1208e1e8e806c8cb58fe4fb3c1b471bdeef9`  
		Last Modified: Tue, 27 Oct 2026 00:33:30 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json
