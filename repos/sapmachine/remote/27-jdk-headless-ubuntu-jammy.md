## `sapmachine:27-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:103d26d3f6e518ad1853c70bdede27a7515858fdbe7c95e9cecc355653b78d66
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

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

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

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0455b1e08efda3fe5af076def33a8eedd1f56687a6393cc5bc4ad8ee103bdd75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e7276323e8b2282dcdb73ade5b6fa1bac892820546d86cd3e18e4407b7ef63`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:42:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:42:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:42:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d640a594e8e48d839b584033842143ac0b497a24daf34f75ae11d064e1873d0`  
		Last Modified: Wed, 16 Sep 2026 16:43:05 GMT  
		Size: 136.7 MB (136675548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aa4edd4370e254903f510ba3e58c37fa6e15fd8041ff865a2579883ff6512631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a116819a40adec5a2bcaf3cc47aaac0c2f5e92a6bf6acef5207eb6ee0f99d9`

```dockerfile
```

-	Layers:
	-	`sha256:068f83c183c03b3dc57ed96d9a58215e77402186e0d8ba6633e90df1b23ebc4a`  
		Last Modified: Wed, 16 Sep 2026 16:43:01 GMT  
		Size: 2.3 MB (2319950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5b93d6889b48ea1c180ff1f876b3a0ac212175a9f7a65116f137be0983e2513`  
		Last Modified: Wed, 16 Sep 2026 16:43:01 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
