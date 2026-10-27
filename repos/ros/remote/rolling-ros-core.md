## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:d34ac398901b96a8c503f78fed65be47d6a5082946529d0af7c4ab2e275bc10b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:ceeb5e42854e75621d4063b2014b1a81b1668eb0f8afc5f1a8f111b29d2e7371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189906795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a4267a218c9f4e1c71af1f4be26f9b7d3eaf93c5efd08c706686afdda82557`
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

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:2faa62794d78d85f93a2357c99492670181246b65a852878334bfe9e3eb6f5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22820080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0064e4505dda547c2d4d492ebeadeab8e2aa599e764f62fc8e1428804c448e`

```dockerfile
```

-	Layers:
	-	`sha256:b005226360d958f53cb0e7e2ea7bde27e04ee9e9abc5df5992499b75c8184c16`  
		Last Modified: Mon, 26 Oct 2026 23:39:06 GMT  
		Size: 22.8 MB (22804402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9c1baf7c91046299447a14359f544b981a63841fc04d82baa111178d2eb80a0`  
		Last Modified: Mon, 26 Oct 2026 23:39:05 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13089c16ebe36ee2c7acc0b79480df323c6c3c1945e99a768c1673088b9ffc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.1 MB (182100776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e264dacdca27c3384e0c4479d2efe631fc03d55d2b2b2341fbdbb210239cdd`
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

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:ea993ab2493c523552d5ab62a9d058056fe754263b9817725b7c04585fb4fcfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22792897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531a6d4899255dc24b47e0c5fd440c0f1be1be362419a8d26ee6f700540cb140`

```dockerfile
```

-	Layers:
	-	`sha256:978af227d2ff906db517ea9a30b2cbb51659c479f0573155aeed7b3ef6a46fee`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 22.8 MB (22777094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:983bed305b65358b619e7b2227ebc187fa85b0ce53b85c843f4cb65d32a61eca`  
		Last Modified: Mon, 26 Oct 2026 23:44:09 GMT  
		Size: 15.8 KB (15803 bytes)  
		MIME: application/vnd.in-toto+json
