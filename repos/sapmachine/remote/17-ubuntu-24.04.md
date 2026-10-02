## `sapmachine:17-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:f7520d769b03b5bbe3533438627f2fd5153e0d6fa29e90aec3f2e9654b0e9b35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:10c03efb5a9fbd8af1dbd67482e8c2893ec95c82b6d147cbb542b4cf5b59b8f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237357478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec180ed1715f87ebd33c4266ba664b1f1a686350960299a2d7ef73e83f45e96e`
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
# Fri, 02 Oct 2026 01:39:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fe975ce366bd8a2cec7f851d3b7f2ce9c57f45bc11525c5214c12641361da8`  
		Last Modified: Fri, 02 Oct 2026 01:40:09 GMT  
		Size: 207.6 MB (207593056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1f6f8ce47531eaa20c9d1ab4c26694956b9e5ffc328b40359040559dfc6a9ca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c457b8768b92d93e20dda1a0319a0a6eaf2801726956d0e173b73c7cb14e42`

```dockerfile
```

-	Layers:
	-	`sha256:9c0c81045b1e4305ed1b88ba5b2a430426d1c599fe8b0165d6965cde0a059e12`  
		Last Modified: Fri, 02 Oct 2026 01:40:04 GMT  
		Size: 2.6 MB (2606260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941885d52f6b247d994cedfec460c8858620c74c3ddaa5ce1572fce9aab0fae3`  
		Last Modified: Fri, 02 Oct 2026 01:40:05 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c3471242bd5b22686dfe53df4a6ce09be52fc00ae3a27c9aafcb068c1fda98cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235181108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9d07b1a5f2b86da1bec5fafdfb5ffc2209e9bffc50976889b646aee07d1b0f`
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
# Fri, 02 Oct 2026 01:39:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70bb75505ec2fd9c0a92eec04498c07f71cc168e7d835477458f280fb8bbe89`  
		Last Modified: Fri, 02 Oct 2026 01:40:13 GMT  
		Size: 206.2 MB (206241021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:93e39ef6f3be95d7a33d0d72e1a1176420f2af9d4826ebf39afb07bc5d90c4ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7eb2ff6c9de0280f223ca8942c6c6be30060bd76bfa27b89ae59e782a4271c`

```dockerfile
```

-	Layers:
	-	`sha256:57b0df5706fa4cb7700fe76b9de6d0a9447ecf1036b81ea6220767fbbf09044d`  
		Last Modified: Fri, 02 Oct 2026 01:40:09 GMT  
		Size: 2.6 MB (2606872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab0f0d3be29d5d5ce9dbdc5a7f86965488eb6834e6093f7d22b3353eca2bbb61`  
		Last Modified: Fri, 02 Oct 2026 01:40:09 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:65c6bce119227fe97e41c97ea3004eca60a586af8a2c6ee578c8c5f68c5fff04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.4 MB (241387929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a8ca2dfbcedb5fcb359a39590f9168a011940728898d59d2eebaab21879edc5`
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
# Fri, 02 Oct 2026 05:53:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:53:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 05:53:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a8e6f20dd2d90d2449c249b455abf3a0e4efd656c177491ea87be85f51d5ec`  
		Last Modified: Fri, 02 Oct 2026 05:54:25 GMT  
		Size: 207.0 MB (207011420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1348ce053d1ff1f81b1e0bbd71b2607922530feb95c07150bb535d9a0a6cca5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aef8b585dc7a784e01dd3de4111e6b37e27e06fac743e35980d86cfb6914edd`

```dockerfile
```

-	Layers:
	-	`sha256:e7172bf392d120c35f81b20a8f983c7df560beb702ef8ea37fadf7f23ca4e0a7`  
		Last Modified: Fri, 02 Oct 2026 05:54:21 GMT  
		Size: 2.6 MB (2603860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a62045571bd48db8701067028787b892ff3c2c3d36c1a3786a3a0f654c742699`  
		Last Modified: Fri, 02 Oct 2026 05:54:21 GMT  
		Size: 13.5 KB (13495 bytes)  
		MIME: application/vnd.in-toto+json
