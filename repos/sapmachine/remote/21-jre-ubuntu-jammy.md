## `sapmachine:21-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:59d79ec6f48a3971fe48a3f55e0b12a3eedab2b061d28e4cbb95d36b3fce4e7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:deac156645c6db5487fdccb3ef04ddf20e80a1593f3294d049af315d2f597f19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93328752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f499ba0dc26bfc78f305589cfa775567765429dc063c7c2828922cd8eb9907`
-	Default Command: `["bash"]`

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
# Mon, 26 Oct 2026 23:39:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:39:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a987b0ecaa71896405ffe9cdee4022f6e01a9447ada22dd4040c6f9fd95d740`  
		Last Modified: Mon, 26 Oct 2026 23:40:08 GMT  
		Size: 63.6 MB (63576264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0ce7a625a8c13dfef6bac3bf42db48ac68535249d689bb80fea56f0c256de9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9530183a3e84039bf712d4a949130530054850b7ca5f28e999d07785cf681ee`

```dockerfile
```

-	Layers:
	-	`sha256:2a6ae5225b55649b917237e3ac823a4083b555e04c5996085eba937d3c786187`  
		Last Modified: Mon, 26 Oct 2026 23:40:07 GMT  
		Size: 2.5 MB (2548723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b17b362d3339b88d9fe3d48fd4e5f613a631eb1e31759bed4fa3169bc1a41dc`  
		Last Modified: Mon, 26 Oct 2026 23:40:06 GMT  
		Size: 9.5 KB (9536 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:fb724a36f21ac68ae1c08ba9572b70bc70ef9eace6b07fd315877db91b0c54ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90415573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f382e2f51edb7a021d17a9d4d3ab0ab8435222143e8d25a4bf20607f3758a57`
-	Default Command: `["bash"]`

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
# Mon, 26 Oct 2026 23:45:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:45:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:45:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdee0249c1d23435d75745fcd3a8b4dfbfa4b68937685a7e21de49c9ec8e0cc9`  
		Last Modified: Mon, 26 Oct 2026 23:45:29 GMT  
		Size: 62.7 MB (62730966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0fffcf5fe5d55519be2eb4bbd360959b32aef38d650d69d954baadf93fc3072d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3e1857ed68156bb259fc83a11248e8f643050f0edf5536febc61185494ca97`

```dockerfile
```

-	Layers:
	-	`sha256:1fd57e2d25424a275c5f99a88aba3f962e1979151ef7803a3c17ad76e3a90679`  
		Last Modified: Mon, 26 Oct 2026 23:45:28 GMT  
		Size: 2.5 MB (2548405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dbf73155141ba4523785047da0cdb68676273641ef30730b7ae305272692c4e`  
		Last Modified: Mon, 26 Oct 2026 23:45:28 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2ba08b511c5b27de1179679ce8b3d7bb4985f5447895335dc100e9fc80eb359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98014240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388fe2723061e8c26b352876a3f109329155c2a09029a49118a9ef33029e1acc`
-	Default Command: `["bash"]`

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
# Fri, 23 Oct 2026 19:12:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 19:12:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbb83a9fd493539fcb02393ec60be8ae9959b91c7a3550be0773f3da09f051a`  
		Last Modified: Fri, 23 Oct 2026 19:13:06 GMT  
		Size: 63.3 MB (63310603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a61cbbc1a11cd93f5ac1bc0f0f00f6fd45726a2285fc5c707a8b88a75ad85171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ea2c9de36a741c9494614c81ec92b3930efc25b25a87cdb85a47a1451b3bec`

```dockerfile
```

-	Layers:
	-	`sha256:b8b9d85dd805f6664891bfad99e935be1aab1b16a81a57f179a46f577f31d537`  
		Last Modified: Fri, 23 Oct 2026 19:13:04 GMT  
		Size: 2.5 MB (2548243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a2df395aa6bb3f5b15c644c67c0db33b760153af813a4cd7f6e355309ee20e2`  
		Last Modified: Fri, 23 Oct 2026 19:13:04 GMT  
		Size: 9.6 KB (9580 bytes)  
		MIME: application/vnd.in-toto+json
