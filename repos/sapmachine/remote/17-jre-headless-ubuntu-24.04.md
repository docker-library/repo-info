## `sapmachine:17-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:277928e52881e4598d783c972d47493d37bc3347f709ff68d4492f9116a3417c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:8c82d267a16ff8c37ee2c76d6e716ee2a1667b9e78e5734fb1050157486f7bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86144390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92c4bcc60308e51e01282ee85d7f66ca7332315d80c2d1c4b2b9af425967539`
-	Default Command: `["bash"]`

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
# Fri, 23 Oct 2026 16:58:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.21.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:58:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 23 Oct 2026 16:58:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276838d678dcdb41302abc436529930a50bb3332b65028750d94b21e2c449376`  
		Last Modified: Fri, 23 Oct 2026 16:58:21 GMT  
		Size: 56.4 MB (56378632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:784f0db68c78aa2aaff9fd758c742a79dccb9a2f41ae302f353b5c0471d57023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f71b43c8c05fc7a8d1f0fd0f3a00db885f55a135fd0b1811a90e9842f073cb`

```dockerfile
```

-	Layers:
	-	`sha256:2f3981b9fa8c021480c75e2b038b40513ab20b41eff16c982f0097e8b2f5c191`  
		Last Modified: Fri, 23 Oct 2026 16:58:20 GMT  
		Size: 2.3 MB (2274382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b2db2b202eea7bc4d16aa7575168e5b7da0b83e26417362f9906ed96d71780b`  
		Last Modified: Fri, 23 Oct 2026 16:58:19 GMT  
		Size: 11.0 KB (10973 bytes)  
		MIME: application/vnd.in-toto+json
