## `sapmachine:26-jre-ubuntu`

```console
$ docker pull sapmachine@sha256:e1b19f862e40104244ecf0b59fa45a14e94cc2b71d6078f0c86bd7e94c911692
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:0944e5ecd5810524ebaabc91c1f566b3c0a675d7bf3ca6fadf398fe1d72f9c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93958733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d68d2c27762d26cd695ed5fbb2d812c517dc0fd06feb94784d5dca78592d074`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270c5307adb9c542d23ac0a7b695646c5ebf35ba20f2d847eacbd39ce85bfa38`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 64.2 MB (64207624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:06f457c28fffc224f7bb27ad59db05ca1863636d141afcbd7906e8b7faa9565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8062f88ac71f53cf4b0ed809075a755d067acb49a5826bdf47c7f69e918dbc`

```dockerfile
```

-	Layers:
	-	`sha256:b6be0b19d6da5c8aea72be20c4668674f592a06b57a9fa256568ca6497a540e2`  
		Last Modified: Tue, 04 Aug 2026 01:48:14 GMT  
		Size: 2.5 MB (2526240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d4782bcdc19205b510175cff8735d728207ec4481ce9261dcce01c3734013b1`  
		Last Modified: Tue, 04 Aug 2026 01:48:14 GMT  
		Size: 11.3 KB (11302 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a0c9ba1f7fe692f7d7a215c9f8ed8a69702ab07d047a59748186be26d96db922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89703059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b4dc043881a289c262dadf048306d724b5790cdba248ad4e5ae0ed78751899`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61f8a9ded6ef0be0e362036e31a71a96bae7115d299ccaa0e25d4cf98f84fe`  
		Last Modified: Tue, 04 Aug 2026 01:48:29 GMT  
		Size: 60.8 MB (60816241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d55582fc001d600b134e6e7c2fcdde7c589900b59222fec684b1b7d50f175f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a189c65481522edd966351593a5b1005e28bf68f9dd37effcefff66931888c1c`

```dockerfile
```

-	Layers:
	-	`sha256:95988b61a77c2baca68a3364613231cc5f21c864494a65695dfcf05ace729e64`  
		Last Modified: Tue, 04 Aug 2026 01:48:27 GMT  
		Size: 2.5 MB (2526801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e0de5323d772a701c8107aacc2efff7cc35f76226f2b46f1de49b1fa1d9450b`  
		Last Modified: Tue, 04 Aug 2026 01:48:27 GMT  
		Size: 11.5 KB (11503 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3b6225a54c9d4d4fb476052aceda74c37adb5688d82898f9c43773821d57add9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98354722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000965dffa09e1a1c0047f1dc2f617ad444890b5ab8455c763018e697fb4087f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:39:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:39:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 02:39:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f9c85e151694e7ab0a6cf9778cd427cdf4b00a130163dcbeea3cc6c5f378ce`  
		Last Modified: Tue, 04 Aug 2026 02:39:53 GMT  
		Size: 64.0 MB (64044049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f916435c735ee0778dd5f20b379d67e38e33ab2634f5fea9833c9ff0ee31ac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f729503706d9edaff78306f9771268aa92af4d3d200db0f9d0e0534b9549bd`

```dockerfile
```

-	Layers:
	-	`sha256:d0721d10c36bf04c79a181afa9c2c96dce553bdf5a52fceb0d22ee1acdb7d2a7`  
		Last Modified: Tue, 04 Aug 2026 02:39:51 GMT  
		Size: 2.5 MB (2525132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7acf342c8d7f7a1807795ac609ffa009adb0e9603b19b8223573e6142599ccb`  
		Last Modified: Tue, 04 Aug 2026 02:39:51 GMT  
		Size: 11.4 KB (11393 bytes)  
		MIME: application/vnd.in-toto+json
