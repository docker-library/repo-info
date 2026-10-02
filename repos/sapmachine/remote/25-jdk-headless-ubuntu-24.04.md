## `sapmachine:25-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:9ea53811f593768e59ef738d7480ba856266aef2e81b0879bbdf2613533c4351
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:1a7ba3814aff532495ee874e8cada79d36eefc737c7247cd4007ea7bd0f4547d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255370059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75a9a55ea01b754012925cc3502218be19aaec1f7f0dce457c91119fc52a6d0`
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
# Fri, 02 Oct 2026 01:38:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446756bafcf83d991bce2896764ea8c9e2c006bcc1049534d37d0f03af869225`  
		Last Modified: Fri, 02 Oct 2026 01:38:34 GMT  
		Size: 225.6 MB (225605637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6a9de9e02150ab3088fe0d96421ed497dd97e4cacad70cafbe5d5d7299bceb1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6377615f544f6954026177190f7410342ac42747b519064dcbceb04a90af80`

```dockerfile
```

-	Layers:
	-	`sha256:4f321d56cced430b2694e2c2ef16b81f1e12e9e928f0995347ff58708852be80`  
		Last Modified: Fri, 02 Oct 2026 01:38:30 GMT  
		Size: 2.3 MB (2348725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:277f7c044012aa2bd42198e1f700f28404063123aa11b645e9d6e14f0c2119a2`  
		Last Modified: Fri, 02 Oct 2026 01:38:30 GMT  
		Size: 12.0 KB (12021 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c239f053c28d68bf7d5f6a46d0028c95b2c8af812624ea667eeaac6c9128541a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252151204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e10b30e03dc5d7a63b2eeb1ca1781765eac172621c1371bf758d3218cf925ac6`
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
# Fri, 02 Oct 2026 01:38:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53562df4bbce20fce05ae33eaaa091f29329bc5031f42e5ea3852e4ad3f78200`  
		Last Modified: Fri, 02 Oct 2026 01:38:24 GMT  
		Size: 223.2 MB (223211117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7193d18429665eebe586b2c431d3d322d2edbb4ff485cf76c3b50561f5b139db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ff11d1e863f63ff0b3d4dbed11f5f82a67e8be8084e53dbb409d8356a407a86`

```dockerfile
```

-	Layers:
	-	`sha256:de361f4f809aa3690de598ff19f619cc75eb663f8202d903337817832e856190`  
		Last Modified: Fri, 02 Oct 2026 01:38:20 GMT  
		Size: 2.3 MB (2349265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b66d334f95255387357cef15e1a1987ae7696b712eff814306963f93eba511e0`  
		Last Modified: Fri, 02 Oct 2026 01:38:20 GMT  
		Size: 12.2 KB (12209 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:80cd3f46967212559040b148118c19f18e4c2f9d95beb540ecfa18cfe0a9a717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255582479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ba9fe7d3da2201751d169a8af68aefd62d5b60b3f354974790c2d7ec986afc`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:06:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:06:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 08:06:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539cf6f3ff0bc8475696ecc8ef4b6ebe6310c9a5882c27707c483fb65cac2d0a`  
		Last Modified: Wed, 16 Sep 2026 08:07:30 GMT  
		Size: 221.2 MB (221205521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e4846cc936049756f86f1ff912f2704a487f11a4849626187193fd500c825627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6993f792ffebc432e795075ec214440a6ba2e4d3a726ee5ca12611ebd0afdb23`

```dockerfile
```

-	Layers:
	-	`sha256:bd6c7d290c0fe3e97470ddd435f840337c26f96c7b5ec720d8ac484477f4c7f8`  
		Last Modified: Wed, 16 Sep 2026 08:07:25 GMT  
		Size: 2.3 MB (2345596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ee81133c7c1f04e8ce9b8c875b75cdaeb1baa46a70505e038b37aec27b203de`  
		Last Modified: Wed, 16 Sep 2026 08:07:25 GMT  
		Size: 12.1 KB (12107 bytes)  
		MIME: application/vnd.in-toto+json
