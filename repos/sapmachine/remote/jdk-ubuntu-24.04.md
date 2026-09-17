## `sapmachine:jdk-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:c45fceae86141d0b4d09994adf7e694a7b4e95ab3b109e72f39fca7333d631ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:f34b32baf10bedd5da53c7ae075c03bfec8dea2ce19703dbe36cd593a9adf5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169352688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afce167192a1a0ae0f16515bd1b68d310ce110f3bb5e3dd6a7d2ad626982100`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:35:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:35:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:35:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a245ef3cd75f9689edb32316f07e2726bd4f71ac902177981f762013156b132`  
		Last Modified: Wed, 16 Sep 2026 16:36:16 GMT  
		Size: 139.6 MB (139588572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1a3d14645b8bcd4f5b7427ecfb96239041f3a0034730c14213dedb2d301fe29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b46824fec057fcb8542d9946a2a5e1443f94b7c1e03959777f117941ffc6be`

```dockerfile
```

-	Layers:
	-	`sha256:d5a7cb0631daef3639f7e51902bb5caa98b453a548ada498d4745f4e11eb0d7f`  
		Last Modified: Wed, 16 Sep 2026 16:36:13 GMT  
		Size: 2.5 MB (2549425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7c7035ec89fa80a04c1b53639b3798bd41ec68f94a103836a40aef7c42ba6bf`  
		Last Modified: Wed, 16 Sep 2026 16:36:13 GMT  
		Size: 13.2 KB (13214 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d0a043c6f6dbd7cca861636a42184d27823b2d6b54cb7823b67d085ed671f1c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167606061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f6be5bdf0f6d4c6064c42935e31722d7437ca35755198466108182e8370dfc`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:35:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:35:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:35:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c2b16a3d14718e5e81934339fbe410f8c6c8814190421dffd4fc1817d41134`  
		Last Modified: Wed, 16 Sep 2026 16:36:18 GMT  
		Size: 138.7 MB (138664481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3319a837007e2a13cc7e4a51516cc7dd383b96a2bb52b60f75a408f4277d572b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4388dd8cf29388b64eea99351c2510af1da199217f362b6f50bc1f0a11bb42`

```dockerfile
```

-	Layers:
	-	`sha256:02b5b547a27954f0009cfcd6563432b9eca0862fca19616a19309f0ef7446014`  
		Last Modified: Wed, 16 Sep 2026 16:36:15 GMT  
		Size: 2.6 MB (2550034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62c98ae75c5469de7c7a7ae2b66452316ec419fefc96ea869fda4e9b597b1878`  
		Last Modified: Wed, 16 Sep 2026 16:36:14 GMT  
		Size: 13.5 KB (13461 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:52a5379e61abdf3e98abec8d3dca11dff9cee4b0c1f352e1f81ddc86d289f63f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173275646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbe01a9bc5afdd680fb226e5c1f5a75c6383244400eff7348702e24a7a6fa26`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:38:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:38:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8302d010bd5b479a457a6a025684242749d23024cf5d4d976bbaea971d2d368d`  
		Last Modified: Wed, 16 Sep 2026 16:39:18 GMT  
		Size: 138.9 MB (138898688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0f9e40228be170ea20cc1d805b678b8196208c78061cfb4dddbd0f119d040d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7181c98a09cc464a8fb7d294c6b40f9009ea93ed67c91f1d3d63dfef425f9ec3`

```dockerfile
```

-	Layers:
	-	`sha256:437a7559035e3bde80b7fd2b897a86238ec98510987e903c0cf9404ec8312232`  
		Last Modified: Wed, 16 Sep 2026 16:39:15 GMT  
		Size: 2.5 MB (2548341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:129371e220a15344febd237579c6e6f95521debb5cc3148a010fbfb8754ad2ee`  
		Last Modified: Wed, 16 Sep 2026 16:39:15 GMT  
		Size: 13.3 KB (13330 bytes)  
		MIME: application/vnd.in-toto+json
