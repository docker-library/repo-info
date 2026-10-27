## `sapmachine:21-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:e416a525a77039e963010390e8b51ad5c65fdb59fabe0c182c133d5090310673
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:1eb630175bce161c743d3de598df1aeb9deeac718b93d39ae7c085ac6bf8d940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247845522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9056a3ac8fad89d30bc9ff35ad562d36b9a407e85911dd1b9f4891a6617c022`
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
# Mon, 26 Oct 2026 23:40:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:40:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:40:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc8de23437a7242921ead3b68e32380ff21eb90ce9e5ea70071237abfa09475`  
		Last Modified: Mon, 26 Oct 2026 23:40:35 GMT  
		Size: 218.1 MB (218093034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:738a7384f1c490e6da28edcd3b912005607e4683182e333c730b9efee7741659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff09d67f9200129062a163844125e342efd922b583ab18da460209e91a2a2ae`

```dockerfile
```

-	Layers:
	-	`sha256:96a8609790841bd34a888a25cc3169ddb8602838c3585afe061f51342deed72f`  
		Last Modified: Mon, 26 Oct 2026 23:40:31 GMT  
		Size: 2.4 MB (2380182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fcb823b3d68930f2a5cc3259c0cf467d2263564936d7109e4eb5307388eb5a7`  
		Last Modified: Mon, 26 Oct 2026 23:40:30 GMT  
		Size: 9.6 KB (9648 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2d4e11b02a596812fa4fbfa6eae7a1845c61121ba98c1d2ca404b73d87590c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243942199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea95b0eeb5e033d9b3c28de0947464198252c2c825613615f4c5dad98d5b238`
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
# Mon, 26 Oct 2026 23:45:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:45:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:45:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d8022e6b9f19b778d458e7b0573828984d388ad4e3aa89b37507c632bc4c9`  
		Last Modified: Mon, 26 Oct 2026 23:45:48 GMT  
		Size: 216.3 MB (216257592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:63120c1e5aa5c87c0578fcacea6f7972203fdc6e8e790e0d710933256033fd3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7649ef9bf9024ccaa2b10bb1e9afc046599b18f2fd1326c8cce78b87983540`

```dockerfile
```

-	Layers:
	-	`sha256:cc66aed65ce53e480b825e7db407d2051c9f73cc05774d3c084dd24c6fa30599`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 2.4 MB (2379854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc1e3f5d5c516fc70678b6fc95392d432295285555644e2f0e6516bfa19ddf09`  
		Last Modified: Mon, 26 Oct 2026 23:45:43 GMT  
		Size: 9.8 KB (9751 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:43f2fc3f7fdb85dbae8322da439c079f99d073cec8b53dc37806bf292b138a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252345698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f078a5dfbc36d621782e966f3b7e7180ba3248129e8650d15fac500f287d9368`
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
# Tue, 27 Oct 2026 07:43:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:43:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 27 Oct 2026 07:43:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a923ea1bdf741debd4724057fa2e309d83b30f5c7d79f86cf933178d675d17e`  
		Last Modified: Tue, 27 Oct 2026 07:44:11 GMT  
		Size: 217.6 MB (217641765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:55adc2daca7f793648a7d8a37e43ca7dd0337a9e514b5ebe54fd8a62a07fabcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c390a1887e7c443956b8d79a182cb17dc9c5a65a147568d1b0c72b45bf2c95`

```dockerfile
```

-	Layers:
	-	`sha256:acec60877eb1e8dab2eb9c756464f7862fbe47d3037e235916adbc989be10895`  
		Last Modified: Tue, 27 Oct 2026 07:44:06 GMT  
		Size: 2.4 MB (2377678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a614458a5d280a10c1ff75cbc7462516b26821427ddb61422c928a17f34bfd41`  
		Last Modified: Tue, 27 Oct 2026 07:44:05 GMT  
		Size: 9.7 KB (9692 bytes)  
		MIME: application/vnd.in-toto+json
