## `ros:lyrical-ros-base-resolute`

```console
$ docker pull ros@sha256:d9078270abaeae65497036085f1654c75ec0a95e2aca5ecf7ddc0846a6cd69e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:17c27c1c59d55a23e3de9098a696c14a95f3b4da94fbc8621572ada46fdfd64c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341098207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f406a9c90c1bdee653419a53b232fad91fc817b529342bdbd06ba8a3ab37cf27`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:35:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:09 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:37:09 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:37:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:37:09 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:32:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:32:14 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:32:15 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdf89ce6026936318ec70b3ffe6d6aa0778d9a1c0777d8e87bbe29d156850a`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 741.4 KB (741396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbd2f19c0b4378014e9962cb05a70e907cba548b723d2c5ce5a32b333567f9`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 9.8 MB (9783913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831c6eaf1e1760417d58a3e5274e21ccdc3df134c10cb028be812314cc4fce96`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 91.7 KB (91692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac56906d49b0316419f3e17380508f10255faf69238e351df370b79f14e19063`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 137.1 MB (137070303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34388d0ea3a268fd49187375eb1b5dbe900ff0ccdbc8541dbac65ad67f07e759`  
		Last Modified: Sat, 17 Oct 2026 00:37:52 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774ec92751b2ef7a8d0cd796b3d7aa98893cb3ba5c575bfd2ed38fe785b000be`  
		Last Modified: Sat, 17 Oct 2026 01:33:38 GMT  
		Size: 124.9 MB (124920269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd2de97c15e69dc7df209cd9128866763e07801b4b1294107e38be0d58f93f`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2785358666938f565f0aeedee29489bc6fd609c18241f43214c27b771012c5f0`  
		Last Modified: Sat, 17 Oct 2026 01:33:35 GMT  
		Size: 130.9 KB (130900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cb28ac3e4100157db0cbd6164f681ab31ab1fe0d400ebd27ba70264e8c7c8f`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 25.8 MB (25803748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:70a594245648d4b1073f306bb98998117ced77cdec9e4ad079c5bfff8e6c5da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29193077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f58697a7d1a2471e1cad004edf7662f2246342ead9530ad748018d21ce269d`

```dockerfile
```

-	Layers:
	-	`sha256:748df8f0f9e578ff4887ae052deef7f9e5ad2810faf3fbd9458829424a53b271`  
		Last Modified: Sat, 17 Oct 2026 01:33:36 GMT  
		Size: 29.2 MB (29175627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4dfe133a09dcf9b405663b64dae8c5f47cc334c6a4d77200903fa52151838c`  
		Last Modified: Sat, 17 Oct 2026 01:33:34 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43ed2675c5af8b8aaf7e4363971dfbcd43dc9bc0300715c4b968a91c3732adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325590700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfb8a9212430def1e09d4ef15ab626593ee128eaa8ecba20d634a84d9846819`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:35:37 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:49 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:55 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Oct 2026 00:36:46 GMT
ENV ROS_DISTRO=lyrical
# Sat, 17 Oct 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:47 GMT
CMD ["bash"]
# Sat, 17 Oct 2026 01:33:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:33:15 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Sat, 17 Oct 2026 01:33:17 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Sat, 17 Oct 2026 01:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac03cf8071ee1e164e96782f9e5a4afc92eb300edb5f046cecf2336fec9bd7`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 741.6 KB (741572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ba9f6e6b910cb8929413d6184ddc8175861cd46f89c54ddd64effe205a8e0`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 9.6 MB (9611495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6816dbdfc2d6cfd1c6c1e75d075cdbbddfa52d9748cc299606ed6477c2827a`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 91.9 KB (91911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b883b6393feb0116d4e2e04f1bf498d76747dc8270b4de3eb2015a88b5f5515`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 130.4 MB (130421903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20a51215a7219b2657aaf725b280053970f8de3c51bbaaa845040160136e576`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73a450139f76bb892949db194e314a610187582a3dfd39502dfbefce5dda4c`  
		Last Modified: Sat, 17 Oct 2026 01:34:33 GMT  
		Size: 118.3 MB (118334753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d1c23db5ce88910697d4282e1bc7f954265a6a7bdb1ac77a44ce4bf373b78a`  
		Last Modified: Sat, 17 Oct 2026 01:34:30 GMT  
		Size: 406.3 KB (406281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32a777c66ad1b2745f21837f8217c348bd65a024545f3a6cd799a99d2c9fbb4`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 130.9 KB (130881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5ee615e598de57fbe8abdb38ffbe2461efcb5416b979dd72d2fd22fa18b265`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 24.7 MB (24743511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:0b4cf8009203603c922a2482ed757ce1504a204c6f9e733a5f072aeb22e19a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29257858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f7275c1706861b8bca592eae3cacb11efa4bd74c1866e29d333a68aa75930`

```dockerfile
```

-	Layers:
	-	`sha256:253f5d2681954315449f4041c9e7f84369cf8d768e29498d9c3d9aa78a9fb482`  
		Last Modified: Sat, 17 Oct 2026 01:34:31 GMT  
		Size: 29.2 MB (29240259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a5321ad4e82a209ceda2c35b5d0ef7cf5abf26e5943c4b1af1180b5a7648a55`  
		Last Modified: Sat, 17 Oct 2026 01:34:29 GMT  
		Size: 17.6 KB (17599 bytes)  
		MIME: application/vnd.in-toto+json
