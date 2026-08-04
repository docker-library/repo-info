## `ros:lyrical-ros-base`

```console
$ docker pull ros@sha256:122a787d0eb7e1b2c18370e35ef394332db5c11d242bea6f05f2b2911e26b04d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:62bffdcbb9e5e2c74927376fa8233af14a0b1eb4c99c9e7f76e8221ce7c12a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.6 MB (349584148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75647cb72dca310891407beab365e98da8c118c816f961471cbfb5e38b960756`
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
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:06 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:07 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c0d835ca75ed1a967312e8662610125cb7a43615bb97092ad9a5ae2d4cbd30`  
		Last Modified: Tue, 04 Aug 2026 02:33:25 GMT  
		Size: 124.9 MB (124864778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecec3ba10b5d53b6d6f973b1b0ba83e181ecda6eb84eec26e5cfedabe76b3ea5`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 391.5 KB (391478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9992eaced8df4d58d760679631ac39a975c3db4683740ec6abfe09a0592268c9`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 130.8 KB (130821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fae1ae93a6ab3e89d152e4a7c83c7abc2e9774fd74d2f6a82e56448aee965b`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 25.7 MB (25713447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:6bd02f2b9e6effa020e242ccb51a81cc481fdcb9ef635a077609ee2d36b8f87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29141313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0c31d3d1f6e5fbc026679e387fe04209587e41d092d5d6d57c616bfddf4155`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaf0458c7469d1b65c60b8d1ef041cf1891abe64f2f5453cdbbe438ea5b6be`  
		Last Modified: Tue, 04 Aug 2026 02:33:23 GMT  
		Size: 29.1 MB (29123858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cee27e3df8a09b8e2faba93dd4eba88c3466cf863b4c9a0467b9026c76e1415`  
		Last Modified: Tue, 04 Aug 2026 02:33:21 GMT  
		Size: 17.5 KB (17455 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:682edf3ddaaa7b22e249a8e0577e48b534adc81ba5f3582b3beefea586961bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de21c3cf913d05da39d2c77e18e6457a417833c8bd13fbbbb2fabf8b1f3e5927`
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
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
# Tue, 04 Aug 2026 02:32:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:32:39 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 04 Aug 2026 02:32:41 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 04 Aug 2026 02:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a205756ab51571acb1f26eff5ff53fc0a4188915f490ac4f6f1211e32c65a8`  
		Last Modified: Tue, 04 Aug 2026 02:33:55 GMT  
		Size: 118.3 MB (118277863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38d55127cf04815689f8ec64dad3e52707ad363311a052aaf33b937962f103`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 391.5 KB (391479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b743f32fdc2babce47adab50b337298a989d3e0a7fb3538057808d9d061bc`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 130.9 KB (130856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7823d736187e004a9d4accc28390ea83d249b2f3a2440dc3a2b6b2fec985e4b9`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 24.7 MB (24661440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:3dab886b2fb00d773b88f2d922dd662b57585704342c73683b07d85191ce4811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29206094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5618ba548816601ac25f7e2bde589787e0eead1c74fe31289a815ae9d379f8e`

```dockerfile
```

-	Layers:
	-	`sha256:e2f9be4571a10d9b155272d92fd449ff8715038275b1bc273e7f91d1a0b687d3`  
		Last Modified: Tue, 04 Aug 2026 02:33:53 GMT  
		Size: 29.2 MB (29188490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415223d5ba681c23764bc4d66428476ad9b73c8cc5c2599243d6e5df0fe961a5`  
		Last Modified: Tue, 04 Aug 2026 02:33:51 GMT  
		Size: 17.6 KB (17604 bytes)  
		MIME: application/vnd.in-toto+json
