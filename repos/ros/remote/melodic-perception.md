## `ros:melodic-perception`

```console
$ docker pull ros@sha256:83cf128355ed820483f7ff0d2a75c1dc88f7dde5e699140eff46dbd233436031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:bfd25dea5a39f11d0c5a278139f046a3e4fba5900bba7b6b01672caa397f0970
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **742.9 MB (742902192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f3cd5fd0c22cc6aea6ba9bae3a3495d15b473168849b94e81c5439d516f9a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:56 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:40:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:40:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:40:58 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:53 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:42:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:42:53 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:43:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:43:22 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:44:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:48:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc5e3acd774c0b51173e1834203f47de21460eb50738eae1a890a010182b2f3`  
		Last Modified: Mon, 02 Jan 2023 19:49:43 GMT  
		Size: 4.9 MB (4877345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff4c5e8bfcf41774ad6e7eefe2da66836ac6553df884fef907f5645bdba0da`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c20670e33546218726b45fe0f0dbace2e7f7effbaa4ae16896367ccf91f40d`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709bba7166893506088c5400011c53ad7c1df12803e4218fcc862fe98c311ad0`  
		Last Modified: Mon, 02 Jan 2023 19:50:17 GMT  
		Size: 259.6 MB (259571307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8721d8c565fbf1c33c1ad5b19e854bd08af3eaad925274e10750f430bc250920`  
		Last Modified: Mon, 02 Jan 2023 19:49:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac29b7d96e06aea858c4839b747ce24cdead5090ac4cbc159a1665024a8075`  
		Last Modified: Mon, 02 Jan 2023 19:50:40 GMT  
		Size: 70.3 MB (70259882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a3002239b5657171ecfa8535f7fbb9e70a1bfef647b3dbe7e11379f17a522e`  
		Last Modified: Mon, 02 Jan 2023 19:50:30 GMT  
		Size: 295.4 KB (295401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9863674965fd6c9b834d4dd7181cbf8f7ec5920dcf7b41e013de90f899a17e66`  
		Last Modified: Mon, 02 Jan 2023 19:50:42 GMT  
		Size: 75.0 MB (75000596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65acf3741febe623c238ab0142a214279870b6a36de8f5cca614acece70ae927`  
		Last Modified: Mon, 02 Jan 2023 19:51:52 GMT  
		Size: 305.4 MB (305365356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:fccf14845055848227052a62ab4b3e10049a2768fd8bf96b6ee7adbb67d6ad18
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.1 MB (646050082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1d8d2539b163e827510cb359fae98865973e318b64b312fbb43fc3084abcfd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:42:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:42:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:42:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:42:10 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:45:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:24 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:45:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:45:24 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:45:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:45:59 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:47:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:53:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134f986d2341c3b3aa02c839eab9ec56c09049e85d6d37c6d7ea52879a310fdb`  
		Last Modified: Mon, 02 Jan 2023 19:54:45 GMT  
		Size: 819.0 KB (819031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba0802042db0077923e3b19230cffdcee2ee3c96ee60486e725dfda22e4aab`  
		Last Modified: Mon, 02 Jan 2023 19:54:44 GMT  
		Size: 4.1 MB (4088297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60728f1a2d9bb8e43571ebdaa2f13302e06d7204617cb38b446b81437653e3`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e340519cc06bef278f46dedd7d67262f3b287c6ec8d24a9e56e2f406000935`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e40806ae7dccf0d7e88fc8161b3cd12c6a8a4121e533bf51cf63ee51c5fe89`  
		Last Modified: Mon, 02 Jan 2023 19:55:25 GMT  
		Size: 239.0 MB (239034740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69fa1ce353636df71c53c5ca72aac27fcb0d32fe300804bd85a20f695eee98`  
		Last Modified: Mon, 02 Jan 2023 19:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64769291d3532e8736fcd4c16b236a09b2140cbea18216ba06c9ce0ba0639e3c`  
		Last Modified: Mon, 02 Jan 2023 19:55:44 GMT  
		Size: 54.7 MB (54721716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed1496119e603c4fcafe93d2a3b4fc895a364a2dc534f169af72c1ed8434b2`  
		Last Modified: Mon, 02 Jan 2023 19:55:36 GMT  
		Size: 295.4 KB (295368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63061e8028bcc1e98d9dcbf1cc34fe1de2dd9613323b1c64b33eb332665ec54b`  
		Last Modified: Mon, 02 Jan 2023 19:55:48 GMT  
		Size: 64.7 MB (64749124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf0d11b3c4cf49d9eb857545232723b1f1b5f9c24edc1223f5331d2ceb3c028`  
		Last Modified: Mon, 02 Jan 2023 19:56:59 GMT  
		Size: 260.0 MB (260034826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b1893bceb17e53ee002fe37ff35f005db349ec45fdc0d90d7fbf14d02ecf8f7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **703.9 MB (703866447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30e561aed4cae4235a5636916576b990821bf8fb535c8a84a23e1aacead7228`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:11:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:12:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list
# Mon, 02 Jan 2023 19:12:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Mon, 02 Jan 2023 19:12:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV LC_ALL=C.UTF-8
# Mon, 02 Jan 2023 19:12:03 GMT
ENV ROS_DISTRO=melodic
# Mon, 02 Jan 2023 19:15:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:12 GMT
COPY file:b48a3fff5008212a0bcdc238d0e8be930aa89d2336e357e1f628c98db523efeb in / 
# Mon, 02 Jan 2023 19:15:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 02 Jan 2023 19:15:12 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:15:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:34 GMT
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO
# Mon, 02 Jan 2023 19:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:22:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0765e0e9e334c61673412724a6fcec3e645874465ac339cfeb5c55d46281b6`  
		Last Modified: Mon, 02 Jan 2023 19:24:22 GMT  
		Size: 819.8 KB (819782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c5622c1de588f59caa6f61a3c79a578640cea00812b3e54b483caae11b9e7a`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 4.5 MB (4461203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9275dbe7207a326a4bbfa0d2abf0c92e339d02babc887fd7598c9f9a53b54b02`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305c3374b3ed2f0ce6791a916a31b58dad476f62ccf9e02102c30a2d2cb6794`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90641639a44d61c9264ad0e6a7edec9fbeb8dccb25147a9c0a7d1f0105c741a5`  
		Last Modified: Mon, 02 Jan 2023 19:24:47 GMT  
		Size: 252.5 MB (252542934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f61abe76c4594712691809c7091607ba5de00dbb43d425bc6dd9f700173256`  
		Last Modified: Mon, 02 Jan 2023 19:24:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696b36666c02cb2a3243a9e9becb3c3ae8db5f51223584aa6b167943cef93130`  
		Last Modified: Mon, 02 Jan 2023 19:25:03 GMT  
		Size: 63.1 MB (63090847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea68509f51ed5e73efb5341770ae1b0ab56c7f1e91229f1cb4efaabd49626`  
		Last Modified: Mon, 02 Jan 2023 19:24:56 GMT  
		Size: 295.4 KB (295400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95217e55e9f03b5d8b2e28314c837a4e535f2f861e6d06fc6c8dab8c806ed8d5`  
		Last Modified: Mon, 02 Jan 2023 19:25:04 GMT  
		Size: 67.2 MB (67235493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf399f6a32f13dd1d4406d0c096add8564dc80e55ab47770f5f086ae2da552b`  
		Last Modified: Mon, 02 Jan 2023 19:25:59 GMT  
		Size: 291.7 MB (291683730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
