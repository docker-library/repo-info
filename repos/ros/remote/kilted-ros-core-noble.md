## `ros:kilted-ros-core-noble`

```console
$ docker pull ros@sha256:76e4ed564bbcd375975124828a2571d174d00c3d1014056f9b2069866b137b4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ros:kilted-ros-core-noble` - linux; amd64

```console
$ docker pull ros@sha256:87de92209df8b13c8bc9d9f2c1f39d786c2cbb9a33830a07a304f368cbe5159f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160888781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419eb48c2ddf6172304dc9cc0494fd486375fd3cf560552680876eaefedd8b12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:30 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:40 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:46 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:29 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5563c391db43fc82e6bdcc418d662e4eb482f5d89013455cc9356179f7a02bc9`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 683.6 KB (683588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0fd67f56c9b8fb7ccc6f2796fe6e7e778283859c379288b7bb6214aa6ab7f`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 9.1 MB (9119798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37029bc23993959b155a05655e0d4bed5f44b9cf776181979cb7a54c6acbc7e2`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 95.0 KB (95030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbce3483b4099b03d1755400f57a426fa67c95c7a59882063de8ab3669ff8ea3`  
		Last Modified: Fri, 02 Oct 2026 01:35:59 GMT  
		Size: 121.2 MB (121225747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b116718cb37da315861de1825abf875402db573e504136294e6f9e8da413e1a`  
		Last Modified: Fri, 02 Oct 2026 01:35:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:6ec3ad70bcfe594b17954f9660cf053d5de3f43c82660d2b53eba3b19a3bc0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18631040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c45915411c809a60134b45db1fd431d28d204cec2957f27e0e357fdbc65b826`

```dockerfile
```

-	Layers:
	-	`sha256:5cb07b905163fd507ce7fcdd492f62d8262ee21785ed84aec724efb157cae76a`  
		Last Modified: Fri, 02 Oct 2026 01:35:56 GMT  
		Size: 18.6 MB (18616420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f8e9dafb0c5d234188de4f9af3cdfde736929ab92fc805fd34b24461dc6633e`  
		Last Modified: Fri, 02 Oct 2026 01:35:55 GMT  
		Size: 14.6 KB (14620 bytes)  
		MIME: application/vnd.in-toto+json

### `ros:kilted-ros-core-noble` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f70c23fa24aa6dabbba18a4ea688f2e12023962268db8d3bb3b7d57125a4a359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154729651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e1165d5149db8ab3ea93bbf66c023926526444c66c2a79cf82d07698225ad1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:34:32 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:42 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:50 GMT
RUN curl -L -s -f -o /tmp/ros2-apt-source.deb https://github.com/ros-infrastructure/ros-apt-source/releases/download/1.2.0/ros2-apt-source_1.2.0.noble_all.deb     && echo "0804d9b13db770eb87019be414cd78378835228ad5fa801fc88758596dd8f7e5 */tmp/ros2-apt-source.deb" | sha256sum --strict --check     && apt-get update     && apt-get install /tmp/ros2-apt-source.deb     && rm -f /tmp/ros2-apt-source.deb     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 01:35:35 GMT
ENV ROS_DISTRO=kilted
# Fri, 02 Oct 2026 01:35:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     ros-kilted-ros-core=0.12.0-2*     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
COPY ./ros_entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52609e10f692ce6db7dcbe41c6be60f774e7f51a8da7759a03a30511b1f14300`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 683.5 KB (683513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af047e65c7a6775801a768388ac7588aca0cb7707f17935abb81a94d8e1b8e1c`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 9.0 MB (8990749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97478c41b5170f50241a3dc7d19c818052a26bb12c458995d376adb3b81bf3aa`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 94.9 KB (94930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d0e10d2229a685140b12b1cb5bcb1d987196d75d24d861d242f0ad9a20459d`  
		Last Modified: Fri, 02 Oct 2026 01:36:07 GMT  
		Size: 116.0 MB (116020176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925237a6de988f76007767335cda50adbf6230ef72e2001d08393dc9fc755f1`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ros:kilted-ros-core-noble` - unknown; unknown

```console
$ docker pull ros@sha256:23b7e736a2c9037e34d3c76762b6cf713ac8427f8a9af2d9e7896bd060ab5ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 MB (18605177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ed1eb60217354df765efc909aac06a1ba14feb60fdc2fb3be3b8ccdbc9c563`

```dockerfile
```

-	Layers:
	-	`sha256:d8a12a20ebdec0fe0b8c5e3acaca575d2107117a16c29efde67eb9ee0f4991fb`  
		Last Modified: Fri, 02 Oct 2026 01:36:05 GMT  
		Size: 18.6 MB (18590431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a6f0b19416f8c038061a6c6e52f1570469b17207696446847dda2ebbb09f9d1`  
		Last Modified: Fri, 02 Oct 2026 01:36:04 GMT  
		Size: 14.7 KB (14746 bytes)  
		MIME: application/vnd.in-toto+json
