## `sapmachine:17-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:efc22048c2c3acbaa9735e0dc713e5aec100f3af111b9a7cef56731073bbacb8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:922d9e904bc9ea71be1bff6a9d22b15af868cf95437f7c8e6a99a66af37d36f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.6 MB (232550591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f7e4759e3e3c3e827148b807f7d8206f80b6010b298c5fe6893c3d42fcff2c`
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
# Fri, 23 Oct 2026 16:58:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.21.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:58:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 23 Oct 2026 16:58:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa9decf126d933c5219aaf7f45842c13ed122a7f3ebbccd79824131fba13746`  
		Last Modified: Fri, 23 Oct 2026 16:59:08 GMT  
		Size: 202.8 MB (202798115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:06ab1d495fbeffa0c5fa2e8fab9dc4bbf2639601a2003b7ae5e6e90fcdc00caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f06889251b9764fe855b33316a4dee4fb83d0c3af61bafbd90c3ab2215e9ae`

```dockerfile
```

-	Layers:
	-	`sha256:48745783b8c4b99b85fc9769da136f62a0f8058f5d743b7169c53cb7bc8e636a`  
		Last Modified: Fri, 23 Oct 2026 16:59:04 GMT  
		Size: 2.4 MB (2378551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bab8398dbf3b06688405a170fca2f242c7888562428e8faff46e70345b0dd022`  
		Last Modified: Fri, 23 Oct 2026 16:59:04 GMT  
		Size: 9.6 KB (9617 bytes)  
		MIME: application/vnd.in-toto+json
