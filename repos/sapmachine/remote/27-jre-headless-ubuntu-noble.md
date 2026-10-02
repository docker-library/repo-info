## `sapmachine:27-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:c545c2e5082cc1162202a48bf7da8b77abc29da0c3a4a1511a3bc1ec2ebd7108
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:f9b025f3e7ab6e4ad2487367f7e0b39d14900348cf61de147b982298f6f48a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91527451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a79f93426702c394aa63139d41067b08f54cb4000265dcb3852875378ad966`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fa9f90e40b9ec272077c7b421e6a62a35b5384e58fe07e9ab36d05a82e13c3`  
		Last Modified: Fri, 02 Oct 2026 01:37:20 GMT  
		Size: 61.8 MB (61763029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9b1bf4715e9545749996f0b0f0db12ace4f6cf85d9a4ab8a22608b27f7f9accc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2288744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b4f2f5e7bd1d9007177f482f9ac0cbef7aca2b06d330cc55e993ba7cedf601`

```dockerfile
```

-	Layers:
	-	`sha256:7cd4d3384b2b8325441839defe141b4f40d47eef05cfd0f15218f5fbe945b878`  
		Last Modified: Fri, 02 Oct 2026 01:37:19 GMT  
		Size: 2.3 MB (2277855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfa30f5a52e9529e7db7a7389d1b36fb8d5011350070cecba6a59aecc9cc63e0`  
		Last Modified: Fri, 02 Oct 2026 01:37:19 GMT  
		Size: 10.9 KB (10889 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e9c805bc21b52982d80703bc5cda03619f09ec31a7095c4d942b1abcca308398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89576676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b995769aeef3603853c540f6a1881c98c76b8579c6851a6333ac92be6d1715`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:36:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:36:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:36:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e2f946a55d94d960b49988ec3eb3ae931ee9b3a58612187044d6bf1ab90e1d`  
		Last Modified: Fri, 02 Oct 2026 01:37:03 GMT  
		Size: 60.6 MB (60636589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:60be765eafc512f95a33be32c89b6dddd160e0f7e0eedd457ba627eef8cabc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2289400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4262af59146f236c18262f10a0b2593eb761194a8f8a91ef443a4a69243e3e3`

```dockerfile
```

-	Layers:
	-	`sha256:327a6e5034e4841d70507d41795f6686dc234dc8822e7efc10beecfeb2eebd9c`  
		Last Modified: Fri, 02 Oct 2026 01:37:02 GMT  
		Size: 2.3 MB (2278359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1cee7f9fc06a6558bba794a80185d06201d532723383967eb3b106d65f62c1c`  
		Last Modified: Fri, 02 Oct 2026 01:37:01 GMT  
		Size: 11.0 KB (11041 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:63095d1affdda40af3132c069c4a2fc52c6fbd28c064ab1ac2188b90a33c7894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95556207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a306e9301dbc8e7771e26790170d790db416b44c143dde9c4a20b226c430b02`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:27:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:27:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 05:27:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca00c27eed46d7b8adca9af13fb8f1fbbbaa25f78d8a6131fb97b269551b9a91`  
		Last Modified: Fri, 02 Oct 2026 05:27:51 GMT  
		Size: 61.2 MB (61179698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f0149fa95cc0e1369fccf63d34cab67cd76496c9c0352de78f91240e464235c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2287600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8eada5e561102af586106d5c7ab3cfc14c12b589d06b3cd4088d4c22aec826`

```dockerfile
```

-	Layers:
	-	`sha256:b460c6a63578b4adef1d9f82d94b31795475b40c225c81e38d943d34a81ab5c9`  
		Last Modified: Fri, 02 Oct 2026 05:27:49 GMT  
		Size: 2.3 MB (2276642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5a1f767b30bd0f507f988bf04fb6cfd50af88974234b6ca87b9d883b8b5efb3`  
		Last Modified: Fri, 02 Oct 2026 05:27:49 GMT  
		Size: 11.0 KB (10958 bytes)  
		MIME: application/vnd.in-toto+json
