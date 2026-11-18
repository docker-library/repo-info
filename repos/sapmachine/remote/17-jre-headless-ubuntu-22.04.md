## `sapmachine:17-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:ef58588a0ef374e4796590ecd277a615f08c2daafe813a7456880ed1f6abe84e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:fe0ee74d047edddf9cf129cd6cc20979e6466f8a3b371282fdc7b7ec9f1e5bc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (86030805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3499105c47161f3bdda16f4ce1ee2df735d7fccedbac7234aff1acf7587de5b7`
-	Default Command: `["bash"]`

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
# Wed, 18 Nov 2026 16:42:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:42:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 18 Nov 2026 16:42:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0daa7598a5e00c0a1345fb0d032894dab09cb6475329edfd9600cdb46d54e8`  
		Last Modified: Wed, 18 Nov 2026 16:43:11 GMT  
		Size: 56.0 MB (55961272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:45445a818eb95067c3ca7ab9632518d76490b9e00b151a0af48c7f72d9de8818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f796fd4e390786cfa5deb50a3cc0fd1a9b57dc131fe49940cd00821d02c68712`

```dockerfile
```

-	Layers:
	-	`sha256:fe09af6c5434f076b1dfcf01cd829e4a85960ad3e986923906a224aeaadd148a`  
		Last Modified: Wed, 18 Nov 2026 16:43:09 GMT  
		Size: 2.3 MB (2296247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4713650c6861de2df9672bbfff0b2bbc57344ff6724d45b0b65e366e7c348e1`  
		Last Modified: Wed, 18 Nov 2026 16:43:09 GMT  
		Size: 9.6 KB (9599 bytes)  
		MIME: application/vnd.in-toto+json
