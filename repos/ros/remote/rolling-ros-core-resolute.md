## `ros:rolling-ros-core-resolute`

```console
$ docker pull ros@sha256:94142b69faa4f681e8bf91e57c67627847a3c184bf7e68be7d89940e5732f582
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:rolling-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:383236b86d3744df5b5d9ee50602349013894eefa6fae14bfdf96c55d69df125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189012328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5952b0c35cb72dc578748f6c5cdee9f7d4534db0f9d4edfb9f113056037589`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.8927.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:04.617438+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.8927.tar
# Thu, 09 Jul 2026 18:31:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:45 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:50 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:39 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9be9fd915e97ef977c92b5f9abe226548f0d6a4a013daef6d238708ccde9b61`  
		Last Modified: Sat, 27 Jun 2026 11:14:32 GMT  
		Size: 41.6 MB (41562253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1ce1d0a589804cc5314c1325593106b364e9d700502a06de710671c7697220`  
		Last Modified: Sat, 27 Jun 2026 11:14:36 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd9736410bb40108876923c8dcbcba85cb8d3ec8337e560c2d54aadd7bb3c25`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 741.1 KB (741122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5082b43aea0ccdb69c0d6eca5e7f087cfe0997736388f3377c70a110d91d7a7`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 9.8 MB (9783239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318fcb55d879a2b15856745e8041151b266b9949849ba7ec3375dbcda88b6584`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 90.1 KB (90146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8a35699401a84785267b5d6abab0fc04715d5ce46638414ea357b5e03fcc8a`  
		Last Modified: Thu, 09 Jul 2026 18:33:25 GMT  
		Size: 136.8 MB (136834978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b87a864c43b37d8ddf6d9c1fe886a6fda2645f63c44e325e160549d8fa319c`  
		Last Modified: Thu, 09 Jul 2026 18:33:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:a72dfaa5e0feaaca146bed20a548266f8c71f3a4ab1372877075c1960e4d78a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22745448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a617106c3f643ed6ef7ff57f4755eb9c2d501e9f9ae795e13d857b1dd4a69a5`

```dockerfile
```

-	Layers:
	-	`sha256:9c280c15490fb72ac6b78441b55091c7144dcc20fddd9753973c296b213c1256`  
		Last Modified: Thu, 09 Jul 2026 18:33:22 GMT  
		Size: 22.7 MB (22729769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a4d6224b58c1e38ad1108251d82a7ab8bf7b01d727a764181371cf11a2025b5`  
		Last Modified: Thu, 09 Jul 2026 18:33:21 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:rolling-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3e8046cd2162ef4ecb07130e6728e9033076bf5a125b701acd3e7c4bf62109e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181352537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1ce973cd9b215acfb17102a32ce41965fd5b8acaf2c88b7ed181cda29b66c3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Jun 2026 04:19:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.9127.tar --tag 26.04
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-06-27T04:19:53.170736+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 27 Jun 2026 04:19:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-d5c39e770efe31df4a04e5e058b71b06/images/.temp_layer.control_data.9127.tar
# Thu, 09 Jul 2026 18:31:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:31:36 GMT
RUN curl -L -s -f -o /tmp/ros2-testing-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-testing-apt-source_1.2.0.resolute_all.deb     && echo "da9261ca7c06244da1528e0ede44018f7bb2e24a8a077eb0202f70706b578546 */tmp/ros2-testing-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-testing-apt-source.deb     && rm -f /tmp/ros2-testing-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 09 Jul 2026 18:32:27 GMT
ENV ROS_DISTRO=rolling
# Thu, 09 Jul 2026 18:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-rolling-ros-core=0.13.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 18:32:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 09 Jul 2026 18:32:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b2b4144bf8691339f4f1011754b5ed314a4cb9c03e57af4c022301022f36b79a`  
		Last Modified: Sat, 27 Jun 2026 11:14:43 GMT  
		Size: 40.7 MB (40711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0b5cbf7f1ac2f5ced1ed952e889f07199006cfbb44f6e2c7b85df005259ca`  
		Last Modified: Sat, 27 Jun 2026 11:14:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b212f396a8d7403086bea7814b524a8a476d936ea87bd795407c72f29c93c06`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 742.0 KB (742032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384fc61248925600a0cd688c6766d5dc8e9be47385266c4b9e57fcda86d2ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:06 GMT  
		Size: 9.6 MB (9607107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8fec7cbfae0c5b67babc22a87591ea889647c1cfa0271c4216e61c0b06b00`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 91.1 KB (91098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15cddbe9789e5807f02c1f44acc072e1cf22050e93b14b9a2d49e357e490629`  
		Last Modified: Thu, 09 Jul 2026 18:33:09 GMT  
		Size: 130.2 MB (130199952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baef65b99574c57f36722163f7eac27b5eace626399f04ae7e68236c167f196`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:rolling-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:0a248915ba5c99ca68fc4efeaa87b57d134cc380575e2963d0e1d21794481a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22718265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4190fc093b1b2abea7d7048084de4cfdc116e9b5c2e750bd286af2836237a6bd`

```dockerfile
```

-	Layers:
	-	`sha256:0006b207e6f1a1b333926df1328b8dc28fed7cda9437cf54b4f5caeb0c08ed1f`  
		Last Modified: Thu, 09 Jul 2026 18:33:07 GMT  
		Size: 22.7 MB (22702461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eb081232de26357880948db0da8711234f2839183f88b4f1431c06398008656`  
		Last Modified: Thu, 09 Jul 2026 18:33:05 GMT  
		Size: 15.8 KB (15804 bytes)  
		MIME: application/vnd.in-toto+json
