## `sapmachine:17-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:01203509f130b8de352e1dca9850d030cf033d3c4046f9d704c2bb66c3f9acb8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:5ebbbc0eb8c9d503bfd2627923edc37f7ba0833cb243642580647a24f82bad61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87396192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1eb3e00e99a7609ac80352499406ac172c42f490aeb5f7710ec5f918bc716d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20507cfb36ac48de95959f3aebafe68f7cf603020180fbcdf6ecd519cfba706a`  
		Last Modified: Fri, 02 Oct 2026 01:40:09 GMT  
		Size: 57.6 MB (57644565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:597112f00f08a417d7207180678ee539fddbcdfd7a8ae8cecc99931f2f4c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26de937c09b5397e9af3e14107079fc44f86f0054badff4f6eeb8e3e95867652`

```dockerfile
```

-	Layers:
	-	`sha256:57ff72254f276c516eb45a16215adcc552f3862be80cedd9eafd358ce4157647`  
		Last Modified: Fri, 02 Oct 2026 01:40:07 GMT  
		Size: 2.5 MB (2547013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa07b681710fa7e2aaf047ff753e1f267d47246cce8601dc6fa66a83d4e7575d`  
		Last Modified: Fri, 02 Oct 2026 01:40:07 GMT  
		Size: 9.5 KB (9522 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c0339cf269dd367d85a05c728d5f5a92f63f8c3bf85c69d1cbc4a9370373ead7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84773170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4a7076194a52a1557ae4bb3a784ea63fd4b311e20c31d73556b765651f922f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:40:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:40:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7621ff173d1783ba06aa8ad925c6b07df3a72c4ab565d9d6bc83c3bf97a30748`  
		Last Modified: Sat, 17 Oct 2026 00:40:54 GMT  
		Size: 57.1 MB (57088447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0d3cc1152848548805e0559df080f866fe7223df89e7cb81f112dd68267916af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d3f097e8d890ac007f67d96c89c2bbf97f5484730587ef9abccde2e2ab26ff`

```dockerfile
```

-	Layers:
	-	`sha256:bd99f7490b092993371a0363c507769d2835e2318c068d9ebd2af63b09f351b4`  
		Last Modified: Sat, 17 Oct 2026 00:40:52 GMT  
		Size: 2.5 MB (2546695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d7716c04da4c4a5dc4e2076bcdc7e2298e0485a3480f69377a998a78e801fe8`  
		Last Modified: Sat, 17 Oct 2026 00:40:52 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a1497bdbcf03c8b1fabf7d77921bc9debab04a69c7eee98d2f372e8ad90e79c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91767209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a812e6264fc50d1de1791498ac85d454fed9fed49dd3d3ae6e4935c63f89389`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:55:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:55:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 05:55:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f380109de4a858d0a3b9f33105b302670a06d25a280cc7c58f5104c313a058`  
		Last Modified: Fri, 02 Oct 2026 05:56:22 GMT  
		Size: 57.1 MB (57064001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d9c9361f367a18747fa018818cbdc89c106ceb9c698be345687ea8a7ba03ef40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1eaf1cdc6c6edd997977b404a68d322b3377bf09a5db49523761d7e32155b9`

```dockerfile
```

-	Layers:
	-	`sha256:21454adcf8782eadc2253c1da0e3195f96a033fdb91664074ff236fe0eb94bb3`  
		Last Modified: Fri, 02 Oct 2026 05:56:20 GMT  
		Size: 2.5 MB (2546545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3151b551bc82b9a784e050be5cb624b0a0bfd0d4d931ba0d4447f71e8eb6575`  
		Last Modified: Fri, 02 Oct 2026 05:56:20 GMT  
		Size: 9.6 KB (9566 bytes)  
		MIME: application/vnd.in-toto+json
