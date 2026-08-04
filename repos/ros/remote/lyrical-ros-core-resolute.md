## `ros:lyrical-ros-core-resolute`

```console
$ docker pull ros@sha256:05272d2f48c0e4726497b71148df684a1f17cb952e4e882f4e98d58eb3fa83e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:lyrical-ros-core-resolute` - linux; amd64

```console
$ docker pull ros@sha256:0ba284d188813eddb102ad54799bfd7101c07f077128690636cc14ca8ecc05b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198483624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abbb8d20f93c5dce0c6ffd143cf6e5b7b27a55e0450655d3387f16dbbd386c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:45:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:47 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:51 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:43 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6600ec0ac4da3d70b397a4126942960f2cf4e7303a97207db0ec857ddf7077c2`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 740.2 KB (740199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd30124542fe11b6b8e3840d1612bcd29a78f48bf5de2ebb33b25651dd0df9`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 12.8 MB (12753612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbb78d1e674dc2402e2451653236413d1d8cf5e2cb98ee1b8155386e66d89f8`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 90.5 KB (90473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd45c76664f51f9efa5a9596ee41950f41bd1f0138b613413b532e0418188301`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 143.3 MB (143330480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538caae360a338033e229bbb6346e517a449aae2d1ee1d1833f52bfa2278af02`  
		Last Modified: Tue, 04 Aug 2026 01:47:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:2f0a82113a6a8847d1290ccc8cd0017b902d5ab5953c7904dcd6111eaf641004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22743334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30944d3d71ce06ca586d1cb9bca6e9494817ad80dfb1dbd7416b2a9f261939d`

```dockerfile
```

-	Layers:
	-	`sha256:3f940a41f40ebc5cb05bf89400b73a8235fc8cd1e02ec20b7bfd9db28077ac02`  
		Last Modified: Tue, 04 Aug 2026 01:47:23 GMT  
		Size: 22.7 MB (22727747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c89e4c8a919829da6c21f929f1e6f294bb9937c9c5ffa6fd7dd21cacf663f147`  
		Last Modified: Tue, 04 Aug 2026 01:47:22 GMT  
		Size: 15.6 KB (15587 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:lyrical-ros-core-resolute` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cf063ed2afb45adae16ffc234841dfb9bef8e2b42f4cbe2416a924afb5c766e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (191028198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3304858526ddf2adabca127ab9c0974a834a8a3abd48b6018348c11a83dc05`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:45:39 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:54 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.resolute_all.deb     && echo "a275b9b819874e745a928e83e39c429fa4d607159285c4ef3ebcf75afa732ee3 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:46:57 GMT
ENV ROS_DISTRO=lyrical
# Tue, 04 Aug 2026 01:46:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-lyrical-ros-core=0.13.0-3*     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87267d1e1f862dff3547e4a5c20e237f6bde838c01066eacf04c9308a993c3`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 740.6 KB (740636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3feb02ad2b84b0509512d7dd2272765165e00d030fef8eb2991658dceb1a14`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 12.9 MB (12936259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e55cc5f60675bef9702684217b1694e94a75a0896f76cfd57c0744c9e31be5`  
		Last Modified: Tue, 04 Aug 2026 01:47:37 GMT  
		Size: 90.9 KB (90906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc127cb53887bd9252a3ab0251dc62ca1c362c2879152e18a938077b717b1c4`  
		Last Modified: Tue, 04 Aug 2026 01:47:40 GMT  
		Size: 136.6 MB (136564725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9829aacff4439238859b93870ef9421c81fdca07d68f20c1c9eab6007a40544`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:lyrical-ros-core-resolute` - unknown; unknown

```console
$ docker pull ros@sha256:1c0df65f41c584a85b7ae1c89c61e3818083fd4b86063a756d06ec65f32ff3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22716151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a8561adaed40fae56a5b1bb67e16ebefc06ce06fcabc96120d9c366c6f4e57`

```dockerfile
```

-	Layers:
	-	`sha256:3d836036b2bf35b562c119f6fb0aef5c8a9dc9bacfbf6f07457d54b3e47fed78`  
		Last Modified: Tue, 04 Aug 2026 01:47:38 GMT  
		Size: 22.7 MB (22700439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffb05ed3da717ecd80791e6810ec775374cac88c83dd85d2554b76747b3572df`  
		Last Modified: Tue, 04 Aug 2026 01:47:36 GMT  
		Size: 15.7 KB (15712 bytes)  
		MIME: application/vnd.in-toto+json
