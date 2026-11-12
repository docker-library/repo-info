## `sapmachine:21-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:9329c608e9edb75eca3fc22927aec3e74ba793072f400c05ddfbb2bdfe4b4895
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

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

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
