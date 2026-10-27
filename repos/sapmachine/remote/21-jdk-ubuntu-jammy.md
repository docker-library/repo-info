## `sapmachine:21-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:2d839a2dde58865042049299cf2f1ac1ed3e3b88e14e6e5e83e2d37858d74764
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:6c5e71601b89dc409b304396ed4898f653275ebc514af781281e18f35f2c80ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249813303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dcd9ed4420955a2088acc64283e277b673ed48714c84ca0c030000755f504a`
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
# Mon, 26 Oct 2026 23:40:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:40:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:40:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0893b430d6c5805741d8eea6bb8b22af4559f43e1819d0ecec6b378592f07d`  
		Last Modified: Mon, 26 Oct 2026 23:40:30 GMT  
		Size: 220.1 MB (220060815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cb7d04e27b7ff2da924f1291e6771e475699363e9be3f950475ed7bbf2318cae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5595dc4e81c4fe793e1ae11f988244a587eafdfd185abb213c4e43b94c4e5c57`

```dockerfile
```

-	Layers:
	-	`sha256:7d20cfb66822facc2b1d2a5cbb1780be3306e9706de518c22ad7e8325405b969`  
		Last Modified: Mon, 26 Oct 2026 23:40:26 GMT  
		Size: 2.6 MB (2633576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46cc10fd6412d8a6e621b5e86c1ec4278a4267c990aad8f0606dd32267ce3ab2`  
		Last Modified: Mon, 26 Oct 2026 23:40:26 GMT  
		Size: 10.9 KB (10869 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8ae0cdc94fab17f56200f323db03441925221f22f8bc7e2885df53f1047648e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245908134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4548c370b8e3bc71a6fdf4b0160a9c2f0f1486520e2ad6f2dbc005f60a4587ed`
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
# Mon, 26 Oct 2026 23:45:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:45:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:45:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256fabce2a71585063866b2c231f124c84ee6ed46dc96aa86b64bf2bddbd3ee8`  
		Last Modified: Mon, 26 Oct 2026 23:46:02 GMT  
		Size: 218.2 MB (218223527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:37ebe8697a8800342f70a812968107f02d09921ce517248ff34e2114b0eaf079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c74085d7be349908ba23593ec24eed30cd47615db661326ebcc3f399840918`

```dockerfile
```

-	Layers:
	-	`sha256:e5644b42e4dfbc874ce94afd0c6bd85db9fad40526666f6d990c21f105a47771`  
		Last Modified: Mon, 26 Oct 2026 23:45:57 GMT  
		Size: 2.6 MB (2633306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d2c2c25e84f13377b5ce12a143991a76cce08f7d0a76583f32363c672db264`  
		Last Modified: Mon, 26 Oct 2026 23:45:57 GMT  
		Size: 11.0 KB (11021 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ad01b887a143a611c5a35cc07d10ccc1f0cd626d6ad98172731c51770679a512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254603721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d2878ab09563055cabdb9c134efc8c7a64a6220ec60846015c1253278802cc`
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
# Fri, 23 Oct 2026 19:14:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:14:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 19:14:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb61f39c21ad46fb0a90e6e00cecb893686242b66d82862bc5819674ab5adaf`  
		Last Modified: Fri, 23 Oct 2026 19:16:25 GMT  
		Size: 219.9 MB (219900084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:55c349a500a3caa67d5572d25b520bfa12497bd994c1a80e6726b899c484517f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4c719c5ea33a5da3679a8d0e545512003cae9317616fb6572a1c3ecdfe705c`

```dockerfile
```

-	Layers:
	-	`sha256:66c4fe78061d4c09a7bc5e44ba96521b11afa52a8c44f4311461470413698d5c`  
		Last Modified: Fri, 23 Oct 2026 19:16:21 GMT  
		Size: 2.6 MB (2631174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:267ca3c3c94902c6984d04d5a6b91b6355d7ef0e854eda570147575887267e6e`  
		Last Modified: Fri, 23 Oct 2026 19:16:20 GMT  
		Size: 10.9 KB (10937 bytes)  
		MIME: application/vnd.in-toto+json
