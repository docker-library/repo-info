## `ros:rolling-ros-core`

```console
$ docker pull ros@sha256:c818a1211b5759e997d079f65c3aa1876f232ff27fc3e1469297c5e688a5f1d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:e8da1af2c1a6f40b9fba3abf5b18155495cbc34bbebf156e66b28f939e4ca860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189123953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ee7ad47ffa1c257189dba0a6a4459e9842f99708ea911c342bce4c1cb2d12`
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
# Tue, 18 Aug 2026 19:26:52 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:03 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:07 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:57 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:57 GMT
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
	-	`sha256:2de949f482232d3593fd2dd1697efa925ea175918c23f08a5248b23c13b6c2d5`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 740.9 KB (740879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a2e789b5e54d11693bc7637189d948d2cc614a8a69885a9a498d7e6cbf7ceb`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 9.8 MB (9785047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6b65dd6dbb32be1e3885c0ede0cbb1b6de5af464ee3586706f05871ff3f182`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 91.1 KB (91052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be233ce8d85df0b871e01e6ae34b0430587ce2afb298848f8b3870f93d3fa5eb`  
		Last Modified: Tue, 18 Aug 2026 19:28:43 GMT  
		Size: 136.9 MB (136937183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692df8fe4215858ed813e192585eab73720105171c0764d1cb07e7fc2845aa4d`  
		Last Modified: Tue, 18 Aug 2026 19:28:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:938a7c2fabf3819758755eb981c75fdfa78720b2de4b5e6618e60883b1b47505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22748287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee734db19ef42e7dcad6627d99b4943509b2d747bf64d914f63769ee44191536`

```dockerfile
```

-	Layers:
	-	`sha256:b1e66e82c913fbc2af7f4a46ff06eededfbe4487087deb9e3e728e45c4cfbb4f`  
		Last Modified: Tue, 18 Aug 2026 19:28:40 GMT  
		Size: 22.7 MB (22732610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:772d49dbdbf6998e0594740833b98e8c133b167b6d06225020f5c061a2af6a01`  
		Last Modified: Tue, 18 Aug 2026 19:28:39 GMT  
		Size: 15.7 KB (15677 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3556bde1577d79338c627d692c3e901f78eb007006b8a5bb981fbade81c83f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181444914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83325b790f3f3c4e0611544ea7d728cfdf97eca9a22c4ab8b7b1c66b56653b72`
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
# Tue, 18 Aug 2026 19:26:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:57 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:02 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 19:27:48 GMT
ENV ROS_DISTRO=rolling
# Tue, 18 Aug 2026 19:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:49 GMT
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
	-	`sha256:95c7cf40bae3dc17bf060190f3880f4f7394e3192651f5e1cb4886b06fe087d2`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 740.8 KB (740815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039c01d6f4f8b9185a0a4702c1fdc663d92fac334a8a55deaf8680d7fab94a75`  
		Last Modified: Tue, 18 Aug 2026 19:28:27 GMT  
		Size: 9.6 MB (9609661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b4e193ddde3780d22754bdd73a290df0726f9d279d91675ee251ad663e288c`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 91.0 KB (90987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f335b45f818e469b57623d232d7ab7ce6d378788a4030821dfdd82a6ac09b8`  
		Last Modified: Tue, 18 Aug 2026 19:28:30 GMT  
		Size: 130.3 MB (130306439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f163f0f9b2afcea0981d5fe8b76f675b33d594a2c3e34028970d560756fccce`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core` - unknown; unknown

```console
$ docker pull ros@sha256:16b7ce93e0c486404d700cb738c7b6aa036b26b725611e1c9b64e025faf56eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22721106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c753def48751764d16cbb12cd64edd4d94b64e574b3f1b1eb35c29a056f5bbfc`

```dockerfile
```

-	Layers:
	-	`sha256:046bd7ed09252562aa0818366445d219dbcaa46e3321a84e83e6785c545e187a`  
		Last Modified: Tue, 18 Aug 2026 19:28:28 GMT  
		Size: 22.7 MB (22705302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c73df33e566ac3e58ff8c01def14800ea42b5d522c29e88931cd7a20c73374a`  
		Last Modified: Tue, 18 Aug 2026 19:28:26 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json
