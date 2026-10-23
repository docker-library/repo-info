## `sapmachine:jdk-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:bc07c982c052de9ba19afd5117dd674ec059f00c6147d9884b04e6985b2e619f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:ba16817a7c1a6cc8dae3fdfc29f2139895f5fdc62b8a5578b294e0c40501d7a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169439285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6739b6adae9524447c3ee4f7cea86d615b44b2f63ba98454d90932bcb70b1578`
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
# Fri, 23 Oct 2026 16:54:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e760622cdbea55e3cae39687124ff8effc576b5d177657079af2bdcf68beb0`  
		Last Modified: Fri, 23 Oct 2026 16:54:39 GMT  
		Size: 139.7 MB (139673527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:997558c51d0fdc67feea65ccd424f43cdf515f1f89f22aa5245dc5b42f50fa59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2568079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ca7dbb56d8fd244f2615fe1f65b75ea9b81d2fb4befdcaa19a60f3e587d10a`

```dockerfile
```

-	Layers:
	-	`sha256:af243af04e4f0e3c01665d7ac34f611a3198c90b0065fcc73633f20701dffb08`  
		Last Modified: Fri, 23 Oct 2026 16:54:36 GMT  
		Size: 2.6 MB (2552169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62587c8289cbe537a1582f67d0ae27dcc0efb8fe4bd3923e7291eeaf75a6d738`  
		Last Modified: Fri, 23 Oct 2026 16:54:36 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:20275ae1f5d536ddb540fcf3c995a53689fdd0104a54d0c6a4007d89a8ce78cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167707730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31c1aa9ba6c8f05aaa55f2a742415ee3fbee587f170f85be9050058b3d9f635`
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
# Fri, 23 Oct 2026 16:54:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e675aac60e76c064d7d29a907cdfeeedb01c840626f4b2cd3d7739e647f4d9`  
		Last Modified: Fri, 23 Oct 2026 16:54:27 GMT  
		Size: 138.8 MB (138767969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d958d8282fa8020720ea1fd3a9e479f01de0720ff1d04a69e463bce978cf95da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7520663dea7b9860bfe8934825dce8f4d4d65617de2a2eca66003c97c9977032`

```dockerfile
```

-	Layers:
	-	`sha256:097505150a6d2764d1db764ac9dc3cf74ea95f1a3a78009e49f4f7d0b90c20a0`  
		Last Modified: Fri, 23 Oct 2026 16:54:24 GMT  
		Size: 2.6 MB (2552874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eb8bc505ef14b67a6a622859ee2174be1724450c61f994e9be6eb5778495abd`  
		Last Modified: Fri, 23 Oct 2026 16:54:24 GMT  
		Size: 16.3 KB (16254 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d8542036dd2f2a2489550ce73ffd9b54dbf2930dfbe06f76ad33c268688817e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173326329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13071563a8d05f72974a706194a42e8c0da090393cf330689c4331f6830a337d`
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
# Fri, 23 Oct 2026 18:50:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:50:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:50:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0761351bbcf2e40d77c947233e049281c1361592e24b1c03a83f8591cac940`  
		Last Modified: Fri, 23 Oct 2026 18:51:27 GMT  
		Size: 138.9 MB (138948339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e33951c7fef919eb5bccabdb619cab7c50fea7c4b11740d1c2a4f16d41747d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2567207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e4128aec0dac3ee620476af9ce3af24999b4885e816db2a50e8bcab7a37e5bc`

```dockerfile
```

-	Layers:
	-	`sha256:39931f81f0c27b0ab893cde3a4967aaafda31ea9da963714f6da9fe680d8821d`  
		Last Modified: Fri, 23 Oct 2026 18:51:24 GMT  
		Size: 2.6 MB (2551133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93867e46699d9b095a9183223be439683dd2268d55d45482035b2870c44481fc`  
		Last Modified: Fri, 23 Oct 2026 18:51:24 GMT  
		Size: 16.1 KB (16074 bytes)  
		MIME: application/vnd.in-toto+json
