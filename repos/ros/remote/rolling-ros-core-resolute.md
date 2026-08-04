## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:5a4f4d2ce27f2e3062470d6e722b36b64191a1d45cce1e337ab4fa81c0f1350e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:a9e20ce7f2a36b79bf3000c4870f0f3e923c1dd430f48732e13f4124c0f03e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198815554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1110a028e4adb2ffb0b6cb1cbe99af42f683a17424e7c29ffa88efa43d7cfbb`
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

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:2c15e5410fadf5cebb5a241814ae54e42451a3bb989ff8700a86c09d8bab9fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22759975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72557e57ea0672feb383ffcec954ec6308440af69e3e3cb8720a5527ed75f73`

```dockerfile
```

-	Layers:
	-	`sha256:df98265ef41189972c9f844efb3324778c84c1fd5a047e0183c9014bf8b914c3`  
		Last Modified: Tue, 04 Aug 2026 01:49:18 GMT  
		Size: 22.7 MB (22744292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f326b1c04f2e62fa560c534db4ab830ecccce947cbf0ba096f12ab95cc0fbb7`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4620e86b7070408a07b6235d16ce659c490d05f252b5b02a643bd44fb6ba58cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191318601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9830ff68897361c5735a604ac8632509b107baa99fa25c1e5e9ab49eaa9ed0`
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

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:af4629a532c836a5516159c3b2ff327407eb6a337f294099afa9605dd9b8bbc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22732791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373790ae403d6b2fa0f20180d74c681565a368387e97f6977eb36cf5affc6294`

```dockerfile
```

-	Layers:
	-	`sha256:ae947175879f6043f79e9d5932185c8c2977d0ae3cd0dce98b97362f9604189c`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 22.7 MB (22716984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194028628a64af1727d1b702c398179d49b1bb1699c958be9c99b68064b6a0da`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 15.8 KB (15807 bytes)  
		MIME: application/vnd.in-toto+json
