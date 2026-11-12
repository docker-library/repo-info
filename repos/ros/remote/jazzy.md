## `ros:jazzy`

```console
$ docker pull ros@sha256:00b8d47a6e6384a2834e3d01fa87ae767876543baa574f2d64a75c04ea33c698
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy` - linux; amd64

```console
$ docker pull ros@sha256:01eb40af8388bbb2292e6e4f2a2a4e8798fdc19c31f003e8b3bdd02ca9fa8aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299151437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa9f89c8f5e23fe80bda543a048daba8e631ff3c4202047ef4c2f782d8452c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:36:28 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:45 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:34 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:35 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b106302b0914b5f0dade7804e43027831bbe7fa5bede2ac692540a8bf3be0e54`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 683.3 KB (683270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88ba20c0189527460f2759f66ba014bc1f4527831b5879713d2832157be558f`  
		Last Modified: Wed, 11 Nov 2026 23:39:02 GMT  
		Size: 6.7 MB (6714034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18eec4897f4974fccc03873313fc5f7ef833e95341f2c349df0556f6439dffc`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 94.7 KB (94703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8131fdf7a318e7055cc478d5e5ca93c4b7e065f1e8351abde9f2caef99ac9b5`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 120.7 MB (120712622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2cb7fbb49263d88e3806c1ea64ff9fc57f51a07164578b99a07dc650042f85`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3395e3603f7ddee68e91a18b95ba0c2dc2ec54566fbf701bec32e93c38fa7c33`  
		Last Modified: Thu, 12 Nov 2026 00:32:21 GMT  
		Size: 112.6 MB (112646507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0420f9b38e85de01d2a4b79cec00e751eea05aa9cd2cb5ab57edecf0ca53442`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 410.4 KB (410396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab868a5642b733ce339cc22c8fd8af73e7dbf3bb9592a60999969eb4e59b3c4`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5eb3f320774966b4f8fd965818ecba12df997c8e27772aeb29bad69f058a56d`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 28.1 MB (28093822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:952ddcce8959b4e23fbda43eab42d2be16b53b48f503d7b4ae2891ee8c4d9083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24938249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d3beb103be65d35b0f6328693416d899aab98fe88f7f4c6547fbc3cb282763`

```dockerfile
```

-	Layers:
	-	`sha256:6bdc080dcb3b7c738b636c7ca73bfd43b09f906627a7053e638abced5fdc31bf`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 24.9 MB (24921920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46a2d31b41a57be2d934b21ab45122eef0895e52110b937ebf707bebeb3fdab6`  
		Last Modified: Thu, 12 Nov 2026 00:32:17 GMT  
		Size: 16.3 KB (16329 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ad26778b11c31291040e3fc2f9a395e6c9ca8b2b6a2b9774ba6737c2dd682bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285306311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c26aa902c8fd4c385171f04b924c18320ce60ff6257348c594cf56f577143b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:38:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:43 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:40:12 GMT
ENV ROS_DISTRO=jazzy
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-core=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a57db6e8842695b7ef637b1a626cc0ae9fc66d07071e987a6ba9b3ffe510`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 683.5 KB (683464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a328cb0bcee269bf7bebc4669fa81f3106a278b98c8db89ff3be33346abbb`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 6.7 MB (6729429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b073a3602413fe343a331a4717a723897fdfdab985a5005fbe3089e06b7b93e4`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 94.9 KB (94871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5befa02251315900577feaf81ce6bf60092080dd8b473c3d6cf05d4274d2fa68`  
		Last Modified: Wed, 11 Nov 2026 23:40:44 GMT  
		Size: 115.6 MB (115561093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321093a525f0bd40c1fb91f7443d65da6faa52b44cfd9024bde77fb1203aae4d`  
		Last Modified: Wed, 11 Nov 2026 23:40:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8670560089795a5c3e8249669fece65a0433b64305ebea60f785eff4b8300bc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 105.7 MB (105661168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8788447c4d210130eabf42ff4dafd20b067ca8eb394eaa5b1e272d8749e34b3a`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 410.4 KB (410398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05953adbbd11b1df84353de1f190643dec588f7ab8dac273c3a75e522ea96c4`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 2.7 KB (2652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d6c08929201b4108ea1a4752fb56f1d8016eea3e9e79cc8ab27e7aa12d286`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 27.2 MB (27197783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy` - unknown; unknown

```console
$ docker pull ros@sha256:82f41ec8e99c4626d33112bd31c78f5070b5a68c4921f1751de54ae14135b753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24960640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d34d203832a863b2696315a84720e3b234ca9b7032936d7c0b956fcc0885e0`

```dockerfile
```

-	Layers:
	-	`sha256:0d770d6c4e4dd2d828e624f922c749a0f5c56759f62bce35785f72d430bd5c30`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 24.9 MB (24944175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:997b3c7822098da997c5c91dd08211a96e4af906c08bc303122df8248ff3e06e`  
		Last Modified: Thu, 12 Nov 2026 00:47:28 GMT  
		Size: 16.5 KB (16465 bytes)  
		MIME: application/vnd.in-toto+json
