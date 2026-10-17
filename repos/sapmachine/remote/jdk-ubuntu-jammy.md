## `sapmachine:jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:5db54b9b93c98f0553756ea7cd5a48954415eb4caadf7299ddaa15c97fc2edc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:26e766baa328b6f2583f42a92ef44275486a32a2437c40afd58ec393f6b5b4e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168970282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd41117b04fea72f84e68bd1d9a01930700c4e1459e4d5817aa18d04555582ea`
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
# Sat, 17 Oct 2026 00:38:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed84bd7324a5fe000ced725a3c39b719608a600b7cdfc9486806b95344c99db`  
		Last Modified: Sat, 17 Oct 2026 00:39:03 GMT  
		Size: 139.2 MB (139217806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:33fceb3e29038c05c1cf70234b389f47340e903521119a94f3510aac35a59f8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2585228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfd98eb2eaa576b3019e08a6130b58a7ee27c5a29bef46a7848abaa416ad3d5`

```dockerfile
```

-	Layers:
	-	`sha256:60cc96f252e2734ab3d9732944ef11d0bc05325c07b2cf91616775ba09f30578`  
		Last Modified: Sat, 17 Oct 2026 00:39:00 GMT  
		Size: 2.6 MB (2574476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fbc11a4dcda62a999699d0d0084c697e90c65d877e38e0f800971c1714b0146`  
		Last Modified: Sat, 17 Oct 2026 00:39:00 GMT  
		Size: 10.8 KB (10752 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2cf1f382265f049890e23a52c719cb6e4a7c3f32bd9801199611a76ab0301766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.9 MB (165943310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f741363b9fa0f1015acbe99f337906904941150c6bbe2e9efb42f60ac72ca3`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:38:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5664e00137b431cc53385ce52a2a29c1be0129067fee31353218e7ea3f0219`  
		Last Modified: Sat, 17 Oct 2026 00:39:12 GMT  
		Size: 138.3 MB (138258587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:acea40bde6f28442c58c38b8b81aaf2204c8154f711d14741f0005b54ba37eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2585107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e66dcd2acba6ea9589d9357417586238bcbe636269800f8e473e3ee6704bb1e`

```dockerfile
```

-	Layers:
	-	`sha256:95d7c58bc068b40208a98e6c47026b3986bc8ef53acc6fc7b5c6283312496368`  
		Last Modified: Sat, 17 Oct 2026 00:39:09 GMT  
		Size: 2.6 MB (2574203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e03a6c89629468b1a6aab1ab2fb1cf4343aa7cce6f4d5acf68f630e43723e456`  
		Last Modified: Sat, 17 Oct 2026 00:39:09 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c1e5656f082bb073585e7f711fc1d38e48d99739c795a128ee8126f2ee3e5c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.1 MB (173132304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069179772c9401b4ab01e90da5d773339350c8511e4375028885615869ed9bb7`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:26:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:26:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:26:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d884a58b267dd6e3648d20ba864d988b3e3ee0a2fa7e78908a53e399773c67e`  
		Last Modified: Sat, 17 Oct 2026 02:27:37 GMT  
		Size: 138.4 MB (138428667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8ddc0ae6a2c8e745adaab5c91bb8043d5307ea03b373466775e8d58f776629a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2584222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e5db168f2d089e5f14a33ef5c1dd22f3cb4592e6c27a706df4ea060ab8e2e38`

```dockerfile
```

-	Layers:
	-	`sha256:6b46b0d087ebf3218290c76aa0308a5cd7049e8ec402551e64250aba80841bf7`  
		Last Modified: Sat, 17 Oct 2026 02:27:34 GMT  
		Size: 2.6 MB (2573402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d97593db5900ede25236bbbb668fa407e51ada384905196803a21cf0cdaace2`  
		Last Modified: Sat, 17 Oct 2026 02:27:33 GMT  
		Size: 10.8 KB (10820 bytes)  
		MIME: application/vnd.in-toto+json
