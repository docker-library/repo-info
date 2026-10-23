## `sapmachine:27-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:99993aad52d1cc530ef0c55dc1265570355dca60550192558ccb5f972c3e8d1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:e0087d9d8dbe58fb80918721d4a521f2d6ef030f10dd7b2523d4565eee7ca157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167504064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ae7c1eb2a99ac1404fa5d2ffd9af7b1185b420b8ad1e4be8d4d9a9a6cf1e54`
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
# Fri, 23 Oct 2026 16:54:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a6a025d03729bdfbe45ba89d86eaa023eddd959c2d3cb536064da2afe13e97`  
		Last Modified: Fri, 23 Oct 2026 16:54:55 GMT  
		Size: 137.8 MB (137751588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dda6599d30f22c078dc85d4661a79c5dd74ee0af6370cf57789eaad53b07be73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dfe6dbd2f2d7764c8da484b0adc58683c5604a6e50cd0e0257976550f7eda0`

```dockerfile
```

-	Layers:
	-	`sha256:7b9d38387f45373ff961ff6796c5001b84acdc445fb3537610b8a17462ff573f`  
		Last Modified: Fri, 23 Oct 2026 16:54:52 GMT  
		Size: 2.3 MB (2321306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d67fa57c8d83f5aed7b19229f164602cc0888487408f1142591bb6d1ec1515`  
		Last Modified: Fri, 23 Oct 2026 16:54:52 GMT  
		Size: 10.3 KB (10331 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:39c431d75e64466f9a6325c7ab821a99204e5ea51881214dd6450aca36610a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164479632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e3783d3d1182523ccc9e47ae3ab2a1c749630b97cad4d3a7d04095144f124a`
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
# Fri, 23 Oct 2026 16:54:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18ae48cd635d1bd1d735da08798dc178111f7238ee6cbac96c86e0c9fe7c904`  
		Last Modified: Fri, 23 Oct 2026 16:54:50 GMT  
		Size: 136.8 MB (136794909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a2e950f52cfb30d24fb66f0206c3dbf4105971627abfc29024fc70e877b2bab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:077d71ad843eb4bd43ca591e47e3d769affd2f0b8eab9f1d336b4682223e1db7`

```dockerfile
```

-	Layers:
	-	`sha256:f633dff23dd88492e1ba531265c66a41d52a27cbb19a4c05960d6e486861f3a2`  
		Last Modified: Fri, 23 Oct 2026 16:54:48 GMT  
		Size: 2.3 MB (2320999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0aba1c155dfcbd7bdfa3fe11a32f9e1f141078dbea14f8d07c2c7c1d0c442e73`  
		Last Modified: Fri, 23 Oct 2026 16:54:48 GMT  
		Size: 10.5 KB (10459 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f7dffaad45376e516a7c2c97f5b4a78c11401f5c8f7076fce9a40165e18091b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171426141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5861fb1ab42881924e79826d3351f2699c806e17b9c9b480c754d501608e12b1`
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
# Thu, 22 Oct 2026 09:55:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:55:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:55:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede0d083f4ec8dee74fae27a78cca1105cd501e5e051bf86594dafb62a3a791e`  
		Last Modified: Thu, 22 Oct 2026 09:56:02 GMT  
		Size: 136.7 MB (136722504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ac8cf4699a5371103af4acf638d70cd6afdf5eaf5ea0bc8dee5233bdad033d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0753684c9a369b51320e83aabc801ff0264c615f61366b90ed70138e6b97b02`

```dockerfile
```

-	Layers:
	-	`sha256:f170711787c24f2186bff8316a8370b47a0b621a07d4c0805178506bce15df75`  
		Last Modified: Thu, 22 Oct 2026 09:55:59 GMT  
		Size: 2.3 MB (2320098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d034f49e87746d3ac333ce8af08859c6da7df53c85562102ef245b86f2b8db9`  
		Last Modified: Thu, 22 Oct 2026 09:55:58 GMT  
		Size: 10.4 KB (10363 bytes)  
		MIME: application/vnd.in-toto+json
