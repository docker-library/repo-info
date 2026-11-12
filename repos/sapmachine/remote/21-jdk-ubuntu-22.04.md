## `sapmachine:21-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:60058058ae00d678359a0b1a37643834749db9a55646736685f047d2955aaf7e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:646e3a8d3e02f95ed83e0dff9624abd02b076772feb4045bff8e024dd969d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250130070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de0d2b73ea32f6a06c458cf7f446529bc2930722013d13bdc6ef0d7a1e42a3b8`
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
# Wed, 11 Nov 2026 23:41:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:41:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0651b406f982fceb783a596b769d5fc002a77dbc16accf26d73337eafb1eb6`  
		Last Modified: Wed, 11 Nov 2026 23:41:42 GMT  
		Size: 220.1 MB (220060537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3db3910dd2406be6c381cdd15550b693ac68a6a5c52657b76d2011772708b24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2645053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2f224aa06b846e198320fe5ce0955a076423ecdc52fe01eb1218fc7741dacc`

```dockerfile
```

-	Layers:
	-	`sha256:8257d699a3aa15f69a8d6430c2fa59fe257d9d2b72826c87e7a9adb4d9df846b`  
		Last Modified: Wed, 11 Nov 2026 23:41:38 GMT  
		Size: 2.6 MB (2634184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf84478fb1a7e48011400e88e1b816c69f72ef40dd8779c25c37beb9292cce93`  
		Last Modified: Wed, 11 Nov 2026 23:41:38 GMT  
		Size: 10.9 KB (10869 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0770a16a374e573a76efb42cc5ddd43c69fe9b93b64f401b2aafddb39f5c3fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246225080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41440ed25a41e41fd627954a9dee1581404bbd9981fe262b809324df484d3efb`
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
# Wed, 11 Nov 2026 23:44:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:44:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:44:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1a185282444d696cfb5b2c6ba6b9458532207980810fdba564bc7c89f502e6`  
		Last Modified: Wed, 11 Nov 2026 23:44:29 GMT  
		Size: 218.2 MB (218223668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9e45ba68c551be91c58c8e5b4bee9a746dc5f74c2316d0ad66037c54fdfe5e5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ca67dd7d10ff38a97b06f3d5fc6ab111d00197348d47a32800c5bd460c6dc4`

```dockerfile
```

-	Layers:
	-	`sha256:38abeeb1d38aa626eeb58a54fe601879593ca11bef874f4881f3053040d1ee8a`  
		Last Modified: Wed, 11 Nov 2026 23:44:25 GMT  
		Size: 2.6 MB (2633914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7aec854c33f60f42619625e90e9bc980500f086a3fc86b08047218b6130fbe0`  
		Last Modified: Wed, 11 Nov 2026 23:44:24 GMT  
		Size: 11.0 KB (11021 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:b29bd8d9aeba60abaf2654e27cb086c28f8cf18735dee6142c901b6adf90d9f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254909041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91dcda2081520a8418d75e149ec04fd62b00d5d21f5b0765184f9e58bf668c4f`
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
# Thu, 12 Nov 2026 05:10:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 05:10:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 12 Nov 2026 05:10:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe1da487429dbc343a231466242d452b91ab084f3e66de3929b5bca8ddd46c8`  
		Last Modified: Thu, 12 Nov 2026 05:11:49 GMT  
		Size: 219.9 MB (219890941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f5ddb7b54a5781ed57cd909a17832f940a0ca9a560c41568c24e947eb0449f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd953fdd6348eae85be804081dccb2396245616217f68446b091a9745e850d05`

```dockerfile
```

-	Layers:
	-	`sha256:b1af797b7ccd1e2dfacc3d136f56e3e35eee2486e5e85b13c425a25a7b012b9b`  
		Last Modified: Thu, 12 Nov 2026 05:11:40 GMT  
		Size: 2.6 MB (2631794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08ac8c2a1cc56db87a90f97cca80e40ee64b85886a6103d72726bbdf302c138a`  
		Last Modified: Thu, 12 Nov 2026 05:11:40 GMT  
		Size: 10.9 KB (10937 bytes)  
		MIME: application/vnd.in-toto+json
