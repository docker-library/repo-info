## `sapmachine:jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:1856a539454ddae6079801c0bfe3711c34ec5a7306797a9db1997450247d8065
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:215240c184d3e74c32ff3952e91744b2e0ceb5510f952cd81131be0e758bd217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167437369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87d13663c137a00ebfe76007f95c439a0ca1ec576c97fc250592371af9ca9f8`
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
# Sat, 17 Oct 2026 00:38:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f96ea9ba0214ed22b4196aee8671f59444442dffe133ee2f39fe87882f9ed0`  
		Last Modified: Sat, 17 Oct 2026 00:39:17 GMT  
		Size: 137.7 MB (137684893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:efbb73f4fa1f8125e92ca3e8b07820d850bb1e5e3a8e0b45d70c09d3bba61f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682adb769d61837ee2d2392a5e828c4dc51c606d7ab82eddcd0cbaeee6446544`

```dockerfile
```

-	Layers:
	-	`sha256:176d8bbb1b5ade7de40601ee61f997ce47ecd0fe0a6c65c2a01802449858d5cd`  
		Last Modified: Sat, 17 Oct 2026 00:39:14 GMT  
		Size: 2.3 MB (2321166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc2a7bf231203110aff3a53ba58368dc895fb69cac50570c61810246ca765039`  
		Last Modified: Sat, 17 Oct 2026 00:39:14 GMT  
		Size: 9.6 KB (9578 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:72277f847dc0685ac519361c5540fca85cc81957bef142ee29c164fc3b9bf0a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164410057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0e9f5cf134e137d5c5d4ee6cd61ad2e037d01a5846e7e499a388c9459733f6`
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
# Sat, 17 Oct 2026 00:38:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6664868186674e9accd0d54efe4080fb6a5dbaee498ceefe0534b3e86eecff9`  
		Last Modified: Sat, 17 Oct 2026 00:38:47 GMT  
		Size: 136.7 MB (136725334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cf7739ddb044c5dc893f5e589dc400661d6d4513d4fa0513450c8d54f66537cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a468327d1bb5189af0a6fc0047c92db7df9739ceb6291bfd30736a56eb29fd`

```dockerfile
```

-	Layers:
	-	`sha256:efe47298a080ed0a4c26c37ba7406d15e818fd6c5c39edd8eeb378e361b1c5b9`  
		Last Modified: Sat, 17 Oct 2026 00:38:45 GMT  
		Size: 2.3 MB (2320835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b3f770632e46e6aa8fb62ba6e23cee5d1c7c1ae720c926755a3e964fb731aca`  
		Last Modified: Sat, 17 Oct 2026 00:38:44 GMT  
		Size: 9.7 KB (9683 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ee4b2e7004959ce4ad8bb1833a76b35f7e9345bb1634044778ce79d536114513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171385053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbbc21356af16c1e52b0578b4fad4598b8daf74694e93296750f26fb9306907d`
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
# Sat, 17 Oct 2026 02:26:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:26:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:26:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44e0e1975c06997dc5dceffcef68dceb2b98db8662cee0366199b894277674`  
		Last Modified: Sat, 17 Oct 2026 02:27:36 GMT  
		Size: 136.7 MB (136681416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d2873e3d2be16a19064ec21058fcc4cde5acc26bb24a1bfa5746ebe6f67ab990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750dd6f6c68974df735e495b5897ec7be3c051131a2e4261da23a88480f347f9`

```dockerfile
```

-	Layers:
	-	`sha256:1012c80a7fe3118d9d390810a27a70445aeb6c9189c35bd5915f48f222598fa4`  
		Last Modified: Sat, 17 Oct 2026 02:27:33 GMT  
		Size: 2.3 MB (2319978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c08ea3e9e32473ac7ce6928099ba961553ad8fb2f32634178a472b8dfd672af`  
		Last Modified: Sat, 17 Oct 2026 02:27:33 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
