## `sapmachine:jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:2373b3bca01d038d4d59e69b1b1cc87d72974047c2ad1acfe97bb783174b9de4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; amd64

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

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:04aa5b321bd0d6ecdbd2bc77fbf50f987455d388bcbd99f259b78835f59be313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164403047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1797b83df3156486049a3086baa1fd9f97ddb8f856fa225b1bd03f335a4e0f38`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9165f80ef39345edaa27c49ec822614ffe5c6f84b5b0672c19efff542ed6053`  
		Last Modified: Fri, 02 Oct 2026 01:37:53 GMT  
		Size: 136.7 MB (136718911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5fb4a80813821040e78653e3be03c4b2f17c54820545f3b58f0f0cb630b8723d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ef20ec9a79c3c2238062419d662a520dcec57e292b83986c18ae389cc7b410`

```dockerfile
```

-	Layers:
	-	`sha256:c8b401c2a49e35cb243053db1cc2d76b2cf111440178708a794f7d7da5735def`  
		Last Modified: Fri, 02 Oct 2026 01:37:51 GMT  
		Size: 2.3 MB (2320835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d0c409da1902923e9b747d0b2cda4a2369e486fda09eb2b4e96dc91b16b532`  
		Last Modified: Fri, 02 Oct 2026 01:37:51 GMT  
		Size: 9.7 KB (9682 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; ppc64le

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

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

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
