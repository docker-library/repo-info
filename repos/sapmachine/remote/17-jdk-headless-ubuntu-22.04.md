## `sapmachine:17-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:cd0b35d94610d61eb645c7c24818e70f773df54405dc339b93684a8bccf0d267
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:ce8236f6daab149df93eec079b462fba137301b1c6f3d0f8ada2616ce907afb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232516262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26f10425b9e3e2a1caa9546687a4f1e737dd8bfe2f6160acee5616cd089cd72`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:16:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.21 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:16:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 21 Oct 2026 22:16:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:194b0cceab531e08f92a1f166f5a3c3bd2b4ebcf3e22dff747e4d10d4ac8d4f6`  
		Last Modified: Wed, 21 Oct 2026 22:16:24 GMT  
		Size: 202.8 MB (202763786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3daea22b53c82a97d37d0245c95eb17ae70062fa77c48720bb91db303d362e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0368b7b416a7e22e19dd6689c01c6f682ccc82d19ab1d0fc36dab704bc6bf8ee`

```dockerfile
```

-	Layers:
	-	`sha256:1d517fa41fbf177707cb5128a77db9d51738f6ff64e235df9aac832fddb63cf5`  
		Last Modified: Wed, 21 Oct 2026 22:16:20 GMT  
		Size: 2.4 MB (2378519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60f460b99dc2f25ce89b4f1d63ab5beb71289c17d8ca61d0364ae63938dc94df`  
		Last Modified: Wed, 21 Oct 2026 22:16:20 GMT  
		Size: 9.6 KB (9590 bytes)  
		MIME: application/vnd.in-toto+json
