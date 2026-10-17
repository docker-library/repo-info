## `sapmachine:27-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:5373e8f74a49c2eba054e880f2e347d9b39d8b484e1dbd9abefbea0dda4d4ef9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:a0aa50bc3645bff41f362289799ecc959b8703e542b96e45422fbd5748fc5717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167436324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f41f499bda2e30f759dc07b8dda8cc58a87b2a551274de3ab2000eeb6b90ebf`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3648da053333dd5b33fa08b4e8de01025502ef82ab890981c7cae9d6ff0b7dd2`  
		Last Modified: Fri, 02 Oct 2026 01:38:10 GMT  
		Size: 137.7 MB (137684697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aac5c6b64d30fc89328f332403e6fe19693c7156e776afb20ca43dbcff9d26ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe0a1c774e12af8fa78192ec4a536c6161fcb4f27b2aa37da1a9828964061ba`

```dockerfile
```

-	Layers:
	-	`sha256:52ecb3ac4467df94c057d22e0dcee7bc88b5663d3e107b81b3bd7254374dbddd`  
		Last Modified: Fri, 02 Oct 2026 01:38:07 GMT  
		Size: 2.3 MB (2321166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2658c813f9444f589fde3d3215246154bdcf01ec20f09337e3a5a1dd213586ca`  
		Last Modified: Fri, 02 Oct 2026 01:38:07 GMT  
		Size: 9.6 KB (9579 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

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

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

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

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d3f557c51253ba0554ac59627900163e7a199439eb580cfccf1bdb6ffe4bfb5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171384634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35705740bba3d463e2077c6908d249aa44e8f53627971c8beb9c1c6478406612`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:33:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:33:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 05:33:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f6f17a1ba511318bdd46c02c1277f93c5db410f21ab59c62cee5116c980992`  
		Last Modified: Fri, 02 Oct 2026 05:33:56 GMT  
		Size: 136.7 MB (136681426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:10bc230489a28f26acacd4b298bc1bc288a2180de5346ef2af36b44ef12ca2ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0963ebcf58e5c9508a529f3dc3732626780f155e519a234aa0eca2855c9bb54b`

```dockerfile
```

-	Layers:
	-	`sha256:b9df40e8f363373d8339cc44b0b56ae83fb3b9339f254f429051f43f28e9164c`  
		Last Modified: Fri, 02 Oct 2026 05:33:53 GMT  
		Size: 2.3 MB (2319978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:965e017d7af3c04438b3c3cef4ac1290ef48c97c12ff64ad8c0c45591adad786`  
		Last Modified: Fri, 02 Oct 2026 05:33:53 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
