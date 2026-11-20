## `ros:humble-ros-base-jammy`

```console
$ docker pull ros@sha256:a18afd4a42ad603579d03b9012385dfeaf2e848423f0a6c41699766e7849c86c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:humble-ros-base-jammy` - linux; amd64

```console
$ docker pull ros@sha256:82a392264742a757c697c11b2ec9967dc856f60c87bd14fe2e889b0b767bf1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264530282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d9cac9ed967fbd5501f93c2e52b595be2cd85e4a54a0d1f0058bf7648d6da19`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:41 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:48 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:52 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:30:27 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:30:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:27 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:25:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:49 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:25:52 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:26:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd66fcdd35c1c0e7c55370dda64e2ce38a9dd0555069440c43e706fba574dabe`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 1.2 MB (1214950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5509c707d84c2229a1d03ce0161c933e7337442c72533d24c3fcae135ad20197`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 6.0 MB (5952919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ee1fac6c7b4715632f9d7feb6e2ec4efe428db8dcf84625883db08411ef65a`  
		Last Modified: Fri, 20 Nov 2026 03:30:51 GMT  
		Size: 98.0 KB (97953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656e27b69d437c8ea329aa7e87afbe0586b5abe963f62dfb5d9016dbec2319d8`  
		Last Modified: Fri, 20 Nov 2026 03:30:54 GMT  
		Size: 105.3 MB (105260026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16776ebecf23414a919177c423aa3c12f2dc2a2b196bdb718d92894eac61e796`  
		Last Modified: Fri, 20 Nov 2026 03:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3257cabf06cf30d395b4a38e05128ad640a008a99fdfed4e68fa6f0923a3afb`  
		Last Modified: Fri, 20 Nov 2026 04:26:44 GMT  
		Size: 98.2 MB (98203761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac52be0be6cf37cc0544d25164d9870d7d13636b0d4d70933c2432a88db141`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d99732c3880ef3ea76acf0a6dce879efbe26c711f0ded6136cfa948b970341`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 2.7 KB (2690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952b68e3c377a9c17e47d38599fbc87e34b2eb45eefb8a610853f2cac29dfbd9`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 23.4 MB (23351795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:5da75b28d3696604347a713be9bfa7f747643840011c97481209e6b13dba2f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23974880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a14889b53f8098ffd0faf34952a15cc10f04a44821ebcf57f5625b43b6047b`

```dockerfile
```

-	Layers:
	-	`sha256:dc5422c6d624b8d37be6790a406dd245a5f31b3b300d3d0f9a45bd527714bf76`  
		Last Modified: Fri, 20 Nov 2026 04:26:42 GMT  
		Size: 24.0 MB (23958532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd7c49e2bd6255472c5852a3a6afe977a92b025e9571b256499b9142906998a9`  
		Last Modified: Fri, 20 Nov 2026 04:26:41 GMT  
		Size: 16.3 KB (16348 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:humble-ros-base-jammy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fe235b3680bd63d264d3ddb3db1b23f7022b42a9039859d95c56ec52ed79c822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad7f405e3f4c000eb5de1d453e03d6e3e2f05b60c03d2a0afa5f25a7ba9b9c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:23 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:29 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.jammy_all.deb     && echo "767884cf4ed03116b9d64438930a832ed854147ae435279a7924dfdf60f94433 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 20 Nov 2026 03:32:00 GMT
ENV ROS_DISTRO=humble
# Fri, 20 Nov 2026 03:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-core=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:00 GMT
CMD ["bash"]
# Fri, 20 Nov 2026 04:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:27:11 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
# Fri, 20 Nov 2026 04:27:14 GMT
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
# Fri, 20 Nov 2026 04:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ca9e95881a8cb28512ec3b2400b15f438f6b4c3ca3af9fd776941ed8eedfa`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 1.2 MB (1215079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8d0f616b49ac6f82978d7209b58950a45e03beb96cfbd0a448cc2976113e4c`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 5.9 MB (5910769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a096eeef2a70209e51a15f84f3c5c20fdcc6e2fbe45780b785890d0702bf5`  
		Last Modified: Fri, 20 Nov 2026 03:32:26 GMT  
		Size: 98.1 KB (98075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8526d9ed09a9d90ff6777d272583eabb030092ea3e6e08f06b67705ced0032b7`  
		Last Modified: Fri, 20 Nov 2026 03:32:29 GMT  
		Size: 103.1 MB (103070782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529bb895ff9f8fe1bc760e644fb3cc339e3aab7b8648b9f97f3af271aa057d8`  
		Last Modified: Fri, 20 Nov 2026 03:32:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c987541f301a4fccd4118557c226fb3e7a0afac3e38cfa3293a2fdd0e3546b5`  
		Last Modified: Fri, 20 Nov 2026 04:28:40 GMT  
		Size: 95.8 MB (95836274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56854e61de360c6311d10f4cff9766872461e320e8d3826f0d0c7509ea97226c`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 376.2 KB (376178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68402d72855c9c5e5b830a2e4a3c355cdec5e4eced5d9c0302868b0b269efb88`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 2.7 KB (2703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6eed580638228b36f38eefe2ae8b7eb637743e16553e3e0266ff22d801ef7d2`  
		Last Modified: Fri, 20 Nov 2026 04:28:39 GMT  
		Size: 22.8 MB (22754820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:humble-ros-base-jammy` - unknown; unknown

```console
$ docker pull ros@sha256:6ea61d2ba0fe1b77218e97de3fd634660dcc695fcb66dbf2f0597a5c4c2dd977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23988034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad4c051e1767720bb0bce2738ddc01258bf63ee29adc4d044badc2c71a6e94d`

```dockerfile
```

-	Layers:
	-	`sha256:91dec6c74be795e375612a92b5ac04547cfbfa4d57ca049a8a56f68259c8423f`  
		Last Modified: Fri, 20 Nov 2026 04:28:38 GMT  
		Size: 24.0 MB (23971549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecdd7e316c99b9a406e9d17fcc0a0102ffb99699f45984745c159d2008218547`  
		Last Modified: Fri, 20 Nov 2026 04:28:37 GMT  
		Size: 16.5 KB (16485 bytes)  
		MIME: application/vnd.in-toto+json
