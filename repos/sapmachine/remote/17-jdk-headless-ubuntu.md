## `sapmachine:17-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:f8cacfb35d37aa7ec935e97abcc811a89a9fbcc63f2a94c4de2014b16950fcaa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:f8e3ffce0452d4378f529b227eaa7b3fd2e9d0d26f07925f67ba105636e1a4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233002817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b72e04660bead118e4bbeb30914950a16cc26f2a3bd2a92022cef59d30b656`
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
# Fri, 23 Oct 2026 16:58:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.21.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:58:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 23 Oct 2026 16:58:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b1a5da08fad44068d5caa5b277a471e647cc0aae244fd0789ea23440624f92`  
		Last Modified: Fri, 23 Oct 2026 16:58:49 GMT  
		Size: 203.2 MB (203237059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7962205644b8b08d73b319b28b04f772dd409d7d8251a0f09415b19b615c7cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6198eb380d9c507a46d30822725f20732b326d8bf231576a170d4b02107689`

```dockerfile
```

-	Layers:
	-	`sha256:cf091a937448ab6180280d8179828cb38a6b9dbac01f3cfe685a60a17dcda826`  
		Last Modified: Fri, 23 Oct 2026 16:58:46 GMT  
		Size: 2.4 MB (2357290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c36743082220a00eb95eb3cb5b72227fbe228073abc2c94da0aadea0bb055945`  
		Last Modified: Fri, 23 Oct 2026 16:58:45 GMT  
		Size: 11.0 KB (10978 bytes)  
		MIME: application/vnd.in-toto+json
