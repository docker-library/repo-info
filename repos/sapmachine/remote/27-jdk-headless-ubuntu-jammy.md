## `sapmachine:27-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:bedae5c66e9f5ecd72b72826c0b17f6f311da5755de7db99b80752e62e94139d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:0cc56cb3449b30ec658ee0f58479bf8938de66d4e74c1d563c2fc929595b5fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167825722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ba30a03775461052a5d461e6f0ff1f1fb81f0a9c5f9c73e8fe24dd419bc8ab`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:38:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:38:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ad4f90717429016b9cb60158fd871c9c850de7ada3cc72875ab145d6d40b0f`  
		Last Modified: Wed, 18 Nov 2026 16:39:15 GMT  
		Size: 137.8 MB (137756189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:14a4976e84dd1adae96a3451b72f31b38a238f25ebace2d8ffba06e7191012c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806f520969f650ea4d715e509bb9696349306f7dad1f037e44646dece2786745`

```dockerfile
```

-	Layers:
	-	`sha256:5ac17353f0249a43876701afb935504689a2297387b4c969b334f0f0869ddb76`  
		Last Modified: Wed, 18 Nov 2026 16:39:12 GMT  
		Size: 2.3 MB (2321910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8d4ce68e66a7c0a93bcb3c622343df097c815a1789629a49ae55d9460899100`  
		Last Modified: Wed, 18 Nov 2026 16:39:11 GMT  
		Size: 10.3 KB (10317 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5482b2eb8ab0f893a968826e1b0ef15076448337a70194bb979d2c1f551a6b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164801024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a671b36e7f7b59508c581d6e0aebd83e41c8f226ba36b65fd2b34c6a0ed12269`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:38:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:38:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:38:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2731cc1a8f1a50720b9e4b071b7153061fee66fd952eee87bc44695532a3ce1a`  
		Last Modified: Wed, 18 Nov 2026 16:38:33 GMT  
		Size: 136.8 MB (136799612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:593e7b923773fbc75b6502b12237269f4c395d4c67fb5fb9777e4b63ed039794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2706dacd68c45d22685acfda4c78a035c081059faae32ace3868c30f778c4bd3`

```dockerfile
```

-	Layers:
	-	`sha256:bf3002148be4ce216f8aa89381abc0853946a088fb9fe5b1f767489a6cc38442`  
		Last Modified: Wed, 18 Nov 2026 16:38:29 GMT  
		Size: 2.3 MB (2321603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ea1c4b8e1f28c42117619b23a1e3e041cb5a2941eaebb56ebcf29548689d96e`  
		Last Modified: Wed, 18 Nov 2026 16:38:29 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1324c1330599846627705872f565c7d567aa90c2b295c44a03e72aed17e76efd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171756967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563624f9f5fdd6ae98eb5e5c826f4f898f250516839554fef75e12fa30f0f311`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:57:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:57:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:57:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902e71111a3d27636e6d809457276c6936bf0e984f0e869d010407559fa99af9`  
		Last Modified: Wed, 18 Nov 2026 16:58:23 GMT  
		Size: 136.7 MB (136738867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3df8a1d1f1ad5255652919a940545413c3d3f08551fe680818f26dce5610e85d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7dc1c0adce581a4215372d7cb8b95b64259eca837f0ace3b42ed5e5a10fb58`

```dockerfile
```

-	Layers:
	-	`sha256:d4a7f456f28057daa41284e998fc98bdbddb239869d3ec242e28816793775adc`  
		Last Modified: Wed, 18 Nov 2026 16:58:19 GMT  
		Size: 2.3 MB (2320734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25776bcbdbcdb624ebb617fbca966d39313b37954a27246fc6489a9cdf5bfe64`  
		Last Modified: Wed, 18 Nov 2026 16:58:19 GMT  
		Size: 10.4 KB (10373 bytes)  
		MIME: application/vnd.in-toto+json
