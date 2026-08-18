## `ros:humble-ros-core`

```console
$ docker pull ros@sha256:ebae805c9d985e443b26e13a47339098dc0a42eee4626055bfd4ebc6dcdb4988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:32bf718e63618482ffb1fe232cf0f834635c57162e2506fb0bc0b092ef776c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142135412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5ad5127e89bc385629e7ea946698470d62a8ba94b880f9e79b4a3d49f718dc`
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

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:f58063bdc1e8b185c184580f2a0a76b7204abc6678235e2ff1f63469742d8ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17941669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c753ecd357d466e8c13e60e6ac4615a03dd77521382cef067d008d7451a915`

```dockerfile
```

-	Layers:
	-	`sha256:c888b287b7243418af2a29e442b7c40322c59353ce9211ed5bd53e49fa29537f`  
		Last Modified: Tue, 18 Aug 2026 01:21:03 GMT  
		Size: 17.9 MB (17927043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52ba9a75cb68703ef7f3bf4175bc54b5a3f8b5a7050f04f8c4ecefdaf78546a0`  
		Last Modified: Tue, 18 Aug 2026 01:21:02 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:28d5cb5b632863dccd57264d36f8d0c472c7c6457a85211c4ad945d056e26350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137754054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c43b51ce31884c39cdad2a12aa861403a5d5c8afe373b259dd9223ac1dd455`
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

### `ros:humble-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:600561b1f528d3dec6c669b6209a982f0cbaddb3e7998fe3e7354f8cca4050bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17928139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed4c73853c25733fca757bd1bee69f3b5fd168064486898672f5ff519525b96`

```dockerfile
```

-	Layers:
	-	`sha256:73c82711e9688ff72378e01653efe461b64c68f2693720f1632bca724b9f1440`  
		Last Modified: Tue, 18 Aug 2026 01:20:42 GMT  
		Size: 17.9 MB (17913388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:490c2b160e9112b407e97d7f5800276e49d4b879645e9f621103a85289acb2ab`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
