## `ros:jazzy-perception`

```console
$ docker pull ros@sha256:d4ddced30a2702cc76ee3fcede69b77e19711bbd70a8dd07064ef53d84fea1bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:jazzy-perception` - linux; amd64

```console
$ docker pull ros@sha256:931cf52b486ed9553cb3438edd30b19eb368959c2073a5bacd20576a23d2c87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1084413391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71aa964d72ef26824ce8d3981d61c423e0891b242f0a7be4b32dfc3765c14c8`
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
# Thu, 12 Nov 2026 01:19:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:0e361e2ccba1363fbe7ea44adf9117893645ba21897ae9f79190d08a79420483`  
		Last Modified: Thu, 12 Nov 2026 01:22:53 GMT  
		Size: 785.3 MB (785261954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:0d65ee35db313fbc08ca9d0dfd56cd9fd97f2de1357b4ae6e7e7c9f282c69b7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61114591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1876e61a7d92cab4cfd26e21c0a6fb784dfb0f159e7eeb6549db42cb7b33b36c`

```dockerfile
```

-	Layers:
	-	`sha256:4c3704374e2a4eda87feeb0294331ce0cf418848ac9709ce1be84e99cc32c8f3`  
		Last Modified: Thu, 12 Nov 2026 01:22:39 GMT  
		Size: 61.1 MB (61105252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a445eae41d8102387352492bd87400b53d8b9722cbc4ed4f7831251c9e9e4f8f`  
		Last Modified: Thu, 12 Nov 2026 01:22:36 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:jazzy-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6847bf90bf9e9757ae159213a5c2e3f44ddd83db2159e7202edbda8c63016131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.7 MB (984737073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea0cf77208b78c199c764dc06682aa5ca3472ff037de902f6880c00651ca1aa`
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
# Thu, 12 Nov 2026 01:20:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-perception=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
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
	-	`sha256:517513b69f1f891a473acb562cb8a21340418aba5d79de197519c2f9970afec5`  
		Last Modified: Thu, 12 Nov 2026 01:23:06 GMT  
		Size: 699.4 MB (699430762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:jazzy-perception` - unknown; unknown

```console
$ docker pull ros@sha256:3f58b04243d595e46b6fb31d2b359f5835442f480f00b8757b1b2211ed2992d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc59d899420cf765faaffd592a5bc3fcf1e890d2a87e2b830d7cebadae4f8a8`

```dockerfile
```

-	Layers:
	-	`sha256:9765d6e00e697d941fed40546540153bb9e1e15b8e90b26b5a6e0b1ee106ba30`  
		Last Modified: Thu, 12 Nov 2026 01:22:54 GMT  
		Size: 61.0 MB (61035771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52f43045fb9c0985a4077686de648e956385fdd0755055cf703344a6c0b6ffb6`  
		Last Modified: Thu, 12 Nov 2026 01:22:51 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json
