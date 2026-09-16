## `buildpack-deps:stonking-curl`

```console
$ docker pull buildpack-deps@sha256:cd092dd6af3ff926131ea527de343dca1f2128d3a01f481672fd18d64805bf0f
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
$ docker pull buildpack-deps@sha256:3e9e6305e31c4671ddf62e52c666fe0f58fb31dc134fae84ab6787ab16ddf1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80166284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3867127fc015acb570e69dedaa6a3a1da1820ae56a224e98f312d815812ed5b2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 01 Sep 2026 20:41:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.9394.tar --tag 26.10
# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:41:05.549052+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:41:05.549052+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:41:05 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-00d7c0c1fbf258ff5d50f3dd095eab78/images/.temp_layer.control_data.9394.tar
# Wed, 09 Sep 2026 08:44:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5d571b36b765d5e25efee79a7547930722f9019afbbcdc355828615932d51a28`  
		Last Modified: Wed, 02 Sep 2026 03:07:34 GMT  
		Size: 57.6 MB (57555112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0860144ae4b6aadc103dd274170a657c7f62e296d00f3b13de17884a67b283`  
		Last Modified: Wed, 02 Sep 2026 03:07:36 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5df6647542f8c6b98c72781b3df20ad587a6544807982b3d8b78a8e9efc88a2`  
		Last Modified: Wed, 09 Sep 2026 08:45:15 GMT  
		Size: 22.6 MB (22610781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a8cd958cdde70485fa7fdb53dab28612d2d6dcc031da1a1c92b03a5383fa5516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4786667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acf54a367064beb96658c3dbad01f2c446a956edfddfe8c6b633d4726cd8bc9`

```dockerfile
```

-	Layers:
	-	`sha256:c68bc261740351dd2efa4e1943acaa2e0497d6a773057e03a068eeec60491679`  
		Last Modified: Wed, 09 Sep 2026 08:45:14 GMT  
		Size: 4.8 MB (4779392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46e311d4032b0f812bd7a8a5d4202d4364adac658bb63da7aaf723af19b1ab55`  
		Last Modified: Wed, 09 Sep 2026 08:45:14 GMT  
		Size: 7.3 KB (7275 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stonking-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6f9a8b70b82e2f846e2757e0ebfa9c450a2de1b1d102b7282a409f4a7974bc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60749540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41637d6adb4740d7e12cb1c94100a83d79d1fb7e4fb42435cdaa491cdec721ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.9048.tar --tag 26.10
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.entrypoint --clear=config.cmd
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.cmd --config.cmd /bin/bash
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=config.labels --config.label org.opencontainers.image.version=26.10 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-05T05:06:45.369521+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.10 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-05T05:06:45.369521+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 05 Jul 2026 05:06:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/ubuntu:26.10 /home/buildd/rockcraft-ubuntu-904fbe06699e44af976169f0ef1f7e41/images/.temp_layer.control_data.9048.tar
# Fri, 17 Jul 2026 19:17:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b1ae513063a3259629bbdf65b97f9209febd48c54b2630a21e995f38111a93bb`  
		Last Modified: Sun, 05 Jul 2026 06:08:18 GMT  
		Size: 41.3 MB (41304292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd32bb1cae263ec245a2bab33c4f5866723e16da0a1f83daecbaa5850a44ad2e`  
		Last Modified: Sun, 05 Jul 2026 06:08:21 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d322560cb66865f554d353d0569c450b4d93b307ee27f421fd6a0f4d7233bef`  
		Last Modified: Fri, 17 Jul 2026 19:20:38 GMT  
		Size: 19.4 MB (19444861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stonking-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9adc28caeb3b04d2413dc6f14b2a1b408bcb8f0afb808913d6f19bde219ae29a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4411074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4388b1c06dea11c24b87e4fcd9e3cc03ffaa89d03c8089719513d1d09f2cb0ba`

```dockerfile
```

-	Layers:
	-	`sha256:fc4f33c17c2e200430604e0c328cf7321fac8b829710bfaf9b105c0f77771d2c`  
		Last Modified: Fri, 17 Jul 2026 19:20:36 GMT  
		Size: 4.4 MB (4403831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:439f8a1b4666d28c23f3681aeba93b16662fe0ecdba347bab6caead79a3d82f2`  
		Last Modified: Fri, 17 Jul 2026 19:20:30 GMT  
		Size: 7.2 KB (7243 bytes)  
		MIME: application/vnd.in-toto+json
