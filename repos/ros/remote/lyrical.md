## `ros:lyrical`

```console
$ docker pull ros@sha256:3224ee150cb02eb89a5e0811bc267b57ed3a91b9c10191df57810726a7e916d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical` - linux; amd64

```console
$ docker pull ros@sha256:4e129b13f5c72d1630b03513af404353b44b30c793fd6d99b362f29ca7a15f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341056668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d5a3c4848ccd9628f04fe609c4046d0af59d88decca121f98b23eff97f38c1`
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
# Tue, 27 Oct 2026 00:32:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:1831ebfd6789d5571d1b51fe3007a9f23e23a7c88b5b9dd9462fa17680ac4ce0`  
		Last Modified: Tue, 27 Oct 2026 00:33:43 GMT  
		Size: 124.9 MB (124904993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a7cf84c2565566184ca6bd3003185007dee7f0fdd899bd871d99a92ab3282a`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 387.2 KB (387236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649636a805497d8532b32d46b7edf5f3bfc0ce6763ef64ae3065c1656dbf7085`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42512d8c3235513bab08d362daa6d76b14a07986a2df422717931bc552ff46e1`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 25.8 MB (25804150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:5c82444ea7921e9c5e4544070401bc0bcf05afddc316d3c6238a13a09f156cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29192489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf14396f817c50a76708a0cd12bf33fe5517dcf952ae108ab7de2d26cf7c0ca`

```dockerfile
```

-	Layers:
	-	`sha256:2e5be385a8e3f4eba8d7eb4f427c0626369be09357d18ad0d52e8c8b11a3948c`  
		Last Modified: Tue, 27 Oct 2026 00:33:41 GMT  
		Size: 29.2 MB (29175039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f674ae065ebdc59a2d321ad3792815945e9cea9012fcdab5cfa7801e02ded978`  
		Last Modified: Tue, 27 Oct 2026 00:33:39 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:67dd23cbd6c2dc5a06c6ab4152f917e4686320d90267fb4d33adeeca16bcb469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325573055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e4fbc21c778ec9f73f366b1bd7929ac0d6523c7d2b5a7959af22e6cd78085`
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
# Tue, 27 Oct 2026 00:32:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:32:17 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 27 Oct 2026 00:32:18 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 27 Oct 2026 00:32:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:c8774051d047a4cfeb77c33bce57ee0e0f9bd1466d15a980917ea93011bf26f6`  
		Last Modified: Tue, 27 Oct 2026 00:33:31 GMT  
		Size: 118.3 MB (118322287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d434e31ebded43fba2a188eb5fce8afc95b0c99c029189dcb103dc90e84f0190`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 387.2 KB (387243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdd532a4b2813fff0a0e23541712ddeb34f81253c5a1ac68e5d220741ab726c`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 130.9 KB (130882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681f5911d3b538042707e88a2d81fd9411f89ae999dd72f0454c411fbbd20b8c`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 24.7 MB (24743967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical` - unknown; unknown

```console
$ docker pull ros@sha256:ec6f9dd9a0eadc3f37a5e9029595e403d5c5d0c5f2e7b22af6bcc4e7c745207e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc762095d764d98038a1bfcccffc35a8ce4db8c45814bf903265431571bb11c`

```dockerfile
```

-	Layers:
	-	`sha256:3b04639c582c07371c30d49d1dbb5bbe5cd0cf0ec25aaeedcd1be241a911d3a9`  
		Last Modified: Tue, 27 Oct 2026 00:33:29 GMT  
		Size: 29.2 MB (29239671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1f57a55282fd7882bcb37bf701de67e984ab2ec77ffd248140e0d9ec7883c18`  
		Last Modified: Tue, 27 Oct 2026 00:33:28 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json
