## `sapmachine:lts-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:cfd20190e303e2afd7ca2afb8e75a386e3211ee5c5905bc7851ec91857aa3db3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:74f3f7004412d90bf3a851246b42544ef7371e1a1e47a1084c9030296d6ada26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252588582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edae7ad2327889f99608a21ee27d1a487b0b80fc7dfa27f05c530a26259c3abb`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:39:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:39:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf5ccd62cc2dee32cf82b9d97d17c9db026e2314e961f8acfe64558fbb3cde0`  
		Last Modified: Mon, 26 Oct 2026 23:39:53 GMT  
		Size: 222.8 MB (222836094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8100001b5d3c814e9f8a0af5d9fae7279453b98d20aef181e865a8ca4aaffab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3377c523bf66e1980048802508f27fd10284f7c58d989c1ba0d1e34d648ca92`

```dockerfile
```

-	Layers:
	-	`sha256:133de2315226af0cb8aa9964ea140e6cc6d216be803802b168404a0c983cd3a1`  
		Last Modified: Mon, 26 Oct 2026 23:39:49 GMT  
		Size: 2.4 MB (2369068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1c5ba52765c34919ef1c3d25352f55e5ea5df8a6b626add95981ca13daa4db3`  
		Last Modified: Mon, 26 Oct 2026 23:39:49 GMT  
		Size: 10.3 KB (10346 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:928a0507a9187c35d1d24c0e440c5a435a001ec44d1e0742800e322bfa78e762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248245303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc66a6f54a43784646097a50a2e9b073e8d2f3ace983d77110a2769e54736a9`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:44:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:44:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d980277a22d5188f2cdc16b7437ec192e5770c302d9d631c94c57e5703952a`  
		Last Modified: Mon, 26 Oct 2026 23:45:01 GMT  
		Size: 220.6 MB (220560696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7382a4f162858f9dfa997f082c53663c9a732640036208e63296279ef30df4fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adae7ccd970e2010ab594019476c82759d374f0c0c0c6c0d2ea177f454a15cf`

```dockerfile
```

-	Layers:
	-	`sha256:2bda4fc6f6e82926afbe195a0973cec04fa9d78f9755d874eff92eb6ea5159eb`  
		Last Modified: Mon, 26 Oct 2026 23:44:57 GMT  
		Size: 2.4 MB (2368761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92c77704af274cd6ae4fd5d98ef2c73adf88f581884b4f4a3a3b2f327ace7a6a`  
		Last Modified: Mon, 26 Oct 2026 23:44:56 GMT  
		Size: 10.5 KB (10474 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c46536013e810c7066c25b7bdc0964bf98bad4f0906e2ff85ac1422c0e591468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 MB (253934926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ea13957b7cc1d7fe230c0cfae8618bee3fd997173a4a973e9699fb401e0e7`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 19:03:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:03:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 19:03:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9799d2137d93cca6f7f1c28645c3ce1e1d2f9d6a9ea3b85db0f8321108dd9f`  
		Last Modified: Fri, 23 Oct 2026 19:04:21 GMT  
		Size: 219.2 MB (219231289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e161741312fc74202a6a319e9fb67cc927a59698f2a9ae4323b8809db8b4609d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b828ac3082fa0b5396c06e880d59956255dd71a94c84a0a33e8b2dd5c4d8da47`

```dockerfile
```

-	Layers:
	-	`sha256:f95e89460c7870f1e1afab6fd1b3393103fee5570d2085410d52378db4fd2551`  
		Last Modified: Fri, 23 Oct 2026 19:04:17 GMT  
		Size: 2.4 MB (2365946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64c6f7d95fc909ee6019d6a2f9b2d040f174e2f0f7979358fa960014df837cb7`  
		Last Modified: Fri, 23 Oct 2026 19:04:16 GMT  
		Size: 10.4 KB (10403 bytes)  
		MIME: application/vnd.in-toto+json
