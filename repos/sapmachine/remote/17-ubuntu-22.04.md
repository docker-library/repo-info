## `sapmachine:17-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:423719ae28df19cb00065502a153c5adf024540e17564f7132cd60b051510171
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:324cf06479c335ae2bedd9ce3cd1ff93bf69845eac0a6a43fee03d24b7ea6c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234553395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d9626dba384ac046d323f356649e8286dbee9719facd62267d2abba44d3d22`
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
# Wed, 21 Oct 2026 22:15:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.21 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:15:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 21 Oct 2026 22:15:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed4eeeb87b99bee399acae3f986b99f81e67a59c6b4da6cec7c1c284a1ed5ea`  
		Last Modified: Wed, 21 Oct 2026 22:16:17 GMT  
		Size: 204.8 MB (204800919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0c45f400d6d000f31ced32307ab38ac41e84b1a9599e9f9cd64aad63db5eb7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e9dfcda1b8ff61ea8e28708ddddcc15c63487627d599dea48c336bc21cde674`

```dockerfile
```

-	Layers:
	-	`sha256:9445145a61f56a5a2692707c574b79e6da81d0d3f425a009b88b66a93d2c1129`  
		Last Modified: Wed, 21 Oct 2026 22:16:12 GMT  
		Size: 2.6 MB (2631897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:104d9c06a63a95b7bf3ad787acc1077cd9c0c4e4e01b8e2c22ccea934a0532d9`  
		Last Modified: Wed, 21 Oct 2026 22:16:12 GMT  
		Size: 10.8 KB (10795 bytes)  
		MIME: application/vnd.in-toto+json
