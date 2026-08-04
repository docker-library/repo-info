## `ros:humble-ros-core-jammy`

```console
$ docker pull ros@sha256:5e1a11c7e8a4044f382ec13cdeda6fd414d02ccf251a382f5627fae8c2247f81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-core-jammy` - linux; amd64

```console
$ docker pull ros@sha256:46b9ba608ce647ddd5c4dd0e7b41acbe9a9df490bbaad7a43637154c41d77f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142102925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcf37096e76a763f0c76758e56afb37068480a4825e5fa460bec0d1ffb32caa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:45 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:43 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77da4fe5aaf8a10916d28d70ae83b9984daffc53397583cf7804ca30365a047`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 1.2 MB (1212330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b0742485fab751e31372fff86b1a5e125f0fb40844db84d17c3994b5a766e3`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 5.9 MB (5949651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679797a3685e4691860198b6c1d08e5aa67c9f98fa1cced97c570c3cfa512f93`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 97.5 KB (97502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ab66f5cc8c2304b9878c94d0a9558c7e245bcfd32e949d002b77d943ae662a`  
		Last Modified: Tue, 04 Aug 2026 01:45:13 GMT  
		Size: 105.1 MB (105106729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e3252c2ab045092004c8426c151e6b3a44435491de1dcbad7b2627351c1bc`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:0a3412da49002b32f6934d7462d5342409ce29c0daa66bf99a16c3801a5646b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17927281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b8b93bfb4fbfef6124ce6c57d0d83e83d3a37f2e5f19471f4374f1804dfeba`

```dockerfile
```

-	Layers:
	-	`sha256:32f6b0657d202f2374ce248352703c9abc459f21662459b2a94ab7ebe776676c`  
		Last Modified: Tue, 04 Aug 2026 01:45:11 GMT  
		Size: 17.9 MB (17912655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7940bd6b56aa82e5db365f9e9f9240037da16498c4f527651767ac16a1a35e48`  
		Last Modified: Tue, 04 Aug 2026 01:45:10 GMT  
		Size: 14.6 KB (14626 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-core-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b97c0cda893b7752861f498965a25bc17a27b7efe287bb5685eb1563895a1181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137708961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:650d199698fcb67cb5b067bab626a96468d516e622cd471d4a2bcc23bb439127`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:40 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:50 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:44:39 GMT
ENV ROS_DISTRO=humble
# Tue, 04 Aug 2026 01:44:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:44:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397de6fc09eecd81d8ae2b8e05788b455df423dfb7cf0efbb5e35d1c7867ff7b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 1.2 MB (1212522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6136372b5d0d1b9d1eb0f51a9016ec7fe78c0c6a195c095eace51355d8b2e4d4`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 5.9 MB (5909577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3332509bae527aa22cc96b9949aee9a387e8dbb49eb5cdec0a0b8c971b9a4b`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 97.5 KB (97547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ab4e46694818cfc738f0db28325c7cd140b13727d7199c414719e55530a3c6`  
		Last Modified: Tue, 04 Aug 2026 01:45:09 GMT  
		Size: 102.9 MB (102869088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8e59594932430fe58eb790d3f6cb0c4e482a0a5fbeafc42cd4a2f5a473782`  
		Last Modified: Tue, 04 Aug 2026 01:45:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-core-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:eaafe6d65e0a0862e69a36f40bc1b0757d06e1a90bba34556eacf243577c7fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17913751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c71eef601f30d44ac8c60713cf00e500d4273b3a65763a404487c64ca29c47d`

```dockerfile
```

-	Layers:
	-	`sha256:bdd4da65bd839e6dc44a20305796bdfe66ec5c0c919ae3b868e84b2a709a5ee0`  
		Last Modified: Tue, 04 Aug 2026 01:45:07 GMT  
		Size: 17.9 MB (17899000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da5f8693a3b0b770729698e93a631b2ed8187bf6b8dda6e75618688406c995cb`  
		Last Modified: Tue, 04 Aug 2026 01:45:06 GMT  
		Size: 14.8 KB (14751 bytes)  
		MIME: application/vnd.in-toto+json
