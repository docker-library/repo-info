## `sapmachine:21-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:439acfa85d30e0657c8b1a31e8d60dccd5f50dc15169bfcc0fe81e898fda4a35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:cbd019663bfeb9e6ba31182173042656018f2c7d621ce8f0f7f11b80415f3d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91725787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b559eeeea875082c1a17316c6c6e1c676bc95c35d104e4e8f57d1c3201deb8`
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
# Mon, 26 Oct 2026 23:39:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:39:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e8a8a5325bfcf63705ad16acfe4109638c73cc12114a1e7e8fcf67c1aba652`  
		Last Modified: Mon, 26 Oct 2026 23:39:55 GMT  
		Size: 62.0 MB (61973299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c1889544129f0ce1ba72254403de4d4153d13d09ed9cd9c3d2c6bcf446a93d3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0987bd0ae4c2a11d8d47186a8a3f30e9ff78eaeaaa906b3008f6f1e4117b2ce8`

```dockerfile
```

-	Layers:
	-	`sha256:d6d5d0c0ef0104fbc03558f635f1c80c3f94a63ee3ff518dac58302bd9b21601`  
		Last Modified: Mon, 26 Oct 2026 23:39:53 GMT  
		Size: 2.3 MB (2296661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eddbdba9eec58670e99e39aa7dd454ecef3cb30001d449438f40ccddf1968b8`  
		Last Modified: Mon, 26 Oct 2026 23:39:53 GMT  
		Size: 9.6 KB (9647 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6849f8c86ec981b1385ce2ee7139af6795ee6f1c2f29b71f89bdd88fa2de1cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88822734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f411bc5d61bfaf7c8d16b332d8aec0670bfe9f333c2934073eb11ba5cc884c25`
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
# Mon, 26 Oct 2026 23:44:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:44:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25acf016a98f2431c55cc9e0befc23d32794131449d4ccd7a026ee7879b529ef`  
		Last Modified: Mon, 26 Oct 2026 23:45:13 GMT  
		Size: 61.1 MB (61138127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d0235443cfdf7d767c53ffc458270bc3870494194c054b1d1eb97cd670bcb553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22848c7676560b98913216a20385be0001a7bfb5446669dc809b4aef9ea2ec2a`

```dockerfile
```

-	Layers:
	-	`sha256:fbb8d99f0dba8e40fb9d2ce0fb3283ac8de6cae122d9d14e29d7593ca45ebc60`  
		Last Modified: Mon, 26 Oct 2026 23:45:12 GMT  
		Size: 2.3 MB (2296333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bb526f0565480826bac75d3a232b5c38a90a2d32ed3866e3e4138f948593474`  
		Last Modified: Mon, 26 Oct 2026 23:45:11 GMT  
		Size: 9.8 KB (9751 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:08a2b9b46356827331bca8b1aeee062d3cb44b75b7f51fe8aa2b88b621ed92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96179108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c566cd83d2f5f30bba17f9b2a3ca5ca61475deab9410762b1c0db718647d8f2`
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
# Fri, 23 Oct 2026 19:10:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:10:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 19:10:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb23e6b2dc273007d6f033e2849bf1d7dc5942494be83b9633b5f3fe10ac2c6`  
		Last Modified: Fri, 23 Oct 2026 19:10:56 GMT  
		Size: 61.5 MB (61475471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d9388e28a39d81ac096214a7e7bc6c6efc35508cb83a738412e70a60f8608691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519a737128dcca4f857e280c8d3a0716a832ad4290825ed1818169a4f2e0648e`

```dockerfile
```

-	Layers:
	-	`sha256:65e00b544200384a8871ecab528f35ca9ebc7e564a8b99f42d3431e72d3611ce`  
		Last Modified: Fri, 23 Oct 2026 19:10:54 GMT  
		Size: 2.3 MB (2296091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb734bb1ade06224fdb74497496137cfd78e160f901eef2534adb04b2ed92a36`  
		Last Modified: Fri, 23 Oct 2026 19:10:54 GMT  
		Size: 9.7 KB (9690 bytes)  
		MIME: application/vnd.in-toto+json
