## `sapmachine:17-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:5b8eb96e4a5504729c67e54f8f5f6c4eb1ff787ba7063d88c8fb9555ec9ffe39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:438aca9970bf2ecd1f8d0716014d71931b9e0be0340235aabad49110b40c1480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234603040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae68c3eb796cbab47434c8ffec93d593ef17e42bb10f171c4ed795cc17a4aab`
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
# Fri, 23 Oct 2026 16:59:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.21.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:59:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 23 Oct 2026 16:59:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a166415f7c56d3a7962123c4eb6c885cd51e72e19601db9217c50aa84b1f05d4`  
		Last Modified: Fri, 23 Oct 2026 16:59:22 GMT  
		Size: 204.9 MB (204850564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:30072ac8b22d2c8147a14dd8446cd5039b51b5b62f77324d42e639299a32091d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13aa95a78845e52c35dd9840eb462e535e9700d3154c3528e0b92b2146bb46d2`

```dockerfile
```

-	Layers:
	-	`sha256:781be1d1077a80d4bdda465b3efb1bdef82db7fb2da82a32218bffc18e6dbb4e`  
		Last Modified: Fri, 23 Oct 2026 16:59:18 GMT  
		Size: 2.6 MB (2631945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:261ae4166a5f77f8584075103046791581f63f513cd26c1f87c65c898a74a606`  
		Last Modified: Fri, 23 Oct 2026 16:59:18 GMT  
		Size: 10.8 KB (10838 bytes)  
		MIME: application/vnd.in-toto+json
