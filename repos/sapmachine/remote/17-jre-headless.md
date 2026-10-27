## `sapmachine:17-jre-headless`

```console
$ docker pull sapmachine@sha256:ed0dddff315d69a151834c437871ee8c99884b324a76cfc32fd1b5c4d53fa1c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:b837b8ca97e3207c7064c0055f6ac2207d224ecda50b981a8100af1f4cc440fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86143299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7030c3591098823e5b98c0a0ee5698f0bbddeeec17ff8817dce71e998bdd6bbd`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:40:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.21.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:40:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Mon, 26 Oct 2026 23:40:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d20da298620a916b4ca9b466e5828761e6add30df2ba8077c9c1469ce7df26`  
		Last Modified: Mon, 26 Oct 2026 23:40:35 GMT  
		Size: 56.4 MB (56375687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fb80383bcf8dbeb6dd06ed73ec6c07aa9853937b191fe8604efebd190662555f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4811d3763e4958bcf52fbfa3ca51174ee25baeeb1dbb8a7237d0a5b6229d151c`

```dockerfile
```

-	Layers:
	-	`sha256:121b3ebc02d17431416d138ef1c50f8246ba9c896cd2c568b43e07112f909432`  
		Last Modified: Mon, 26 Oct 2026 23:40:34 GMT  
		Size: 2.3 MB (2274394 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbf422e59a0036127dcbe08d0435c9023c36fba732e9754bd8acd48102799b82`  
		Last Modified: Mon, 26 Oct 2026 23:40:33 GMT  
		Size: 11.0 KB (10973 bytes)  
		MIME: application/vnd.in-toto+json
