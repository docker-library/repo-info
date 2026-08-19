## `ros:latest`

```console
$ docker pull ros@sha256:0eea195bb91662a7dfbd6c6b026c209aef1d091e55ce37733e54509580ddf2c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:a9fa072c47b0672293bfe097312f7c049ed307a609f35fa696dc9122cc2dd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (339950380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eeea468a4b632538a2fced270da1581024b0d353e27ab05e4cd23644193fa7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:25:23 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:34 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:37 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:24 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:24 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:23:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:23:57 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:23:59 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd83af6614a5b13c17d6d8e41a9d7012d99da516019fe94a55557591e7c96d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 740.9 KB (740854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa249b4e42c9737d13cdb13f33e7c2a30e13f6f7d842c23776c510b9b11a7b`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 9.8 MB (9785086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8064ec94b9ba62dc0e606e0bfc7009e288817d54567b7f9b3082c76fe3a0d7`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 91.0 KB (90995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdadb8164ef34dc8d1f0c8b099f64c0558729cfbff4e140c3dd42ac01917fdd5`  
		Last Modified: Tue, 18 Aug 2026 19:27:06 GMT  
		Size: 136.6 MB (136649760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b504e590d278de3ef278bf67cf9f9c3b5c261c20fbdada601afd990642c47dac`  
		Last Modified: Tue, 18 Aug 2026 19:26:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2e281d2e44dc1e537d5fda1892e584ecc726e9693198a06482c7c12d851ec2`  
		Last Modified: Tue, 18 Aug 2026 20:25:13 GMT  
		Size: 124.9 MB (124867017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d087581545923299aef50324414320bca28b470a7ce8b8f46f30d8bbd6e19740`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 397.6 KB (397584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed30f12d90c1f9675e31625c80a6812eae859bfce54676d972491e76f1d39b`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 130.8 KB (130814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1aa00b4002d75047dc9ab085f6b2dc473f8dfc7edba9cb096403ecc92f6631`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 25.7 MB (25718478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:2b6c7663dd1a7cc7275b82049aa5caea595390060f821ea41019943e66e63630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29157694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3503af8dcab5c91f81284c3b2a2cd40b006c8090ed6f4fe9c7c287604a729a28`

```dockerfile
```

-	Layers:
	-	`sha256:26d9ce1a2be7838b12e670d840344dc2767a05ba57ae64096c0aa25c61b55d82`  
		Last Modified: Tue, 18 Aug 2026 20:25:10 GMT  
		Size: 29.1 MB (29140244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8239ce12d28173728f0ccc0881030d1c3fed48d1b5366c28cd9eef68953b50fb`  
		Last Modified: Tue, 18 Aug 2026 20:25:09 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:642134928aae468e42809da31ecb24cef49dff3ccb3aa61d2f5fbf5efc41a149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324650059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8334f047f4d7b2f1f8c5e90e087e96ce30714907ae1a5fceea1f8558c1aef5f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:25:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:25:49 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:26:39 GMT
ENV ROS_DISTRO=lyrical
# Tue, 18 Aug 2026 19:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:26:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:26:39 GMT
CMD ["bash"]
# Tue, 18 Aug 2026 20:24:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:24:23 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Tue, 18 Aug 2026 20:24:24 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Tue, 18 Aug 2026 20:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-base=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b921e434dfa079b383e90b31a7d4243e1aa26d056a70523bbbb586295190591`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 740.8 KB (740810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5775e659b1f19b516875f0d680bf4eb76b5ecd6230b247ade9e05360cf4a2e95`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 9.6 MB (9609571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572a9c36105f4cdef4b482f6222e9bf3a11962298704e2b7dc534e9c8a47d1ab`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 90.9 KB (90930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66b7a96d8cd25b1b1c69c8d265c0bf0b6c08a6984512acda5863916c034514`  
		Last Modified: Tue, 18 Aug 2026 19:27:20 GMT  
		Size: 130.0 MB (130036502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2e6f15aea91670b8a5b7e5d4e2c86cd968a461a11ab13f8bef36ffda91053`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159c6e1176fffbea293ba58a661d6ed8435c7edbcbb0c479ff2c97ea8a276d68`  
		Last Modified: Tue, 18 Aug 2026 20:25:33 GMT  
		Size: 118.3 MB (118276339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6181bae841e34cf3df13ed6095fb4cfa9b4f9a0eb4c021842886a71e5bd5131`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 397.6 KB (397598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c98d9529fb46a1be74cb6a2681b36d16d11656dbb66233ac58e068e7ebea1d5`  
		Last Modified: Tue, 18 Aug 2026 20:25:30 GMT  
		Size: 130.8 KB (130809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683c76d3ea6f39e2123921eab5e2bc116447f0245263227beea75cfc5830f088`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 24.7 MB (24670488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:latest` - unknown; unknown

```console
$ docker pull ros@sha256:77b13ea101c4dde073771f5ea560a54ae144d3bc466264affec4da3688e5a3ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29222474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a5c90f8d1436108476b4c1f6acf78e85a4f6bf3d965d4f9970078229df0db1`

```dockerfile
```

-	Layers:
	-	`sha256:3599572621f057e6573917d7d0d09cc7e9f056f2b8ec617465d2eef49899d990`  
		Last Modified: Tue, 18 Aug 2026 20:25:31 GMT  
		Size: 29.2 MB (29204876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aab76041aa43156b947e3a01e16233604e5edefb8a68a85fd7d959d15f5c74a`  
		Last Modified: Tue, 18 Aug 2026 20:25:29 GMT  
		Size: 17.6 KB (17598 bytes)  
		MIME: application/vnd.in-toto+json
