## `sapmachine:17-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:9656c6a526cffa138f30867ffd4dad3c4c0209fb9e61a0a66928d1038ac0a090
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:1f4b1bd506d89a609df571b212a3585c2ee271b05e0c941bc8f71e3a05f60f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87340720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5594f268b3b4ce375857f9636997a33f450e61229de794f61f55ad034941dc`
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
# Fri, 23 Oct 2026 16:58:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.21.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:58:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 23 Oct 2026 16:58:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65864acf28c768cc480a5a7b943201433f4e27e25e8e1ad35055fd36d4819bf`  
		Last Modified: Fri, 23 Oct 2026 16:58:46 GMT  
		Size: 57.6 MB (57588244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8d2e58585416db0cdca84146e60242459f63b16018a39b8fc319f79182746a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d01690b5272d15ae41ab0eec05faff10d4ae90d0e60ed61b2610d7b83561c9e`

```dockerfile
```

-	Layers:
	-	`sha256:af68212f7c31c80c01b03354ab5818c76de91076b3c86598fee84482f79d54e7`  
		Last Modified: Fri, 23 Oct 2026 16:58:44 GMT  
		Size: 2.5 MB (2547705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d4ba6d7f15320c5d5805f50e1b9735137feac43c9b2ed57f63b4cc7cccc1571`  
		Last Modified: Fri, 23 Oct 2026 16:58:44 GMT  
		Size: 9.5 KB (9502 bytes)  
		MIME: application/vnd.in-toto+json
