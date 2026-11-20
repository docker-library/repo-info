## `sapmachine:27-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:19fa88ddea569b5acb0d2f5b5472f68f719bbc60f16256bc24598bbb48a3d738
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:c5423504e4fc8ae52b0580e23cf6fcbacd6707d5d08649b5dac9e411d35206df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169472809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd44a02bc027333589b446f854bb4061dbdd3664c9234e63b9f362ec63baa4e9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:31:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb85953ae4c59649e76e5acb01cbceb53bab74a2c8d49c96ea3dd8868948cd2b`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 139.7 MB (139679512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9b58ec101cd4ce309f6f2cf295d78d674a8cc381d0e4b5ea9ffbb183167f6b75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2568617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1224c0fdab9516f62feb1f63710781c8e8f642264b1fd10755105ff9dd76f4ef`

```dockerfile
```

-	Layers:
	-	`sha256:ab20d47c7056537ccdf467cd34af8ebe5709f9e5438e3823154261fd81d1b084`  
		Last Modified: Fri, 20 Nov 2026 03:31:35 GMT  
		Size: 2.6 MB (2552745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d728621d8ced3c25c9cccb545de94ca35d74ecea0c9a55c4139d3df7ba41542b`  
		Last Modified: Fri, 20 Nov 2026 03:31:35 GMT  
		Size: 15.9 KB (15872 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f993de6488347da244ea8d10d0a57980e429376f5766d365e5563f5885147514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167737746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7547bcbd74759b1a71e25d035756242cac6c8c8d814f894d9a09d3abc1f60888`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:33:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:33:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80cf2b0e5b01484de16bd75fd700b25748556e7ed00ede256c74eaf616c70a6`  
		Last Modified: Fri, 20 Nov 2026 03:33:34 GMT  
		Size: 138.8 MB (138772428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:10e95d44bd3a85301dc948f1e4485fbc445fc6edbf44781eeb6cbe4ea4a91871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30534e5d3a80fc7c08c2a5ae35c88f12eee7c9e355ba0adb50b6eef1d9dc631`

```dockerfile
```

-	Layers:
	-	`sha256:e6216fc2ea74ccc1332da2ea34d6018e3b1a48e03cbb46525adcfd96766b12d4`  
		Last Modified: Fri, 20 Nov 2026 03:33:31 GMT  
		Size: 2.6 MB (2553450 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db7a6580c89858448e84fc378c1170bc1065f588245cab6db2a3863e3af3e1f9`  
		Last Modified: Fri, 20 Nov 2026 03:33:31 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:eeee9a92fd9fec57a5217784d10541abc39f43573f9ee7d45923124bb09382a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173358624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36209b1b4aa19a0dc50d07db8d066bb52b796a34f2f9ca2ae74267893f2886a8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:18:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:18:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 04:18:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b67c93ba123e6aec0f3aa188c5d7d50c66c3a3f8b8bfb2002919779e682044b`  
		Last Modified: Fri, 20 Nov 2026 04:19:27 GMT  
		Size: 139.0 MB (138952385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5de5db6c4ee61807c6e0b43b2772013e893ab5bd77050ff12c24539382a7acca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2567745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d05b6c7219de6db079bf6c7a11fdc674cb25b5b2479f102391e092ccf28a176`

```dockerfile
```

-	Layers:
	-	`sha256:b3aa76459f6486c6e3910bd6632b3e50974c6e34e03df4b01758b96b22b97497`  
		Last Modified: Fri, 20 Nov 2026 04:19:23 GMT  
		Size: 2.6 MB (2551709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcdaf62be3ff13bcbc4e4ff612986fddaeac4f27e83305ffbb1250becfd400cc`  
		Last Modified: Fri, 20 Nov 2026 04:19:23 GMT  
		Size: 16.0 KB (16036 bytes)  
		MIME: application/vnd.in-toto+json
