## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:9ce7de35ea0556e3f2a8bb879b901bc2e48000803b14e8d918a8f462ae0522e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:e15cdd0d8c7a09be8957303924c6867c17b5df55dc59ea4d63dabb408847448d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188836487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9f708fad9a738727de59c82bc7f215eb91c21a8e6b9df9fd245683906abbd2`
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

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:da45ffbbb9cb105152151cb4cbae4d1ccb900c27db89a117faaa7bbb73f44aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22758849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a467c024d5799e456475eeb01c45366df1b2e0cc94653a752d61f6a29597f425`

```dockerfile
```

-	Layers:
	-	`sha256:a45d836d9c19bb900d6e8c30779468532df0e90a054c1875967969984f637a79`  
		Last Modified: Tue, 18 Aug 2026 19:27:04 GMT  
		Size: 22.7 MB (22743266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67aa8e45728ffe1d5175c7a50b36d498405524e1b369ac5f6021d3be6c8f05eb`  
		Last Modified: Tue, 18 Aug 2026 19:27:03 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:628c7a1b7010e71f2f3746a9ca95fe6c57d29fea68cd2d174fef6f9ae9906357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181174825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ae569cb00889ef6756b070488f07b23f3bf414d08b319a809ddb229740336b`
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

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:b5cf3f46a7cbacab3b62bdbb2624e13a02f4fdea4c472ac9bb7261c52fd0a3e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22731666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c28c4651210bba3327a98ae3fdd45e1be784fae0a7101acb66b39225475b57c`

```dockerfile
```

-	Layers:
	-	`sha256:a3f89d5f28c8eb4a305e88a1dabfabd7663d9e795952bb25a52c1840a8a8c233`  
		Last Modified: Tue, 18 Aug 2026 19:27:18 GMT  
		Size: 22.7 MB (22715958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a445e014d71a937c60f06fc55039f9b11a70bebdab178e41c9de5b58374f0f02`  
		Last Modified: Tue, 18 Aug 2026 19:27:17 GMT  
		Size: 15.7 KB (15708 bytes)  
		MIME: application/vnd.in-toto+json
