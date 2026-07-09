## `ros:rolling-ros-base`

```console
$ docker pull ros@sha256:f8b0c9b0cf1662472fb30ab3908df7a1b0d95118763745df79d2630f5ebef963
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:033db4875c1f0a74fa4196794cc73a415a3753cb6d98c22911e30a655e437b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340173729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a5901d2f01ea04fcd0294d947e4184bfd1118265d58a49a2c1121cb36ff324`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 19:12:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 19:12:47 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 19:12:51 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 19:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5fd9588839ee4bc2f2f7339f4103407b539d441507d36fd83022dd8515fd1c`  
		Last Modified: Thu, 09 Jul 2026 19:14:09 GMT  
		Size: 124.9 MB (124864948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13a8947208478a3d32c53d7b5a1e32f4c350aea678b7178c8a3da1054210046`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 372.6 KB (372570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cbb2ab0adb18621da245c37fa87d097e66ac99bf9d32bb1351619fe5f0f952`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 130.9 KB (130871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fded9120bbd0dc0a4eadbc4e2ab72fb78b35d8eb45dcd7b909ce8870aa57d49f`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 25.8 MB (25793012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:d443d4d984d1d34e7a08ea193c67c958f81fd543ff51b2e3408c93d8943202d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29143019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a39ec3ae0517758a16a3ad5b885b30060c6fbbba6886433ab95d466b5d895`

```dockerfile
```

-	Layers:
	-	`sha256:c52671532078e8f81c64701f99bca12cd84ba4eece353143e2d6c06ebb709ef2`  
		Last Modified: Thu, 09 Jul 2026 19:14:06 GMT  
		Size: 29.1 MB (29125861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae134644b1cae3fa877996ed8dbda9cd09c7f018fb9f36f338d4a5b34c6037e6`  
		Last Modified: Thu, 09 Jul 2026 19:14:04 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4aa114255344f6dfd5313472d53675cb26e06d2589290afaf14c6df2a949a5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324870790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7e1078af623f1de3e08a9a709f3fe6906150fd8358aa48b75b59476293669c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 09 Jul 2026 18:31:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:36 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:27 GMT
CMD ["bash"]
# Thu, 09 Jul 2026 18:37:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:37:29 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 09 Jul 2026 18:37:33 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 09 Jul 2026 18:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b212f396a8d7403086bea7814b524a8a476d936ea87bd795407c72f29c93c06`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 742.0 KB (742032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384fc61248925600a0cd688c6766d5dc8e9be47385266c4b9e57fcda86d2ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:06 GMT  
		Size: 9.6 MB (9607107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8fec7cbfae0c5b67babc22a87591ea889647c1cfa0271c4216e61c0b06b00`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 91.1 KB (91098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cddbe9789e5807f02c1f44acc072e1cf22050e93b14b9a2d49e357e490629`  
		Last Modified: Thu, 09 Jul 2026 18:33:09 GMT  
		Size: 130.2 MB (130199952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baef65b99574c57f36722163f7eac27b5eace626399f04ae7e68236c167f196`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f53707932ffe7d1fb0f581bebdb046f570db5e5a5fe05563b64483788ae81c`  
		Last Modified: Thu, 09 Jul 2026 18:38:48 GMT  
		Size: 118.3 MB (118276238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b1067915e749fb82d1cf7fc0c33acee692788c9bdddccb700e6dd2839b0039`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 372.6 KB (372574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a9e2e7a4414c19adaf6ae13b5efd963fa29cb15b0bd84f32f92230b9221aac`  
		Last Modified: Thu, 09 Jul 2026 18:38:45 GMT  
		Size: 130.9 KB (130865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba84455dbba6cbdd79476f6e4fa70e16abf4d574f88ec6b7abd7d102558eab3`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 24.7 MB (24738576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:3ca6680d8c73661525708b2ff8fea5bb9d3187e5da06cd9ff8434d0b349d2d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29207775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dcfe6118f9110776d08ccbc76db26ae4e0fc8cb77d7c30b75b7ebe96994e11e`

```dockerfile
```

-	Layers:
	-	`sha256:f2b2113d2b124eda4140a4440d79c6a00516e949467e3c194d2fa4d002f4c733`  
		Last Modified: Thu, 09 Jul 2026 18:38:46 GMT  
		Size: 29.2 MB (29190481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e802751654f182637a02428a7f64d3de2ea3695de58f6147d864929b405d519`  
		Last Modified: Thu, 09 Jul 2026 18:38:44 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json
