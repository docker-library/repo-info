## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:365c44cbb91820fdebf119b1d3704320985cde0be5e33c064f542e6decdd0108
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a31af4b62cc97239833937d505ac948594c05b8cce9ddbf149af699654a62c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190794336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbe7cbb4e79817f0efa7e048550e5e9b79ed225ceaf70924de29bf982b38ad8`
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

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:441be6720de0bf318d556ec07805eeb53bc0cf7fc3846c90ca6762cf33216b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22884209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c70bdfb335221b232b7258cf34c22cc8a3f20ea47ceee98e9ce3666beafa516`

```dockerfile
```

-	Layers:
	-	`sha256:6e1f269fda04ccbbe0685d0af8536c16e96f345153cc3a3819601abd676732a5`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 22.9 MB (22868530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5827308d14341877956a59a15ebd54abdf0de9dbe381833eff733a7f6a466f4`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f1b6d0d330bc5c3613aa516a3ed5b6a0b8d321610ddcd7d1367bb330f102e921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182953932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dcadd0970ed8a7c42ce0754976d89cd7deed75968fbb6a816e364d17899253`
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

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:9d0d556d45d7554ff6d0e336c93fcf630c6aa15802f34151554aa362e0a19da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22857025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c0bdbe43062ba4fb3427766886b4d48fdccfb7874e76d744449fa7b1c29e6b`

```dockerfile
```

-	Layers:
	-	`sha256:8f99623f486db638a8c5ea0f3ecdf051caa13262e5049c863a9567f1e5734648`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 22.8 MB (22841222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ac0ae017b863239e34307f4c9cc055208e3eb2c62eec3685a3576bcd2c8c6ed`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 15.8 KB (15803 bytes)  
		MIME: application/vnd.in-toto+json
