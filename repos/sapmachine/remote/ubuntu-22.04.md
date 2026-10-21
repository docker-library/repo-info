## `sapmachine:ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:51c17a78dc43e7ac01b76b277bde46f3585821e7a4a0c8bf7400e022c57831ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:e498c9a07d1e6cd89b05416b1586c5ea0c5d9a978b6a042139d9efc4a75d5e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168994031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f8ab59acb86d916fcd51c987ea1d2c50f4c2c3a2e2cb59dc865c415402a7f5`
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
# Wed, 21 Oct 2026 22:12:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:12:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:12:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab45bc4b424f80f1a69df91baa5b9aabc56d385d8831fb7234a8e11ce065002`  
		Last Modified: Wed, 21 Oct 2026 22:12:52 GMT  
		Size: 139.2 MB (139241555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:72730a8232829502c55ab8183044199820ab15863a757db0419807bed9884f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5f0e213f0191d75a9d7f771cd93292788dd816cf0350c75ae81b03f307d6f7f`

```dockerfile
```

-	Layers:
	-	`sha256:9e2bc76007b59ab54afaac1628c90f7c6adf35ee762f4abe08de5d7aae8624b0`  
		Last Modified: Wed, 21 Oct 2026 22:12:49 GMT  
		Size: 2.6 MB (2575872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82a09da2b19c57a7352b800e53004ef5fd14695f62cd3517db07ae72838cc765`  
		Last Modified: Wed, 21 Oct 2026 22:12:48 GMT  
		Size: 12.1 KB (12107 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d320ed539600e18f53806edc51c0c199dab11926f92772eb50b869ff67f1eda9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165984342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62fea2949f676ac486d8b4eac943da7c8ed42c24b2cab7cc4574e8421facaeb4`
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
# Wed, 21 Oct 2026 22:45:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:45:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a4817d92cebf4832e3122e18ce9f8e137426f4932720e8e4a2e46e7c2de9ac`  
		Last Modified: Wed, 21 Oct 2026 22:45:43 GMT  
		Size: 138.3 MB (138299619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fbbb2e2cf048431b4588f0dbbd3fe6d052a7d44d0862edfd13180505b43027b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490b2725d82e7183bed9095d0d939926cde79161a3d0372f0e9c206afddd4a06`

```dockerfile
```

-	Layers:
	-	`sha256:8e35a783450450a3cef642e2a874037926f4c1a481c53ba0400346cb44e6fbe9`  
		Last Modified: Wed, 21 Oct 2026 22:45:40 GMT  
		Size: 2.6 MB (2575647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6829b385b4f890bbf971fb58aaa31ed472b0cf868d6a38d2a701000ce62a4c0f`  
		Last Modified: Wed, 21 Oct 2026 22:45:39 GMT  
		Size: 12.3 KB (12306 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:ubuntu-22.04` - linux; ppc64le

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

### `sapmachine:ubuntu-22.04` - unknown; unknown

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
