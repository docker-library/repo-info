## `sapmachine:27-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:960398d4d2756260e6abc8b66500148eac0b249bf54c69c11a1cfbf573d6c619
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:f2fc77c3efbfeca15d6a912e05bb3296beae0a7c9ae43d50539f7bda1a9d48ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90221763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9c969d60670de11af17bc326208ced2b22d4a3fa45dff297d60486008fa03e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:11:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20619582dff23c9dde25b43bf11d260e765f92362a3fd82c6bd12597b24da3c6`  
		Last Modified: Wed, 21 Oct 2026 22:12:12 GMT  
		Size: 60.5 MB (60469287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7738e5fce4d2fd893dcdac568711ce9d911c7e6c561c6befa1796ba8405466df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4403686b09cf6c658f9c7a41a277df0d5be8724ff8eea03774ab5991857109c0`

```dockerfile
```

-	Layers:
	-	`sha256:892bb6475fc83ae524e101e8e56774c86c5d40dbfed46fb52d15f18b751fce21`  
		Last Modified: Wed, 21 Oct 2026 22:12:10 GMT  
		Size: 2.6 MB (2551928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c9ce001a16d67f6165c7eed165430e14a501c39a315f9f031711887c8df61d9`  
		Last Modified: Wed, 21 Oct 2026 22:12:10 GMT  
		Size: 10.2 KB (10155 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a877682fd43c3078d9bb00b5e7e24930bdad6628e701043b415ffdbca1e76cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87123633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cfed5ebbe756fa108b36291668600dcca39f5aad2c899a9f7239ce524f0ddc`
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
# Sat, 17 Oct 2026 00:38:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78970acaef73d70a999b9270dae1403061ccc4d33c0e3b77d928fc483801598`  
		Last Modified: Sat, 17 Oct 2026 00:38:39 GMT  
		Size: 59.4 MB (59438910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:830da941edd1b1788a32f74803f390c26db4466afe84347f5bc52f5ac4ec7666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3767ab37e66f9deca4f627e02d0e7ffb9ef93605cddacd4405e3bcb8cc2c1a4a`

```dockerfile
```

-	Layers:
	-	`sha256:2a9a2bbd7235b8dbc64cefd60642315c5d210cf92b0d73e79b7d35654f898814`  
		Last Modified: Sat, 17 Oct 2026 00:38:37 GMT  
		Size: 2.6 MB (2550875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e7220cb3f7c107d87c76d4f7e003b1bd244ed748b6a67f040495b724afecc91`  
		Last Modified: Sat, 17 Oct 2026 00:38:37 GMT  
		Size: 9.6 KB (9571 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c229c083c3af6a60e7ea98d716b0034777814029d81ff85735c405fc4fe70433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94437009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167901e779876fca39dff0711cd011201114bfa2f418adff566a53c9812c3b76`
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
# Sat, 17 Oct 2026 02:24:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:24:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:24:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f391e892400d67c68751041bfb38b9b78744182db6f4c7cabb41453fcde0769`  
		Last Modified: Sat, 17 Oct 2026 02:25:23 GMT  
		Size: 59.7 MB (59733372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a829b9a7e213a591142aefa8258ff13c2eeb23440a84df07465651a66680a229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c495bb81b1d6751eca16d3a65953bba1c1333563c900b675b582cd7028bd9a8e`

```dockerfile
```

-	Layers:
	-	`sha256:73524386076f31cc5147bb223d69d1dd4b15feb197d5afb6cbcbab6221400431`  
		Last Modified: Sat, 17 Oct 2026 02:25:21 GMT  
		Size: 2.6 MB (2550098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0e7eb23dcf123ec90627ee210f649bea6c3f6e9326c2f28d47a0019ccafbe7d`  
		Last Modified: Sat, 17 Oct 2026 02:25:21 GMT  
		Size: 9.5 KB (9511 bytes)  
		MIME: application/vnd.in-toto+json
