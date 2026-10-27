## `sapmachine:21-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:c9a96ba4d338bc5650d6477a25167349388bb5eaac40ae6afb365030499e972f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-ubuntu-jammy` - linux; amd64

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

### `sapmachine:21-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:21-ubuntu-jammy` - linux; arm64 variant v8

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

### `sapmachine:21-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:21-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0eec72e111ae7856ac9f033038105328b2c4b3f891a90e89738c7b1fd4ea1476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254594725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c06827088049f2e7c7e25cd434e14b84d8e6731722b8d62991081715a35ed6`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:43:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:43:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 27 Oct 2026 07:43:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b95bd7186c6a237625cfbb82dfb4c8991b2078d338dcd79b3160517c59e3d7f`  
		Last Modified: Tue, 27 Oct 2026 07:44:09 GMT  
		Size: 219.9 MB (219890792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:514e6209ac0e03b4663a1b0e2e33180117ecee095a5a04c91198fed29c81d1a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ef8f03bcc2af609a162fdfa9e9931b18d01a8f590f23d6e551f854e7ea854e`

```dockerfile
```

-	Layers:
	-	`sha256:7e5c67f5a298c918c5d6adbd5728ab80b4e82b9032a623ad85237003b7fdae26`  
		Last Modified: Tue, 27 Oct 2026 07:44:05 GMT  
		Size: 2.6 MB (2631186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05decd2354db5ee9e95226fc7a652237d8d00f2f74e1bf9159736a71bf3cef1`  
		Last Modified: Tue, 27 Oct 2026 07:44:04 GMT  
		Size: 10.9 KB (10937 bytes)  
		MIME: application/vnd.in-toto+json
