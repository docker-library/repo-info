## `ros:lyrical-ros-core`

```console
$ docker pull ros@sha256:9401a1727b686a34b6775b43365f3805d47472840a4041dcf0f0ee3601992047
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:bb9505717ac530f8d8ba658cc0e4c62e285c8d5f129fcdab6bd8bf232728cccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189829400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ccb560bb8605ffbd80d73e34e199b8b38cd9ebb52e2beacfff39c31eb62b8b`
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
# Mon, 26 Oct 2026 23:36:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:14 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:19 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:38:18 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:38:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:38:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:18 GMT
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
	-	`sha256:4d2dbe9d0d314d1bfe0cd73bae0adba2dadd956e1608250977f598fb867e3a93`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 741.3 KB (741301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41a2a0d6e677f90bd0fa355d70b4f2711e8f8e6c4f1d1c66075a8d7af061ae`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 9.8 MB (9785393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a983173e71ab036c5a58dc8c2e916ebaa0a05f72f8494f02920f3978d0acd865`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 91.6 KB (91603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff07ea0b312b7b25b56e88763f69a3706f13de5272e269be66423ff570d727`  
		Last Modified: Mon, 26 Oct 2026 23:39:02 GMT  
		Size: 137.1 MB (137070595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4e3a493d64b9e1b7421f33e96c7112065538405f9fe33f6e14d7f5f81e886c`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:811b18ea2fb5950a1e8eb35334b6b6ca5058bb211ffa500b522fd2f59688e8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22789126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cadfe35bd13d06dadee66981c17592374dd394f48662d6cc00c49e11931fda8d`

```dockerfile
```

-	Layers:
	-	`sha256:d61e4e8780f43823113b327425d38cb950f6a80910b53d1806f5e8527522e251`  
		Last Modified: Mon, 26 Oct 2026 23:38:59 GMT  
		Size: 22.8 MB (22773545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82a14ed0b7f3eea74082068c42c9a8bf34dba98eab3c30ac7015b3fcb5787304`  
		Last Modified: Mon, 26 Oct 2026 23:38:58 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1d7b8e19e163626ff4e1a727422c92b92101d9fd16f9b72c75e5a334a14130f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181988676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef62896ffa51eade82bca3dc52f29887ccb2091e0f7c126490c0f7988a17472`
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
# Mon, 26 Oct 2026 23:42:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:32 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV LC_ALL=C.UTF-8
# Mon, 26 Oct 2026 23:43:37 GMT
ENV ROS_DISTRO=lyrical
# Mon, 26 Oct 2026 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:43:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Oct 2026 23:43:38 GMT
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
	-	`sha256:0c6d174ad62b98a10bdcc2e5fdd4b2c3d1e89caa68aa60e7e7be3f3b501141f4`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 741.8 KB (741778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd00d6583bc95914bd1cf18813fdffb110b69316632d834a5ced65f1ee298b`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 9.6 MB (9610059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102aa0b5a2d5952048b7f2995c7940123d06f921b29cb4b3bad990ff8dd09374`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 92.2 KB (92187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ae2e1422836cc5eecb27de617f02db89b64719ed358da64e30a4f2fd7cd77`  
		Last Modified: Mon, 26 Oct 2026 23:44:20 GMT  
		Size: 130.4 MB (130421760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c398aa1aa8fcd5305f8b1b6c8599f305a7648811d8f503f3ebea31264f5475`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:ea01d8f3d55eb69cc5bc03e06859b5625bdf3b0a083ea6db72d86c89bc834b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22761945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3f9e928b6c69c3ce24e7a3b1c7e0e20dbba9c58793de58dda850f13b870711`

```dockerfile
```

-	Layers:
	-	`sha256:33435cc311dec686c85470ee6caad7d4506e0b3dcf0407262c405b6414680b09`  
		Last Modified: Mon, 26 Oct 2026 23:44:18 GMT  
		Size: 22.7 MB (22746237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14675df32b0a575523b37256604a36a0d6f24a54dc548f1f93e64172d875c111`  
		Last Modified: Mon, 26 Oct 2026 23:44:17 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json
