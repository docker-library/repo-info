## `sapmachine:17-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:ae07b425a922838c12d741a7e165824f58e6a02fa122c0c2299f69dd42674b3b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:71aeced806386489fe08299e81dc66c5ecf02aa2fb51a84810cdf0273dd60198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87298366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a88f147232113d8fe75b630c58b4966ce778dcf163c72a68981df6e289f6268`
-	Default Command: `["bash"]`

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
# Wed, 21 Oct 2026 22:15:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.21 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:15:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 21 Oct 2026 22:15:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fcac20bf0d2db136191cf9dfc4c522277fc39c4b86ff8e7fa126acd1ca70aa2`  
		Last Modified: Wed, 21 Oct 2026 22:15:49 GMT  
		Size: 57.5 MB (57545890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d32af5f0c865a5122bc09414bdd598814be9bda943cb4625c5d484aef75a7d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e617f1864bf928f4861f987ca9113b6969d1a85fa5ec3dad7af833fedb256e`

```dockerfile
```

-	Layers:
	-	`sha256:00b98a4c6869ae54b9bb8f87c794a66779cfafcde8794cf84f7099a87e2a2302`  
		Last Modified: Wed, 21 Oct 2026 22:15:48 GMT  
		Size: 2.5 MB (2547673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc34f347a2344a55ee3af818ecd0d570367632d7f465d43ae4754d16a8a874d1`  
		Last Modified: Wed, 21 Oct 2026 22:15:48 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
