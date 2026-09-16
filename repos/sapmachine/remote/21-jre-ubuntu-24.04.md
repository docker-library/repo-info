## `sapmachine:21-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:aa2ef4af452b124927103b565e699e6671ef87f3a7870f7c7c0a1f11deaafcca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:4af382e356b05f6150d7df841a1897fa38ea6a3db2efb909d6c2d148a9419da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93567786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bdb61a53f24215e29147e28582a77814a44c3b3d340432c2efb5070650b823`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a19be86cc474d7bd01015669e16e98bb7489e5cd3dbb511af1a5d4ebd13ebf`  
		Last Modified: Wed, 16 Sep 2026 03:31:51 GMT  
		Size: 63.8 MB (63803670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0c4a12fedc8a8cf499b735c7f838000fdba701c1c399c96150c97e556eab0859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e8ad3f1c6ff3a0fd895319247fad3d870a2369aea4b37aa52360019be803f5`

```dockerfile
```

-	Layers:
	-	`sha256:3c7b97dab131c0590134efb3b5dd37ce57951305ae10d8008117b40f44e5ff6c`  
		Last Modified: Wed, 16 Sep 2026 03:31:49 GMT  
		Size: 2.5 MB (2521786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:699ba0196d56e4a84028474d45e8faadcde80207115904d7cf84fab4a95e2fb9`  
		Last Modified: Wed, 16 Sep 2026 03:31:49 GMT  
		Size: 10.8 KB (10802 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f04958fc9bffab42a6f165bc36b59039c31bb5647d8c5f617319e7d005529303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91936243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d37277c2335676b5e489563260beabb847ca61c3867b13273c2b6c4743a4b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7d1bda9d6ab991c71e14dc3dbc0200ca1453e1adee094efb3798396893ade8`  
		Last Modified: Wed, 16 Sep 2026 03:31:21 GMT  
		Size: 63.0 MB (62994663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0ece7ac33979e1adaf6c3ae48d51d05fa975ac313a77facbb60b64b28779e170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75139d8f72715339f9eab5bb8d472dca6119c2c3851c7b613a3a9136dc279956`

```dockerfile
```

-	Layers:
	-	`sha256:105d3b7e450b98e982fef4999c27aa039b68a6f99f8d3a0404767bfcc13f60fb`  
		Last Modified: Wed, 16 Sep 2026 03:31:19 GMT  
		Size: 2.5 MB (2522302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:268fb0f735cbbc311a8e179c1957fe53c0d7a8fdd7ebf16eb7d42f5d5e40478f`  
		Last Modified: Wed, 16 Sep 2026 03:31:19 GMT  
		Size: 11.0 KB (10954 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c196f7f48d653ba1b520c4ff4f1c056ed424e24a5fbe982b30f0b68a26c3d082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98036672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d9fbca8c5abb6d98a2c9bc0ebf55493eaa55471fa27bd58dfd4380db7c700c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:08:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:08:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 08:08:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeaf93dbdc3df5200a211e277b3784bb5f93c233999ea234d253d4206d2eb4ae`  
		Last Modified: Wed, 16 Sep 2026 08:09:39 GMT  
		Size: 63.7 MB (63659714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5e867155f57981b21a0f91073f9e5327b663d9c86be0fdef9a2ac54994e04d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3be147f63b64142cc97db1e9e8b45d180c63c2e1c7c0dc91ab62610b5b90f2`

```dockerfile
```

-	Layers:
	-	`sha256:9d026666ccd93060a0d8c6b113cbb97b052d5dce5f94735a4219301efd273501`  
		Last Modified: Wed, 16 Sep 2026 08:09:37 GMT  
		Size: 2.5 MB (2521284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dba3b5934fb876e5d4727830495bcd6bcc88d9268fe87a497b0e6841e1a21301`  
		Last Modified: Wed, 16 Sep 2026 08:09:37 GMT  
		Size: 10.9 KB (10870 bytes)  
		MIME: application/vnd.in-toto+json
