## `buildpack-deps:stonking-scm`

```console
$ docker pull buildpack-deps@sha256:7e4ad1480886040bcae01eeb6a0642352cf3d700cf4dc584fae9f6e5fa5e2f9d
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
$ docker pull buildpack-deps@sha256:0a003874007124ecaa507f95672b1fb297c7835afddf80a0da70a5e33570211a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119047138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9df3d747c925bdd9a9d0d0b959a9aa8508a8c84d3b30ca08fb5a6c5b172c492`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9547.tar --tag 26.10
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:53:10.907747+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:53:10.907747+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:53:10 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9547.tar
# Sat, 17 Oct 2026 00:12:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 01:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c3f1e810a4fd5c79d0c67566f36945944b56e8d2ffc3c181c945ef3a297d07bd`  
		Last Modified: Tue, 13 Oct 2026 19:00:44 GMT  
		Size: 43.0 MB (43022437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea008b1b37badc5f9b48c508f749b20d6df3bda457af5b9eb0084f8928716c2`  
		Last Modified: Tue, 13 Oct 2026 19:00:47 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbef64975d2f348d265a3b2fccf32b92bf83ce596249098ea80ce5e6e14a944`  
		Last Modified: Sat, 17 Oct 2026 00:12:26 GMT  
		Size: 20.2 MB (20198597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2fb4eb5fe88bf1930acfedb08190e13273f71f731a1aea505f3db9e5448be39`  
		Last Modified: Sat, 17 Oct 2026 01:18:23 GMT  
		Size: 55.8 MB (55825712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aa392d526f0ed8f9d0324d4fde1d449856e2df73203d60b38f8c90a8d8e16ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7735821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ed3dbc7c1b6965683bffb37f89177d889e26c47c1c3d5c0a089bfa3f959903`

```dockerfile
```

-	Layers:
	-	`sha256:b7157df4951e9e40e5be20f7a76a233c1db59ba7c95c9f237673d6de6c51d953`  
		Last Modified: Sat, 17 Oct 2026 01:18:22 GMT  
		Size: 7.7 MB (7728233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6d914975d25a9159a2e5c526c75d6bee8ad342578fb996efe3430df884b3796`  
		Last Modified: Sat, 17 Oct 2026 01:18:21 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:37c7d0e59ffa80a58453e0204cbe4951c2087102f401dadcfb7e777470b242e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116948809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d520f41723d1574d4600d02fcfb1544b627fdcf727dc927adbfa0d77ed389d7f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:56:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9617.tar --tag 26.10
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:56:34.622170+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:56:34.622170+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9617.tar
# Sat, 17 Oct 2026 00:12:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 01:19:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5a183b82375b8969a4b65f11436e7bdf2b2ce33fe2f83a50838c7c3273d53262`  
		Last Modified: Tue, 13 Oct 2026 19:00:32 GMT  
		Size: 40.2 MB (40208851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a000e6158b817cf7eaa87f609aae442a0d7a3de65142827bc974a49940a4a54a`  
		Last Modified: Tue, 13 Oct 2026 19:00:35 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ee472d7a8f247d426b9ad5d2b7ef574cbee231beea93e2fa71e04ac7dd8967`  
		Last Modified: Sat, 17 Oct 2026 00:12:43 GMT  
		Size: 18.3 MB (18288636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed500f0325cbfefff2346126f5510770471ad2ed45586fb5d598b52bd51d15e1`  
		Last Modified: Sat, 17 Oct 2026 01:19:34 GMT  
		Size: 58.5 MB (58450933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7c4515bc50db34a20abc271919852312d3b2c73de41852ee9ae72d82e609968d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7736734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f5da9b2b9ac929a5c566b41101c2e3cc9592164ecec82d5992f98aa7d23c7f`

```dockerfile
```

-	Layers:
	-	`sha256:69e1b79ddd2a824979ff679820f6aa4da2e5242eca64acb0092158405fee563b`  
		Last Modified: Sat, 17 Oct 2026 01:19:33 GMT  
		Size: 7.7 MB (7729081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6fd6425fce7f228bdb90747d748e7e5f133fb34a21f11701127ef8da701685b`  
		Last Modified: Sat, 17 Oct 2026 01:19:32 GMT  
		Size: 7.7 KB (7653 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f60add045e7eb857f94fc319b92ba93b4e7c937d6562840b20ccda7d6f813c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117066742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b929e5a3348154a39ea81778e631e21bd4269360db8c96dca371428ac302f9a4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9686.tar --tag 26.10
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:56:12.653364+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:56:12.653364+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:56:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9686.tar
# Sat, 17 Oct 2026 00:12:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 01:17:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b3bfacf2b021b3166ab04e973786a30532c1eaf2b87d0171130204ee8612b556`  
		Last Modified: Tue, 13 Oct 2026 19:00:56 GMT  
		Size: 42.2 MB (42162921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c5c50a7e316144d434f14b5ad7204725c855864569933801a32ee58d930719`  
		Last Modified: Tue, 13 Oct 2026 19:00:59 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ecc8d371fc2cc29f6459b00d61d5b1a9cf8caa3160f644328e2ac1f93b0255`  
		Last Modified: Sat, 17 Oct 2026 00:12:29 GMT  
		Size: 19.6 MB (19559945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3df90f4c9e6d31893ba18a7b855f3c41aaf3a0610c25d1b5510cb5942c7370`  
		Last Modified: Sat, 17 Oct 2026 01:18:10 GMT  
		Size: 55.3 MB (55343471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:beab19783ae702ca97cac2907a092fda32dc64768c6998af14df13c4447a1cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8b8b91b5571a4a83b87d204af1b9bf0878cf7c98300de25586e7b8da8b2a41`

```dockerfile
```

-	Layers:
	-	`sha256:15d6e29a5c8948adeedb07d39aba833b88ea364e48fdda1c2f5e3d31e6bf54b7`  
		Last Modified: Sat, 17 Oct 2026 01:18:08 GMT  
		Size: 7.7 MB (7735476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96db9fe323b2fca55a15a96e2d455e1030ae95bcca5df457a2bb196008564f1b`  
		Last Modified: Sat, 17 Oct 2026 01:18:08 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:3e9621987b298939fa9f30c7ed05c831c2fcbe0ec564afcde68118db901fc5d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134027090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5698a6b393336a3f40b996564a087221e4d5409905f7b255135d869456566e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:57:08 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9485.tar --tag 26.10
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:57:09.466446+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:57:09.466446+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:57:09 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9485.tar
# Sat, 17 Oct 2026 00:15:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 03:03:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:106d57fb074d50a081260bb2be5dfffe4570c19d7368a8129f06ca08de7f8977`  
		Last Modified: Tue, 13 Oct 2026 19:01:18 GMT  
		Size: 47.8 MB (47752830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb28996f64d5b2fb49786fc06da708aae722a5fa773da81c25344d3d092960f`  
		Last Modified: Tue, 13 Oct 2026 19:01:21 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd405d44d4f04c8489052c8cf5d6557d467b6d19fd43e8384ac8556b8049ec5`  
		Last Modified: Sat, 17 Oct 2026 00:16:22 GMT  
		Size: 22.9 MB (22918252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa07bd106912951e70bb89f2bc3a45a122f71b7eebe76c3723f216942455f73e`  
		Last Modified: Sat, 17 Oct 2026 03:04:26 GMT  
		Size: 63.4 MB (63355598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4625ede999efe7b067d974d625d47bc290fb36366ce1ad46d9b8bb355265c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39be9e245c34e128159e35cce32ab00f2a9af7034653deac06efbd0ecbe7abd8`

```dockerfile
```

-	Layers:
	-	`sha256:934ca29a0ead5ab7f4789d202129752782d0e1136f3ca985ea18b501231b31f7`  
		Last Modified: Sat, 17 Oct 2026 03:04:24 GMT  
		Size: 7.7 MB (7736375 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22fed417a4a237a4ff67408a368eb96945e40e6d5e2c46c0fc3877b8442932fb`  
		Last Modified: Sat, 17 Oct 2026 03:04:24 GMT  
		Size: 7.6 KB (7621 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9fae2f0df811c235574df85e52edd8e27565d4ddd0062452d68e721ee06d6494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120107312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e87fa0ce14f7e820d131979f5f663de6ca84c6f4b3fb3b0c92edacabf89d74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Oct 2026 14:55:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.9529.tar --tag 26.10
# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-13T14:55:58.162277+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-13T14:55:58.162277+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 13 Oct 2026 14:55:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-dc5efb174a1fabafe97c7eaeb3ac6137/images/.temp_layer.control_data.9529.tar
# Sat, 17 Oct 2026 00:11:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 01:17:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c5cb9c0ab52a2cffa72d690666f370eb63f5f87f09cd4dda888c87176160c29d`  
		Last Modified: Tue, 13 Oct 2026 19:01:30 GMT  
		Size: 42.5 MB (42531779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384b07ddc175dd5b077d468c6adc06322eb440b5206e17a5695a08ca6f31d223`  
		Last Modified: Tue, 13 Oct 2026 19:01:33 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacae515584039126432538dd5cf3460ed0762a1fb609e33348ddb1b8a3b0bb2`  
		Last Modified: Sat, 17 Oct 2026 00:11:18 GMT  
		Size: 20.3 MB (20257319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ef9eba21ba41d1db1f0bbae81f7849af45f81a4d7a71cb7963676211793e69`  
		Last Modified: Sat, 17 Oct 2026 01:17:50 GMT  
		Size: 57.3 MB (57317825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:93c126c8b4d17515df911d4443149987b470681038b3a1198236b7cb5e0b87d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7730186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c329a437dad4697a37e2f6e356c5a23e149ee982dd25f10f5efc625da7fdf5b8`

```dockerfile
```

-	Layers:
	-	`sha256:6f43ee69b2b4fb1de688fa9524cc4d407bc12236ee6060e76b4ea4a0b0541045`  
		Last Modified: Sat, 17 Oct 2026 01:17:48 GMT  
		Size: 7.7 MB (7722597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80c1e33a0d0d109397ef996960295acb12faaa00284c0e629d3af03271bf0912`  
		Last Modified: Sat, 17 Oct 2026 01:17:47 GMT  
		Size: 7.6 KB (7589 bytes)  
		MIME: application/vnd.in-toto+json
