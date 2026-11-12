## `buildpack-deps:stonking-scm`

```console
$ docker pull buildpack-deps@sha256:4c14aa674f49324f39d5ad6f6b1d8c11a10b47e72edbbdac6ba5035205b4bda4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:stonking-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:23c1ac218cf25c5e888032cb4dddec29d44b3ee76b42a71e150cd0436fa7cb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121909818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e3c72b1dab3c448501d645fbc0dfd1fa93673419e78791b03a7c3d86c16b97`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:25:38 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.8933.tar --tag 26.10
# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:25:39.205322+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:25:39.205322+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:25:39 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.8933.tar
# Wed, 11 Nov 2026 23:09:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:17:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:64cea6f530f99dba964636489d2d47427b90e4db5323cc14e1d500349a9fac29`  
		Last Modified: Thu, 05 Nov 2026 21:54:48 GMT  
		Size: 43.0 MB (43034524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc9f0439b32b23a916d3179faa335454e24481630be607df025f3ce4733093c`  
		Last Modified: Thu, 05 Nov 2026 21:54:51 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c033c0cbc3e7c3995ba0804be20a61f55c86fe4faab84c7921168119c23eff`  
		Last Modified: Wed, 11 Nov 2026 23:09:19 GMT  
		Size: 20.2 MB (20223368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be798764c630d3f544f8d1630f78420f43bc8b709aad7c2a2663aa65b8ae7b1`  
		Last Modified: Thu, 12 Nov 2026 00:17:47 GMT  
		Size: 58.7 MB (58651537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:948d3adbc70d9a05c30c11b46085c329af758e8e893893d9c9be3bec54857a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7735993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1281a82b4a01b0df30b1000eafd262f52be29abd05624b187d0350735cfc79a8`

```dockerfile
```

-	Layers:
	-	`sha256:b1429a283ac1054edd81dfcb0a8589ae4146dcf7712b7f6f420761dd722f5e81`  
		Last Modified: Thu, 12 Nov 2026 00:17:46 GMT  
		Size: 7.7 MB (7728404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:311b0f7a26b90ef3d3b55afa951bbb1d2fbf5cf4f5d55125a74484c7278a9952`  
		Last Modified: Thu, 12 Nov 2026 00:17:45 GMT  
		Size: 7.6 KB (7589 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:57293b63288f945e393b2a1eae73829347d816a4202cf8b204658969ff6d3430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119560626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c00fb0b7abfed6e8bec4c67c1dc66f2e8c7fca412f81a1f37027b024ada638`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:33:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.9001.tar --tag 26.10
# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:33:08.889874+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:33:08.889874+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:33:08 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.9001.tar
# Wed, 11 Nov 2026 23:19:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:18:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d1468260acad428de6c301ec616c1b9b515a35e6d51e74003f8845d20542d79c`  
		Last Modified: Thu, 05 Nov 2026 21:54:33 GMT  
		Size: 40.2 MB (40233374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0135bd9703f820a9d4a22c94f566c5c12f833c85854b803d93fc960a6d23ad7d`  
		Last Modified: Thu, 05 Nov 2026 21:54:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171d24e7e21973fea636f55eaf5b6555f6b39824a3c486319581268d6f83a3b8`  
		Last Modified: Wed, 11 Nov 2026 23:19:49 GMT  
		Size: 18.3 MB (18313226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6aa710fa454b0468f03aabb53a8281ccadfdaef3c6294e65a89923b751f7fb`  
		Last Modified: Thu, 12 Nov 2026 00:19:05 GMT  
		Size: 61.0 MB (61013617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d8df39c738b0e4a1659dca45e9767e05f251bf44049762c457b50eb228ea72bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7736905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6b34fa54e5f9a22ddabb85f88b7a85c0ce440d7d117d857c46c3939b33aabe`

```dockerfile
```

-	Layers:
	-	`sha256:5357921b798d51c39eb8e0323b51514a0c8417789fb3c083981b163b167da306`  
		Last Modified: Thu, 12 Nov 2026 00:19:03 GMT  
		Size: 7.7 MB (7729252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8222d7c56e7d410bffb56535f44a6e324aaeeaf361103a38765a3cb88c2ce5b`  
		Last Modified: Thu, 12 Nov 2026 00:19:03 GMT  
		Size: 7.7 KB (7653 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:78149f4324f82edcd918b21626abe1a47c8c5b57c5755c25fb586b9f061db6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119900692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce98eac94e3c1c86c3c543c37703fd5f980d40bb2dd3d14bd24a1d2641d5e2f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.8996.tar --tag 26.10
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:34:10.897145+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:34:10.897145+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:34:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.8996.tar
# Wed, 11 Nov 2026 23:14:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:32:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b5336d57a9be07a9561eabc6167ef5fcf0a78bba65edcce9463ccac9f946bf05`  
		Last Modified: Thu, 05 Nov 2026 21:54:58 GMT  
		Size: 42.2 MB (42195089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcda45930ce48053711cdc70b05f84a7c8d9d9988e0808a38dbd2be063f842e2`  
		Last Modified: Thu, 05 Nov 2026 21:55:01 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2083a1229e2b88d92e90563651c4cbb01eaeb80c3bc49cb8866d8b45b562f2`  
		Last Modified: Wed, 11 Nov 2026 23:14:34 GMT  
		Size: 19.6 MB (19584437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa7e67e54faf052867fee670ba60b553347318e3ec865c5e6ee5696c6805f26a`  
		Last Modified: Thu, 12 Nov 2026 00:32:41 GMT  
		Size: 58.1 MB (58120773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:acab1d3f9520f499dc6c2b42105ba860e46fabd436e57af252e5397b8ac646ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23dbdb4f1f51aab5db43661ec70d867c8f01be3ad94cde742265367c4e6e0ba`

```dockerfile
```

-	Layers:
	-	`sha256:0cdbce5dc3df2014686d7861022110dc957e833ca8edab7c46024ff9b9705c76`  
		Last Modified: Thu, 12 Nov 2026 00:32:40 GMT  
		Size: 7.7 MB (7735647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:173e5bcfe7365f8d6f51229520bb811b92c5b7164397e11df201fe2881dcf26f`  
		Last Modified: Thu, 12 Nov 2026 00:32:40 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b0610fef4e6591e6a5e80ec316424371c08801a6dc9b20c3d62b8ccf5ae6bee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134068417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8d4a4831d8044a2188f5dfac771e8d8b332a62a48b843f6dee5cd8aa25f065`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 23:28:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/.temp_layer.9529.tar --tag 26.10
# Fri, 23 Oct 2026 23:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Fri, 23 Oct 2026 23:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Fri, 23 Oct 2026 23:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 23:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-23T23:28:30.543152+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 23 Oct 2026 23:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-23T23:28:30.543152+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 23 Oct 2026 23:28:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-85105c73e0fce6a8cb74929fec18eb26/images/.temp_layer.control_data.9529.tar
# Tue, 27 Oct 2026 05:06:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 07:57:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cd739342de39c66e0e39daa10fbf3314cd32bf04669d4e79942532b6f3b7bd61`  
		Last Modified: Sat, 24 Oct 2026 02:47:35 GMT  
		Size: 47.8 MB (47759857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed2e29d6b7adec5baf8731c48f8c132e7db992ffbdcd1c50997e922a87fc032`  
		Last Modified: Sat, 24 Oct 2026 02:47:38 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c3d9f85db5764d2178a7f30814d0a6e37e23f2f738afc4047f0fd24090dff3`  
		Last Modified: Tue, 27 Oct 2026 05:07:07 GMT  
		Size: 22.9 MB (22932329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2460009666853ae289c907ac4f4cdfd57a22132a05b19438e2c7a5cd9daa6998`  
		Last Modified: Tue, 27 Oct 2026 07:58:55 GMT  
		Size: 63.4 MB (63375839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c6f0629aae58d67c0119d787c6965256ef81075f673f177f4df850dd0b248f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eea4663ad285adad3ad6a6c0e4c22555330882c136c6ee67f776f6411847e12`

```dockerfile
```

-	Layers:
	-	`sha256:20f96f0c7e74702fe2cd75d75f9be98839068748865342a557f9c0ea84297424`  
		Last Modified: Tue, 27 Oct 2026 07:58:53 GMT  
		Size: 7.7 MB (7735862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:498fb7a1f51bacdd509186182e217ed984aeb0a66d3d91b67209d09d838677f3`  
		Last Modified: Tue, 27 Oct 2026 07:58:53 GMT  
		Size: 7.6 KB (7621 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:00c6cf5641d0204de8a8138e3ddd0dba38a47c49d9a30f7540f012fe73ef00ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123188020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad703c91e1ac594827b4146d0221c062cf14eb6c36ec69dc949f3cea55861a0e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.8917.tar --tag 26.10
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-05T15:27:51.579716+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-05T15:27:51.579716+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Thu, 05 Nov 2026 15:27:51 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-1342736183bbd653ad5068e960f91b47/images/.temp_layer.control_data.8917.tar
# Wed, 11 Nov 2026 23:13:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:16:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9c87d6583931ad962eca0dccb92e61239bb6bead252773b7574193c3f53e53e4`  
		Last Modified: Thu, 05 Nov 2026 21:55:29 GMT  
		Size: 42.6 MB (42565638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c381d3e5ad9c0a5b3a815a7fb13188f92524d20bc0168e2551caea9a0a9c53`  
		Last Modified: Thu, 05 Nov 2026 21:55:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c0403ca188cf10754091cbf3fe42e9bcb027c541bca3ab4b27d34eed03b7c6`  
		Last Modified: Wed, 11 Nov 2026 23:13:17 GMT  
		Size: 20.3 MB (20281035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9636fe70d037b4bb42f564ac293d82856f9b78a69e35844719c7566f3195c1f6`  
		Last Modified: Thu, 12 Nov 2026 00:16:43 GMT  
		Size: 60.3 MB (60340958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1a7776153dc5b732f18dd33622c132a4a8dfa9aff27397fd8812959571cd1c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7729552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38c88f914434d3f3b06a383129b993fbf993088dbf37d4fd409153de9131dc9`

```dockerfile
```

-	Layers:
	-	`sha256:b43a45cbe8ee0504409d5107bc59a6f4d6b23fb6cf3eda62a0c2000301a8fd4b`  
		Last Modified: Thu, 12 Nov 2026 00:16:42 GMT  
		Size: 7.7 MB (7721963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09b0333ac400aa5aa4610c881817e82a54418ee9d2ae49521769e4a1f91288c0`  
		Last Modified: Thu, 12 Nov 2026 00:16:42 GMT  
		Size: 7.6 KB (7589 bytes)  
		MIME: application/vnd.in-toto+json
