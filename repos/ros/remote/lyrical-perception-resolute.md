## `ros:lyrical-perception-resolute`

```console
$ docker pull ros@sha256:2dc78d2a1fac9bd898ce959cf980761d5306d3cfea3260bbd4faa5b3f463d266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-perception-resolute` - linux; amd64

```console
$ docker pull ros@sha256:8f3b0399c3867c38fa42161b94dfa3f6439f43244734cfb74968064a8311b432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1538090382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b8e9f70e9b924a78ce56aa9aec48438c796a2741e009914fbeb19ada5b83e3`
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
# Tue, 04 Aug 2026 03:21:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:592459462c3f3d2451197023f3c7b976336c2562ea6302a40d1c7327f80af8a1`  
		Last Modified: Tue, 04 Aug 2026 03:26:48 GMT  
		Size: 1.2 GB (1188506234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:cc93c8bd8e812293597d4efb3b51bbc2bbb236036b059ba2e0418609404aa04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64344282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4992c16cef962e2a26ac4ea061954064f118e17220695ff4b99d6a2ad0cd81`

```dockerfile
```

-	Layers:
	-	`sha256:273df5a2f36996e31bf11852bff37aaabec85f7eda6dc571c465e20cf7c21feb`  
		Last Modified: Tue, 04 Aug 2026 03:26:30 GMT  
		Size: 64.3 MB (64334591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4570e82f8ac60f4b99fe8ef4b8086055af43faa0650bcab4008ddee00639639`  
		Last Modified: Tue, 04 Aug 2026 03:26:28 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-perception-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2cc19facafb95ffc162e9875f21137f159f8d12fe6cc10d55053285879a5f5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1481368152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c40859c8b12521fd9983b386d87b0bb89da4f393e8e038418e6894cf3afa1e`
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
# Tue, 04 Aug 2026 03:22:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-perception=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:664bf46c3e00428b49494db88436c744759ad4a60ce8a29ca61d5b21ed764697`  
		Last Modified: Tue, 04 Aug 2026 03:27:05 GMT  
		Size: 1.1 GB (1146878316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-perception-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:608bac81a32cfc20b41b88673b817b5d6509b73c37c7ef98b8f5021537ec3ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64258584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed18a2ac07b2a177acc4f732a8dbc2c580fbf6fc4387c34f9130f4df21a80605`

```dockerfile
```

-	Layers:
	-	`sha256:fa9381b7559b22aa5ebd224b4a616128c9e7a5fb27dda1d2302d5ec809d724de`  
		Last Modified: Tue, 04 Aug 2026 03:26:47 GMT  
		Size: 64.2 MB (64248809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41d10c06da8aa5b89f04e4ff6d3325c2a3449fad6d628598991b6ca8386d8f71`  
		Last Modified: Tue, 04 Aug 2026 03:26:45 GMT  
		Size: 9.8 KB (9775 bytes)  
		MIME: application/vnd.in-toto+json
