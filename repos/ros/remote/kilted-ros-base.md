## `ros:kilted-ros-base`

```console
$ docker pull ros@sha256:e03695c26eef219f86068a6aa6151fc7ce58b7afd677fc4f82df748dc0acc4a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:997d81e0fc8170f37ea1a6dda2387ccb8e267eefe2074c4e914e391762c6050d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299599628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9895e80d5c71fbf5f6458442b6242853b8c875e089d9a166197293acf35b4818`
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
# Wed, 11 Nov 2026 23:36:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:38:36 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:38:36 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:30:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:30:38 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585496a850accca1820ff7f8fcbd461f9b2925a8c10cda4bf7947c56fd3ecee6`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 683.3 KB (683274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b856646b00dc4dd9e5633171264d15fbbbf4f3c0112ed91ed9b6421cbb868ba`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 6.7 MB (6714004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27031f5c86b8931e052c091cb8cd310e8e50d4608a98bc8def0b6f4ea053ef0`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 94.7 KB (94701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bbec03baa5422c48738fb7dcc7fb8bb865a5f64fe48b5f84b8aebea112725`  
		Last Modified: Wed, 11 Nov 2026 23:39:07 GMT  
		Size: 121.4 MB (121384327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ffdee8c38e80a943a231f36bf4a27e6773c6daf55d9b76dc87e8618991e393f`  
		Last Modified: Wed, 11 Nov 2026 23:39:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2323a4e0b8bd87e771f0ceb241f28df481ffe7dbb45ccbfbc4b758d0db9a4ae`  
		Last Modified: Thu, 12 Nov 2026 00:32:22 GMT  
		Size: 112.6 MB (112648602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3839b964b3d049d5d47e6bb12907f4b961918d8088b9134180c98f9a5a8b1`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 359.4 KB (359416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af70f10fbdb0b2ea40023936885cdef171b68eb86f6865f39831bc0cecae59`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83eca38d03f17e6f749d8ac0fed86e342d39809b1e253986a9aac1306ceb2032`  
		Last Modified: Thu, 12 Nov 2026 00:32:20 GMT  
		Size: 27.9 MB (27919225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:7a345c873301c2529cd091bdb1ff2bde652a2298921fef941b83ee8fb69a8f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24892475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d32a3d0dea876dfe5ae4e44a7a2e429a90dd9450dda0e7f53a2647b3605286`

```dockerfile
```

-	Layers:
	-	`sha256:f6d1ad603760eea42c924ce24148f272e5476fed17bcd845016258d20c99ab0c`  
		Last Modified: Thu, 12 Nov 2026 00:32:19 GMT  
		Size: 24.9 MB (24876128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c039bf2fcd8ec461e8eb241c543ca120abcfb6065169464391cc736f2fa1462`  
		Last Modified: Thu, 12 Nov 2026 00:32:18 GMT  
		Size: 16.3 KB (16347 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:223bd427a9d06e49794eb72058735c06b9553b2b2deefcb06275e29db929828e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285719584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6fe87174c876b040695ba2b253f41bf94c47d063412efb928038f60cb415306`
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
# Wed, 11 Nov 2026 23:40:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:31 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:36 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 23:41:17 GMT
ENV ROS_DISTRO=kilted
# Wed, 11 Nov 2026 23:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:17 GMT
CMD ["bash"]
# Thu, 12 Nov 2026 00:45:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:45:53 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Thu, 12 Nov 2026 00:45:54 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Thu, 12 Nov 2026 00:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-base=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efc703f67013b74ded7e7804aae8066fcdbcd741ba5fefee09132368bd85b48`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 683.5 KB (683475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aed8aed556862c85b7cfffca1df391c25f584d77de7b1d9a806abbad90abb9`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 6.7 MB (6729403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ab5f623510f1c64257461e9e5d7886af0f0fe1d6e379842e3e1e13bdeedeaf`  
		Last Modified: Wed, 11 Nov 2026 23:41:46 GMT  
		Size: 94.9 KB (94867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0c28ce0906a77821bd88137a79325138c3c07aa717b80d89f11274bcba785`  
		Last Modified: Wed, 11 Nov 2026 23:41:50 GMT  
		Size: 116.2 MB (116190168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1f07ca58dda65e52edd83b0d2c82f0751a7006a24fdaabba087a588cf8912`  
		Last Modified: Wed, 11 Nov 2026 23:41:47 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfd89345c28b97657f5a8d05d347d8d0eaac711c5b83ee7894f1d32fbb661b1`  
		Last Modified: Thu, 12 Nov 2026 00:47:35 GMT  
		Size: 105.7 MB (105663392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aabeec6dd0f020f039a5da19fd8ef0e7e4fd487e7b52c3bd5e1f0e6b0c3e66`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 359.4 KB (359414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1662c07b1d22be460488d07f2d67bfc433d4c752860c234da78d6c5408b4a621`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca6a4eb677adddc890981a702724d366ea9f249e71823c8a0dcec5a2d7ca3fb`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 27.0 MB (27030752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-base` - unknown; unknown

```console
$ docker pull ros@sha256:20a9cc42b664678732b971a441e801d2a922c5277d927e7326654c85fa2c6c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7895c90974dc2d0bf9a6b743d8afaa32acea301b9455f136582b123e8b30c76`

```dockerfile
```

-	Layers:
	-	`sha256:df2492de52655cd9cea7c7e11a61d8694bab65386b5b7701bc3adb93c7543cc5`  
		Last Modified: Thu, 12 Nov 2026 00:47:32 GMT  
		Size: 24.9 MB (24898388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a342ff8be8c5dff33508b82d7f33c4231969152a4760d2361409b666941e22e7`  
		Last Modified: Thu, 12 Nov 2026 00:47:30 GMT  
		Size: 16.5 KB (16484 bytes)  
		MIME: application/vnd.in-toto+json
