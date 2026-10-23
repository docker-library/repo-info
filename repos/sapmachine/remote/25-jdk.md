## `sapmachine:25-jdk`

```console
$ docker pull sapmachine@sha256:69b276b588556252fa591d384845003a5cc7e2c4ea8091a4c91c4f7b0c548982
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk` - linux; amd64

```console
$ docker pull sapmachine@sha256:61c9dc65ccc9e0f6481db6ed21d44c91beb553f0b6e42fbbfe958d3c4b01dc45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254952758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc0579239e739f561a97c666a686c3eea75fd78a488d14d4370149652d7c690`
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
# Fri, 23 Oct 2026 16:55:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb73c5fbe3e36cfe4ca55bb5a78bc1f9ecb3bdae0e08b11696ad27e87fbcc97`  
		Last Modified: Fri, 23 Oct 2026 16:55:59 GMT  
		Size: 225.2 MB (225187000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:17992ede79068284cc6deadb4b82fd01e422801a60405c2f0e8500e06befc80c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c9b6541194956fe73a4ff667441ae561eb2cbfcf7b1dafcf3baff653e0efea`

```dockerfile
```

-	Layers:
	-	`sha256:b28ecc65356a82b13c095b7ac8f605dfaafcd7728833115c5ca35adff695b3ba`  
		Last Modified: Fri, 23 Oct 2026 16:55:53 GMT  
		Size: 2.6 MB (2599645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d06ec043974a7ecc323c54f63810c4626646db5c6c2905d4266dec6c8e8a8fb9`  
		Last Modified: Fri, 23 Oct 2026 16:55:53 GMT  
		Size: 15.7 KB (15652 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:dfbd972550a44799c4cd940db92328a90062b10592cbc2c9de2b83e370a2941e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251897099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c93aee42e4f2428a4057dc10915e3312ea7853de535d1f7e87e4ccaaa2ddb1`
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
# Fri, 23 Oct 2026 16:55:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1855fff8c632b311c1621bb87a5b5924666d1ef6fb0b68502feeefc08aeae`  
		Last Modified: Fri, 23 Oct 2026 16:55:29 GMT  
		Size: 223.0 MB (222957338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc27e2eec59b3636e73d763225798c7c252a9dc48cd4a651d2e169fb755dc5b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2616322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6f8f27b01e91f3c7049af6a2242895faa4de6f97f756ec46a9c1743b57d1c9`

```dockerfile
```

-	Layers:
	-	`sha256:5ab8ce9cd0eccb2a55982ed65aca5d5f4181eb073e08c91ff6a0ea238b44dc28`  
		Last Modified: Fri, 23 Oct 2026 16:55:25 GMT  
		Size: 2.6 MB (2600338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5cca75a4d86ba0b95b6c7522f24cc7bc26c526280000aebc511ef388bf51fb5`  
		Last Modified: Fri, 23 Oct 2026 16:55:24 GMT  
		Size: 16.0 KB (15984 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:09cbbbe06da035b5757f7ddabc46da6efb450c742eba5761e3ef5c6addca2a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256202200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57629bec202e55626e6f6aab227ecb1dc501b16e876d5b2e49f72c60a16f2e4e`
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
# Fri, 23 Oct 2026 19:00:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:00:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 19:00:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2eb2f968be428448b1ae16c2e2151a4523c5bda21926debd28fdb24d6d15535`  
		Last Modified: Fri, 23 Oct 2026 19:01:28 GMT  
		Size: 221.8 MB (221824210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:389561e8fbb0a0f6cc1986196d3ff554a494b0a5df63768e2568598674bc2e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2612479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091de19bd8c2c61c1846b3f40d418271caae86ad092f9662c1ab334ab766153f`

```dockerfile
```

-	Layers:
	-	`sha256:4e7b098fab4bf86299a7424fcf976f20f1ed1182e99ab0d81704a48527fcb228`  
		Last Modified: Fri, 23 Oct 2026 19:01:19 GMT  
		Size: 2.6 MB (2596669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2171394127f71454797b8f7fd358864f9c0559b9d3c228e1bd7599bca2b199f9`  
		Last Modified: Fri, 23 Oct 2026 19:01:19 GMT  
		Size: 15.8 KB (15810 bytes)  
		MIME: application/vnd.in-toto+json
