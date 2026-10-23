## `sapmachine:21-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:d350872d9832b4068e95d4b5bdcc18d55a81e083c493c874efe33c99382bf8dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:a8280990d091ea370d395719f02628792eec6c9553764ea5819c76213f62b0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248294505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e651a40768f5cb3ae4652bc385bb634ffbb1090449c420e631b1abc32ba8a8`
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
# Fri, 23 Oct 2026 16:57:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:57:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:57:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e994b1e99cb2d7297b858ab6d4382b8508d2271efb0e7f97892217f811bda353`  
		Last Modified: Fri, 23 Oct 2026 16:57:36 GMT  
		Size: 218.5 MB (218528747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4276f2c6f3817c55bc599563eea35ad8c87225f1fda1f0f8f3f2f19525ed248f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81818cfb3689cf0428adfca57ab05ee934e0e8584bda9ab74fc920998c47ea6e`

```dockerfile
```

-	Layers:
	-	`sha256:60463c1dd309ac299337de5d76bb71031b67cc3b6967bdd55152ab60720615e4`  
		Last Modified: Fri, 23 Oct 2026 16:57:32 GMT  
		Size: 2.4 MB (2358909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15bd7229330bc990349840fcb1e5adecfd82ae0da21572a2ed27788edc9745a8`  
		Last Modified: Fri, 23 Oct 2026 16:57:31 GMT  
		Size: 11.0 KB (11008 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a9542d211e85cc93b69c11757c3d950eb6200b509a66ff3e1e74a21dff3b6417
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245663855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5a4ea97ab1f3ec65c055fdc72dabaf4e62d5e1afbb265a80812c232a03dd0e`
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
# Fri, 23 Oct 2026 16:55:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:55:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422462d2c43ec6c63f7ec17d4b942853db8a81d107d9132936d7b9652e5e39f8`  
		Last Modified: Fri, 23 Oct 2026 16:56:08 GMT  
		Size: 216.7 MB (216724094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cab4461d0cc40b2af9e3697dd921decbd36a5b0d2b5322547e9ef79295779b8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2370576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b839e8d6762c7f57e2dd16d6c4c89eff4a11c67754ba33c9ec4ca58e15abe915`

```dockerfile
```

-	Layers:
	-	`sha256:1e071f86770264577c02ad261bf7fa1f1f3363e84afacfc67df07e1656ac865d`  
		Last Modified: Fri, 23 Oct 2026 16:56:04 GMT  
		Size: 2.4 MB (2359416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d0da33cc17d06f9322d04ac52e0be5a71c231cb4c9a16a8e8dfa306b67f485e`  
		Last Modified: Fri, 23 Oct 2026 16:56:04 GMT  
		Size: 11.2 KB (11160 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1ef104151d4719d478b6dd1b2fcfd35dd71784a26e590bb27bd311d3b219a7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252500366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b3d38f3b0cb0ce53b94b7dc9b7c9d4cf12cdc238965c41ce457579e8681ddb`
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
# Thu, 22 Oct 2026 10:05:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:05:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 22 Oct 2026 10:05:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0140084761f9efa4ce703590033758533fabd8b33d862f027e1e8a05db89e4`  
		Last Modified: Thu, 22 Oct 2026 10:06:12 GMT  
		Size: 218.1 MB (218122376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c6275106c4cd795049a01f357ebf06664647b245051f480df17d321db3b1f8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9c70461ff96001863e91b447019b094b94e20c04283ac176c772af651023c1`

```dockerfile
```

-	Layers:
	-	`sha256:03e21044f732f4549bc1bcd4d526e86ad41c39cd5651e2224fc0ec186c921685`  
		Last Modified: Thu, 22 Oct 2026 10:06:07 GMT  
		Size: 2.4 MB (2356332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:413971193550981ba5f3f062b4a31e090c082c329817ea20627a7a7b2d54a1d1`  
		Last Modified: Thu, 22 Oct 2026 10:06:07 GMT  
		Size: 11.0 KB (11036 bytes)  
		MIME: application/vnd.in-toto+json
