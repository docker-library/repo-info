## `buildpack-deps:stonking-curl`

```console
$ docker pull buildpack-deps@sha256:0126feded09f0e6b26b20758b8ac2210cae64522e576314410b8d628b0ec4d30
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

### `buildpack-deps:stonking-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:10b874b034c5acd044b46ddd61569bd4f2e3d4f442b2c85a1e43ac57a86cfd87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65140075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0323543eea1b8872cdbed9cd7e1d795e57b11f5dd5e11aa6451f871c092c6b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 13 Sep 2026 14:15:09 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.9517.tar --tag 26.10
# Sun, 13 Sep 2026 14:15:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 13 Sep 2026 14:15:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 13 Sep 2026 14:15:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 13 Sep 2026 14:15:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-13T14:15:09.619384+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:15:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-13T14:15:09.619384+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:15:09 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.control_data.9517.tar
# Wed, 16 Sep 2026 03:12:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ae58d958c2eec8963bf8fafdc0623d3546f0b49a29c2387d5308cb898179eb23`  
		Last Modified: Sun, 13 Sep 2026 16:04:19 GMT  
		Size: 45.2 MB (45242356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a7338d7947b9e1e755b5644ea7e3896ae4ff29fb771ca60b3df42b49a6ce98`  
		Last Modified: Sun, 13 Sep 2026 16:04:21 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272694e9703d1c68c60065f04ddd08e111b4944293f20c0698ab7155569d3e8f`  
		Last Modified: Wed, 16 Sep 2026 03:12:22 GMT  
		Size: 19.9 MB (19897327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:920490f1aec64ef622215ca1d3c5278301c49566f1ee76cf5b398df454cdd934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4462403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e038ba0771994b8c83f0b6d857061df93652895fb040d2dc383e07cf629c9d`

```dockerfile
```

-	Layers:
	-	`sha256:1c60a15d38e4a89beecbde69cdb1416c4860328caf7a1689f663c610fbd90bc4`  
		Last Modified: Wed, 16 Sep 2026 03:12:22 GMT  
		Size: 4.5 MB (4455160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59146698280170ae2cc7f54b2b47f8ca8edb72ea2cfe4f7f45a6f3fd70bce63c`  
		Last Modified: Wed, 16 Sep 2026 03:12:22 GMT  
		Size: 7.2 KB (7243 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c39af312c93310d0c7ba272c98c32f7382912925ba06198685c9d98c2a680cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65380238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f44e6cf0b77d49cb41b8eda6a9a378594a1a03b35638f72a368572f580c51a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 13 Sep 2026 14:17:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.9587.tar --tag 26.10
# Sun, 13 Sep 2026 14:17:35 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 13 Sep 2026 14:17:35 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 13 Sep 2026 14:17:35 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 13 Sep 2026 14:17:35 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-13T14:17:35.146845+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:17:35 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-13T14:17:35.146845+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:17:35 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.control_data.9587.tar
# Wed, 16 Sep 2026 03:11:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:91d3dd1d2446c037f72055c27b20d3c499362c132437180e1914ac538ca6d8ce`  
		Last Modified: Sun, 13 Sep 2026 16:04:09 GMT  
		Size: 47.4 MB (47393553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f06a9e197d91a0929cafe627052af5f03884db3a58203c84c3471f1f1695bf9`  
		Last Modified: Sun, 13 Sep 2026 16:04:11 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3400e5cf7ad3ba299fd8fa65bfa468076747f8a95f7973a1a24e433d0528de6f`  
		Last Modified: Wed, 16 Sep 2026 03:11:59 GMT  
		Size: 18.0 MB (17986296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6dea28860d5345e57b9fd8cc8cd96c5f0d0736901ec1a5020694f473e35ea7b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4791012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37061a4306cd7d5353b2a7eed5518815cc0b697170da30bdb2afcdf0a28c253e`

```dockerfile
```

-	Layers:
	-	`sha256:da8abce213030107d329dd32c00bc3fd1abd761eb0237a7dc66f56a787533676`  
		Last Modified: Wed, 16 Sep 2026 03:11:59 GMT  
		Size: 4.8 MB (4783705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28382eef44a2593ce4e58ac1fc7708813f05c3334e74c5a1585d19beb0ddd2a`  
		Last Modified: Wed, 16 Sep 2026 03:11:59 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:bc4ff3a5582dbbf0920150a841e2c83b411785adb3a70fb50dcd837c2e9717dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70081193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991799fc47f20d62612939a826aaaf23ac8e8841bb8bc73a612dfc1ffd662aaa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 13 Sep 2026 14:20:08 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.9660.tar --tag 26.10
# Sun, 13 Sep 2026 14:20:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 13 Sep 2026 14:20:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 13 Sep 2026 14:20:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 13 Sep 2026 14:20:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-13T14:20:09.378147+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:20:09 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-13T14:20:09.378147+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:20:09 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.control_data.9660.tar
# Wed, 16 Sep 2026 03:11:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4043bb55a8baaf29c611c7e125ba556673888cdea70496606dd27574646031b9`  
		Last Modified: Sun, 13 Sep 2026 16:04:29 GMT  
		Size: 50.8 MB (50822165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35d631c4696c26f0bec37a236de428523874735e89a5aab12effc4dee5ec70b`  
		Last Modified: Sun, 13 Sep 2026 16:04:31 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97512449b7f1021c3ae15861dce364e361823778349ae9a97639159d44f7272`  
		Last Modified: Wed, 16 Sep 2026 03:11:54 GMT  
		Size: 19.3 MB (19258640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a26836a31bf68ed0a018a8bfd2389b9d7e890eef012c208987964ea86aae0416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4790398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ef35c92affcfbd448d1a78a7589737986cec63a4f2ace85b53949278fdd205`

```dockerfile
```

-	Layers:
	-	`sha256:9d6e039de85110f58d82862f7f574d45f9401bc7389dd5abe059f9a37dd0edf4`  
		Last Modified: Wed, 16 Sep 2026 03:11:54 GMT  
		Size: 4.8 MB (4783075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ca5dfa8985b2a93c59de6af60a2732e2d05b2ac05a6c98f54f939020bbfed09`  
		Last Modified: Wed, 16 Sep 2026 03:11:53 GMT  
		Size: 7.3 KB (7323 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:84ac4d28fb12d8ba20a572571a1ea88415f66942a48e07e5581c190f3ec469db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80330476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7dc9b81dda1f1f730857cb510827a4329a9c2bea53099a685f0c104a0800955`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 13 Sep 2026 14:18:41 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.9466.tar --tag 26.10
# Sun, 13 Sep 2026 14:18:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 13 Sep 2026 14:18:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 13 Sep 2026 14:18:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 13 Sep 2026 14:18:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-13T14:18:42.444610+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:18:42 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-13T14:18:42.444610+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:18:42 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.control_data.9466.tar
# Wed, 16 Sep 2026 06:46:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b6cf460961532b7d23ccb0a46d05574772fe151fab4b57f2ff3d0e689fb83efa`  
		Last Modified: Sun, 13 Sep 2026 16:04:49 GMT  
		Size: 57.7 MB (57738984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c977942f40d58e888a0a7d6e7271f9fba7d7da76aa15173a9d4a7d2614d218`  
		Last Modified: Sun, 13 Sep 2026 16:04:52 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508c57de96f4461586f4b5a1cab926baad157b368a53e9ec324ab051f5fac2d2`  
		Last Modified: Wed, 16 Sep 2026 06:46:34 GMT  
		Size: 22.6 MB (22591102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7d8021aa222abe8bd9942a3e8db02d23dc9af42ae1b2e15f110e838af5e19df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4793927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6d4ea79d9fcd390defd3bfdea9b386987ad67d90013fbbff803f45326b18e0`

```dockerfile
```

-	Layers:
	-	`sha256:7411f8d5ebd44cfd3e2fa0e092fc01e333abdf3738fe24f542c816e619b3fd77`  
		Last Modified: Wed, 16 Sep 2026 06:46:34 GMT  
		Size: 4.8 MB (4786652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55ac0d89517d2550d54c914588547a27067bb318fb3b36740690184212a5e099`  
		Last Modified: Wed, 16 Sep 2026 06:46:33 GMT  
		Size: 7.3 KB (7275 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4a9a24bbf399f247dbc2563709048a00655102edfee3c334ea541eb9eb24edac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64867300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928d7ad7804e577983497a87fd281094f45c7a6e661ba39279cf361f469ebdcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 13 Sep 2026 14:16:37 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.9500.tar --tag 26.10
# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-13T14:16:38.292175+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-13T14:16:38.292175+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 13 Sep 2026 14:16:38 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-60cd1cf8da9c0e3f5386a83c830ebaa7/images/.temp_layer.control_data.9500.tar
# Thu, 17 Sep 2026 23:29:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7dd3e0c72817f5ab532d976fc7df1ab5ece650bc98a0c0778590b82b83711a6b`  
		Last Modified: Sun, 13 Sep 2026 16:04:58 GMT  
		Size: 44.6 MB (44609354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02c2b941df5221986f59ef2c4e71bf7933f2f5858e92f91c6204abe48ad9948`  
		Last Modified: Sun, 13 Sep 2026 16:05:01 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775155a43e1182a33301a07af180d32b097ddba0aacac9d75de42ba5c4cc05eb`  
		Last Modified: Thu, 17 Sep 2026 23:29:43 GMT  
		Size: 20.3 MB (20257557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b854b10cd2844711e20e419db7a10f06e9ecd549980fd06ff399dfe734cd7455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4464434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c379ac4a85f116242d6d98addbca5b97aea7937b00ac3159418c4787b4cdc28`

```dockerfile
```

-	Layers:
	-	`sha256:91b3f623990c2ebfa0c56a515905485715b9b51fd2127384d8223a834bce2b4f`  
		Last Modified: Thu, 17 Sep 2026 23:29:43 GMT  
		Size: 4.5 MB (4457191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6255d50745cfdddda85a35d0bfc7bac1a82b2ef105326c3cfb6e627ff7a786`  
		Last Modified: Thu, 17 Sep 2026 23:29:43 GMT  
		Size: 7.2 KB (7243 bytes)  
		MIME: application/vnd.in-toto+json
