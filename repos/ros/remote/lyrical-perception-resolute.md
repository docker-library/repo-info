## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:7bab838ac339427781d5f87c8118ac099cc40854863fc53aa1c7bbded680052d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:5216d75da98bf97b885a515a5706cdb780d0c63108177a28f59a5023f2b50a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1792802167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14c7b5a5a11cef53ab6fee8559232fa8e8c8c4f86fd7c19d3f3b3d89c65d636`
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
# Wed, 11 Nov 2026 23:36:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:07 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:10 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:39:21 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:39:21 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:60221bbe2e0659e6b5891d1466f9cc142275a1602374ba7e995e6bca350d3dd7`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 741.7 KB (741745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d2c0237182c1837470535e1b546168b4db395d49f04df0364ded5204ebdc2`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 9.8 MB (9786214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c6272bc0a5987a65dfa0635a7217e270543bb15374475390a277bb3d3a0890`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 92.0 KB (92050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e84501f0c0fa750104439b9b45e10d1132af1da9a2a3ccf146334aff62cb5d`  
		Last Modified: Wed, 11 Nov 2026 23:40:08 GMT  
		Size: 137.2 MB (137244029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ad9fbdc32d151c9cd741089378ebda12b3379eae67455bf20da42164c97aa`  
		Last Modified: Wed, 11 Nov 2026 23:40:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6554467aa48e5594ff70ef0fbaeb49ebc98206540ee868cdcf24cf26e9c9a5`  
		Last Modified: Thu, 12 Nov 2026 00:33:01 GMT  
		Size: 127.3 MB (127332854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f8470c354621c8399408a42011a0aba2716ba8392108cd1c5b80ffdb02e52`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 387.5 KB (387470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70296cbcf95f84a035a7db0af51411f0ca6f9088901ba7096a567d229d8effc0`  
		Last Modified: Thu, 12 Nov 2026 00:32:57 GMT  
		Size: 130.9 KB (130897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6a64b3613986fe092926805d0134f337b8f0069fcc26bba8a2b6e128021386`  
		Last Modified: Thu, 12 Nov 2026 00:32:59 GMT  
		Size: 25.8 MB (25804694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55dd2d4224de45c9c5293dd477de82f8a96a1c7e964b05f666acf232a8d52401`  
		Last Modified: Thu, 12 Nov 2026 01:27:00 GMT  
		Size: 1.4 GB (1449115050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:1b64f014698f77eecfc74efc46e5f2f2b99dc400faf01279212cba6f82b2c47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64395666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79caff29409df4091d58756a800c3cc5bed05a92dd56f46e0f3606958425e572`

```dockerfile
```

-	Layers:
	-	`sha256:c1d3aaa6f2465bce0e6338db2d462d50cb26f41255dc334dca448ea9ebce1eaf`  
		Last Modified: Thu, 12 Nov 2026 01:26:37 GMT  
		Size: 64.4 MB (64385973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8add8af89e47988d6c63b08ea66d8b55a26ce4d7727c9308175207959ac9826`  
		Last Modified: Thu, 12 Nov 2026 01:26:34 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:622b8fa556c9566bc029cd77d3e5e20f11fab60a0b0ca41c4d776ccec81d54e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1700872888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bf8e4957ef80f142bd89e8bf30be7900784c1421785b80884d723af997fc27`
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
# Wed, 11 Nov 2026 23:40:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:39 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:42:27 GMT
ENV ROS_DISTRO=lyrical
# Wed, 11 Nov 2026 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
# Thu, 12 Nov 2026 00:46:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:71717636f83527c6e290b7be649838c9fe75a0463799f6e398f04068680e3079`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 742.4 KB (742374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75cccd79be80e4d5ea807bbd42d47fb8ae973fdd637ba49aa4715f63996e060`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 9.6 MB (9611468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d363e5af9c5c368822d35f7030498ab09889cab1e64fd0d4afbfd1a646f7c91a`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 92.7 KB (92650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1364cd23f8bdfa7b25d46c5f8abf784e204371b23107f328488ccfd660e0d1d6`  
		Last Modified: Wed, 11 Nov 2026 23:43:10 GMT  
		Size: 130.6 MB (130598885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52073ec93729187202e9feec534e3d6b8fb9d16ad83352d78a165d2aab04fd`  
		Last Modified: Thu, 12 Nov 2026 00:47:59 GMT  
		Size: 120.7 MB (120713742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca46ba46014fe31ab6673ccc6f638f479eefb27c5e3b3a90ac4ecaa97fe0a826`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 387.5 KB (387480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329c2962e827e0f114119908b95f2eea8b19d242d7c355f044e534e9f938b627`  
		Last Modified: Thu, 12 Nov 2026 00:47:56 GMT  
		Size: 130.9 KB (130883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1483096fd6998ebc184bf8702bfad57978c5d11cda4e39a404ba95530665c0`  
		Last Modified: Thu, 12 Nov 2026 00:47:57 GMT  
		Size: 24.7 MB (24744842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0579e1c64d2142446d863e89a69644815f7dbdf77a7e4925e1eb26aa78939f7`  
		Last Modified: Thu, 12 Nov 2026 01:27:32 GMT  
		Size: 1.4 GB (1372704168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:9d847044f9f574213e3cb98800e2586e16f381b62eb86b45946408a40bfd8892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64309964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87337f156b44679d342f68ab7a9657d647ca26246eeb13e142f57035b8e9f77`

```dockerfile
```

-	Layers:
	-	`sha256:c3460c68e5809d597c4f5db50d5e44b7f1d580fd3c14bbfa1a172ba2a6e9d9a6`  
		Last Modified: Thu, 12 Nov 2026 01:27:07 GMT  
		Size: 64.3 MB (64300191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bb87be45291b1660f5131615a93b967d5610cb74f24a32e2b7b218fa6562df5`  
		Last Modified: Thu, 12 Nov 2026 01:27:04 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.in-toto+json
