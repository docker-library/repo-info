## `ros:rolling-ros-base-resolute`

```console
$ docker pull ros@sha256:50c2d0ace849ef6f978c3395ad94f026c4c37e389c713ab714b99385982363c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-base-resolute` - linux; amd64

```console
$ docker pull ros@sha256:142d18acd141d73e80bb1ebf5dee181f74c88bd9a1e5c0fa2b4c59953cd8708f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344588780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab6dcd8a10ad0602e0f9d2959091e334ffc7e868bf48e1dee0897005ebb069f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:36:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:11 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:22 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53a3c4c98f916474971ebb3a804c261d70b4f6b93953c2d62b052d299cf385`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 741.7 KB (741743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a85b36a3142818e2b277c28b50dba5fbe8547aa69dbc4ceb7516b9c665e17`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 9.8 MB (9786168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1bcec7a5d0186a3a974aaff9be093c8b5eed99fe60d256f67784309d24056`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 92.1 KB (92071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a561e1b9dcb0f6ea2f5bf16460ff4e6ed4106511e0ae3ee5b115ebf5fa563f6`  
		Last Modified: Wed, 11 Nov 2026 23:40:09 GMT  
		Size: 138.0 MB (138007192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b2d829f1414d50010395b947940a61f81fc94e18607863b046642ddeeb424`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b42cd72caa67f5ffec3c1a9e59219f25dd442677c0d5d381a9156d9626067e5`  
		Last Modified: Thu, 12 Nov 2026 00:32:58 GMT  
		Size: 127.3 MB (127332249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf5a49175c378fc53e7ab1248529b7f0121bbee0ead61616dbf5aa1d6bd7237`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 368.6 KB (368562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea121cc1bcd4eab49697d9944d97bfd6c0d42e9f7e1a72a6f8c2855fa190dd4`  
		Last Modified: Thu, 12 Nov 2026 00:32:55 GMT  
		Size: 130.9 KB (130899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08caaf4b42723a447537bbba2e1c9da4df862349be0c0298f9496160ca458f3`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 26.0 MB (25962734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:8f813aaef48553d81dc8f52f17bfb84dd0a44c74aeee325f9857ecadac06e2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29362503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c9f9115c3b0b15c4c289044c1e104d3b2ed0ea690a6380bf0968cf1ac77a9a`

```dockerfile
```

-	Layers:
	-	`sha256:26a3b40d6429ea632610b7fb94c006087a59023603720055120905a96f43a1b8`  
		Last Modified: Thu, 12 Nov 2026 00:32:56 GMT  
		Size: 29.3 MB (29345345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:884aedd632f9f65cf0f7e7e3acf5d4fc850b9a7d98c7f0e7471f70d684c6c4f7`  
		Last Modified: Thu, 12 Nov 2026 00:32:54 GMT  
		Size: 17.2 KB (17158 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-base-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2211c7ff3a45151bc1f42de40c8f33568906539087c6fa8c7be745ced915dff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329073269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eaa737992c3eea420a48b115178ab7651be4fee909a3809208e7a8a0465ad60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:38 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=rolling
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:42:27 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:46:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:46:04 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:46:06 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-base=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fcdfb96d1f27e9e2a66bb4def4ee65e024ffb59db2d91033f43552ff507de6`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 742.4 KB (742354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c7ddca11d3c692d805a2db41a9474bdd183367c225ff12774a3388601f4acd`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 9.6 MB (9611407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef52e62afac8bde2923ef7dffee4b58605dc5b134f354f91302333880471f9c`  
		Last Modified: Wed, 11 Nov 2026 23:43:08 GMT  
		Size: 92.7 KB (92691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5961256ef3d29eedc4154a535d1e9137cb3f9039369d45193a15a5a8834da8f0`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 131.4 MB (131361086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83ced8a7bd494cf748412c735857e682d543b833175c3c4359c4f355084418`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2330b38e7e9b827c544f8d987d264b08e1c2eed56cd5b75166f02b97b16b60f`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 120.7 MB (120712898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e640fd78987efe4f104597fce1f2d142cfcc871d648b3a3548a2c3ebe48afe0a`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 368.6 KB (368555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8ab6b8c7d88993ea1322813ef02b5750328c5c7c9ab4cd7a57a54b3374702e`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26713c49719b44362ab3a6155f3d34c9ac753b798ef2f4eca03a45baf657da53`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 24.9 MB (24906995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-base-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:776ee0e1cd82a470e245cb3c54e034cf29139d862d45b3099cb265fdc0b29d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bd27ed3a9172a2343321c2b4e2cf95522c876b3315f25d5d7cc14069e81df3`

```dockerfile
```

-	Layers:
	-	`sha256:3eea7cbdb34d3a48a94f1b99f403357631b9ab7c94e389c8a1aa07993ece68ec`  
		Last Modified: Thu, 12 Nov 2026 00:47:58 GMT  
		Size: 29.4 MB (29409965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df3f8ce1042e37d8825ca53c75ed206eda93b073174495ca49570ef56f3f984`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json
