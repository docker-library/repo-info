## `sapmachine:17-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:4cfeddcccd66938a868d6c2e74df1a1029d2be53c3cb52f1360ba6c7960db501
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:98344777661a5c1d59dae298a1a1ed1a630658ebd45fe01a3b6cab9112e43e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235345034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e63b09895bb4075adae5c3f02baabb07b4eb9bec7c5c947ada790b3c1c6e258`
-	Default Command: `["jshell"]`

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
# Fri, 02 Oct 2026 01:39:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c87318025564c483f3c57bb644ce00391a2eb2ba93ee29596418b5d8341a306`  
		Last Modified: Fri, 02 Oct 2026 01:40:07 GMT  
		Size: 205.6 MB (205580612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8f39db6581712c4cd579b733868a9bce6b33f10d483e1539e35169196da550d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a810f01b92519d3473536793a216703f470dd2475354d32dadabec02d21191`

```dockerfile
```

-	Layers:
	-	`sha256:d6e8f46cdcfc61ddfd9a342a8500bb0cca24e29a3ae436bff2b9143c9363bf52`  
		Last Modified: Fri, 02 Oct 2026 01:40:03 GMT  
		Size: 2.4 MB (2356602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acd37ccff96c3ba176805e3eab9429bc84a63c9c5c71dca48288bcc266103db3`  
		Last Modified: Fri, 02 Oct 2026 01:40:03 GMT  
		Size: 11.0 KB (10990 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0a26bd313298f23c22b3d2fd9263e514b4aa372ffa735324867d886fc20e939b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233164160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1683f2fba82ea5f2a14d94ebf609e1569861721c520cf0dc40ab5b45f2e11258`
-	Default Command: `["jshell"]`

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
# Fri, 02 Oct 2026 01:39:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02042ad7057e25db202bf68eedff5ed33ea73b4778e8e1786a91ebe3da30a3`  
		Last Modified: Fri, 02 Oct 2026 01:40:09 GMT  
		Size: 204.2 MB (204224073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d239ff4b92b737821c778e97433abe7e61fd42a4ec30f96ae7c0cbf9df3700e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ffb69b42f556ca6db0723d6a20187664215a16aec5f826df580fdc4c009236`

```dockerfile
```

-	Layers:
	-	`sha256:7823c702dcafa19c945b9fe83b9162208ba35b941eccb124e6f06b043f463a1e`  
		Last Modified: Fri, 02 Oct 2026 01:40:05 GMT  
		Size: 2.4 MB (2357109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a635e5bebea593e4784fb6b587ed07422ae90890f450d0e4eb1fd9ce969fbd`  
		Last Modified: Fri, 02 Oct 2026 01:40:05 GMT  
		Size: 11.1 KB (11142 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:89532e799428d44aae3be90716f75f6ef11ba1d8d186a8d6b3675e3e3ddb5a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239038943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e02f03ce643c60800576369cb954eb39befb80414e900020c3d84fbcfda2062`
-	Default Command: `["jshell"]`

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
# Fri, 02 Oct 2026 05:53:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:53:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 05:53:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cefc9bead462d44ce32d43e28582d323bf0f8abee3f208b93f2a9fa110f4fd`  
		Last Modified: Fri, 02 Oct 2026 05:54:23 GMT  
		Size: 204.7 MB (204662434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4a6bdbe278710e662e3607fac9ca0d8e39f467bb1a97f81bc9e3ddd997833611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2365131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585ed51808782d08418d8189abc7f53b28d47dd561c74b984d890976154b600f`

```dockerfile
```

-	Layers:
	-	`sha256:94ee60816e1c4392ea3c32a7f401d2c7613a43086b12da6aeb386fbe0f855356`  
		Last Modified: Fri, 02 Oct 2026 05:54:18 GMT  
		Size: 2.4 MB (2354073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:146ecc8d87d796f06354cab6a21a58a5476bda2fd281bf2234af6a06cdd7ca70`  
		Last Modified: Fri, 02 Oct 2026 05:54:18 GMT  
		Size: 11.1 KB (11058 bytes)  
		MIME: application/vnd.in-toto+json
