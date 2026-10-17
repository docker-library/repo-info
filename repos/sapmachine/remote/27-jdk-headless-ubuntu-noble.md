## `sapmachine:27-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:935936c07aea9235e9fb7caf704db8f4c693c2dfd57f19e5a972122be42a3470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:9f21552012d54d25eb035e7b576b2d6638acf8b09bbe2c900559f96899de08ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167880609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8cb0f6c8c7dd371880ebf3a872f3e5460e69a7cc5883029b39bcd310d245845`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:38:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a397843ff931a6e85a68cf57cd1d4a87af225fc2fb37c44001b379ce423a32`  
		Last Modified: Sat, 17 Oct 2026 00:38:31 GMT  
		Size: 138.1 MB (138114851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:06bcb273536978be6f2a20835d2504201a2449efc0039c1484ce54b12e4fd019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3685a0996145580319ed53a06374ff212ef983e6d6166befe8dfb2e2c2083b79`

```dockerfile
```

-	Layers:
	-	`sha256:00628090563a42d7d667e350b6baa5e5e206a80464bb76a70d3cf0e01183cd4a`  
		Last Modified: Sat, 17 Oct 2026 00:38:28 GMT  
		Size: 2.3 MB (2299857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8ba39ba110519a0417971ea572ff16393dd012d996143e19552bf5521fa903c`  
		Last Modified: Sat, 17 Oct 2026 00:38:28 GMT  
		Size: 10.9 KB (10891 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8aa05d3e323e2154844057eda1b046e1bd732e470598b8548b9bcdd1f4774eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166122997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae452da9c094c7dc2dee655151fd04d5842bf0e41ca6969f357bf589a0b6775`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:38:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb33c427561a1c0bf99232394a3755b4ca5c823475370d0f601d7766151b1ba`  
		Last Modified: Sat, 17 Oct 2026 00:38:27 GMT  
		Size: 137.2 MB (137183236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0f86f4733e37629c6c2dd930b614ca184468932d5bfc00bc96782da39a3ee959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243be03efcfa5603cf679b4cb125f9b4c80144efa0ed3f120bb934a7bd2d30a1`

```dockerfile
```

-	Layers:
	-	`sha256:02c406ad2615c61ee324e8e1f573a759560c70774297e6a5de1efd623e64f6c8`  
		Last Modified: Sat, 17 Oct 2026 00:38:24 GMT  
		Size: 2.3 MB (2300361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41a09d88535e3df58282fcb8941c6ea5b52f1752a3eef2964cc250eb8dfa2797`  
		Last Modified: Sat, 17 Oct 2026 00:38:24 GMT  
		Size: 11.0 KB (11043 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5484bd67363d10252aa7cb761f830e2ef34fad22e831f0cff44eef20e0a249c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171556408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792ca34ed58273b9fac85a7e6e1a74cd9226f54c755459ae4b48e3da2bb09558`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:22:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:22:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce6fb45409938cd61cb0c2660a5eef3b0ec9f8e42a411faed20799dffee2976`  
		Last Modified: Sat, 17 Oct 2026 02:23:02 GMT  
		Size: 137.2 MB (137178418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:821e3e51fa4811ea6f510c2aa398263d7299d5f536361ae340ce7f530d5c9c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5b3977e52ce71f249146a4717c7fb761299885568aff2f893acbf3630966b2`

```dockerfile
```

-	Layers:
	-	`sha256:26f26985eb09ecd9ebf92ad26cd5ae9e7b307866f03c6f1c1df27ce215f66aac`  
		Last Modified: Sat, 17 Oct 2026 02:22:59 GMT  
		Size: 2.3 MB (2298644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d347d6f882e84a6259054d705906d27c711f8e60b65888bc370436aa504e4b02`  
		Last Modified: Sat, 17 Oct 2026 02:22:59 GMT  
		Size: 11.0 KB (10959 bytes)  
		MIME: application/vnd.in-toto+json
