## `ros:humble-perception`

```console
$ docker pull ros@sha256:b42ad9b3d502dba15fd27294797a1c39eaf01f448e6e0367b0dc48d43a17502a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-perception` - linux; amd64

```console
$ docker pull ros@sha256:a4e6bfa5aa6d627205c0f3720459330624b6b704a89d076d9e61f5b188e9ec23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 MB (956106888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c71ddf5ab316e77ebbe4eccd95688616941d5a72e0565013add84dd506763d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:38 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:51 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:57 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:37 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:37 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:02 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d311ecb7e584805d8cd869edf21b4b55f13f014bb4c675f8d4ecbe9a5689dc5`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 1.2 MB (1212482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df817f7955be5ff3a68eb174cbbcf3dbeb5a525e629325d6b58a5b609b8292`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 5.9 MB (5949747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e782053ab61940cafb73fbbe8124b43cd64ec693300fb54b4cbe5a7b67780a52`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 97.6 KB (97575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2047a400df95fed08fe74cb603832b14fa54326928064ca0b5d0aa7cf80c5225`  
		Last Modified: Tue, 18 Aug 2026 01:21:06 GMT  
		Size: 105.1 MB (105138470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de282407801be949302128766973334099f0da822c287939de13fba935db3137`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05637bbf7e18fd22ee2e2e2cd9493970a956d1f7decff15a166bf15c1a79be8f`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 98.2 MB (98161135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbebfa038f744b0afcd3da141042631592fe9713ecb4e4d3defb99942de5a6e`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 385.5 KB (385487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffda27a0e7dd750b0b9cb5c74273e39bf7f57aec6b52d66d92e7e6541e27f74`  
		Last Modified: Tue, 18 Aug 2026 02:17:55 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e85ec641263a52d03dcc2662ce6a16e6fd1797f0611311140c72c515946673`  
		Last Modified: Tue, 18 Aug 2026 02:17:56 GMT  
		Size: 23.3 MB (23348363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cedd2e83b25268e20ef6597ec0d397d6c69a015c92062b56f7dc95f8f452911`  
		Last Modified: Tue, 18 Aug 2026 03:15:47 GMT  
		Size: 692.1 MB (692073992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:5255052e8b8e343ed863abe633f6ceaf6734ad70c9b93cb9b0b144d011599d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59078947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dc1a46bbee46f5144dfa4c7bf98fb47e4b378797618f4e4762aebc25c421b4`

```dockerfile
```

-	Layers:
	-	`sha256:088b43b0cdfcaa98d9fdf1e024af191186ff83d931aead5aa5c11ff1c2222dd5`  
		Last Modified: Tue, 18 Aug 2026 03:15:37 GMT  
		Size: 59.1 MB (59069595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6776fbf073eb6770b4a4da1e8200f461e1d993ca9b995025d42cd86bfee058`  
		Last Modified: Tue, 18 Aug 2026 03:15:34 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6ea1821c233ed990659403f878edfa1fedc3245be612c92e5ab1e58d7353ce42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **916.8 MB (916830897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c5a9b1a6f37dfefc5b71feb31f4c28ac79a66c5b2de9b50bb6890b1ddf3561`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:16 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:26 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:34 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 01:20:15 GMT
ENV ROS_DISTRO=humble
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 02:16:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:17:01 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 02:17:05 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 02:17:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:13:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-perception=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea2b692952962172cece539476cb4c365d0eb0f1ed109e85b640d4a64a12d1a`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 1.2 MB (1212561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd42bf15dc504c756132eb8cd4a60331d411b1db834dd84d31c69627ea28b93f`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 5.9 MB (5909620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bf398572a9e5a03b7477604aaa8c6049386bc1c0a5128d8ff3bbe0b8c69fb`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 97.6 KB (97602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62adfc7206d98c082f24577ae9b227079048a8be5870905b7045a9524ffbf2fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:43 GMT  
		Size: 102.9 MB (102913623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6731f78a3a4be8c02e84d1c2fc9e0c44a409a60d035fda492c66885ce001f9a`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e2cb5f792be57c74ebb5d05e2c5a65dd1ebf7716f29534440f8d96f76bb49`  
		Last Modified: Tue, 18 Aug 2026 02:18:00 GMT  
		Size: 95.8 MB (95798064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3acdfd7b48cd2f5c4917376714c0dfee347d182acdeb162e96f01484d7cece`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 385.5 KB (385496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85261beffdc45189366207cf799aa19cd7f7149d2a580ddda85949b33966497`  
		Last Modified: Tue, 18 Aug 2026 02:17:57 GMT  
		Size: 2.5 KB (2512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f0891823154b21cd3f552a9425761fb4be0bdc04e592f40a8500eba3d25727`  
		Last Modified: Tue, 18 Aug 2026 02:17:58 GMT  
		Size: 22.7 MB (22743920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbf570094045de76cbf5bf32c339dbdb99f8df348a2a218a599f3a35b6e6e23`  
		Last Modified: Tue, 18 Aug 2026 03:15:54 GMT  
		Size: 660.1 MB (660146851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-perception` - unknown; unknown

```console
$ docker pull ros@sha256:b307b80d439148e903b7b639449dcde5ace4914b4229eead2147b678c90ba613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59063352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c8a1639f5115106c73180fa9947e5706108b24aa6219730d089eed4d4729d9`

```dockerfile
```

-	Layers:
	-	`sha256:7248931284f649c7cdfd380d538927d75512abdbd9e1275ba73aa90f6a91be45`  
		Last Modified: Tue, 18 Aug 2026 03:15:44 GMT  
		Size: 59.1 MB (59053920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ff0bde93a7aeb882566a5af6b8533949798168c8130fa858f330161d6b6ec1`  
		Last Modified: Tue, 18 Aug 2026 03:15:41 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json
