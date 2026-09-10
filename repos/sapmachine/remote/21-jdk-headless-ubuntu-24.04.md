## `sapmachine:21-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:95b6609032a73d11bf8da1c29e8caf33b8f7980c28603e8a8eeac1f81199f703
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:ba8b0f3ae5694667c93b11aa57714c60054b1a47a2e1afeefc9239bc0a6a545b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247856525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a4f9e3ce3f767ced9b69e8a6474c7933bbabb5155ebe9b1ce457f07615387f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:41:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:41:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 02:41:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e799292034d7ee55e589762dbc2e82953bafb77edf81a63beda9525a770d9b`  
		Last Modified: Wed, 09 Sep 2026 02:42:09 GMT  
		Size: 218.1 MB (218093272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6fe8485526b50024fb22b385eb68bc57b98fb49e9450d17189f6188ff6f857b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60f2c65ba352f5d46b61888156859366cec209e35f7a94ff884116467ccef93`

```dockerfile
```

-	Layers:
	-	`sha256:9e77545c3cd437da19d6683323c585d055f02c9e920aec247083df1fde2137fb`  
		Last Modified: Wed, 09 Sep 2026 02:42:04 GMT  
		Size: 2.4 MB (2358221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fb02b834532be013b395a4142458bc607133b29400c493a96325552ddee43d3`  
		Last Modified: Wed, 09 Sep 2026 02:42:04 GMT  
		Size: 11.0 KB (10990 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0d93af6d828677791145e6bfb29e11cb1361d192292d36b345f92ec55b9f0166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245234533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0250a46a971dd141e40826f8c838e696eca9ead71fa59d576c9bb44cf3cf96f0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 02:36:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bde52de4d9a693e4da67d43884f254666cd7eb8ba7eea465767825d065f741`  
		Last Modified: Wed, 09 Sep 2026 02:36:41 GMT  
		Size: 216.3 MB (216294518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:03239cc8ef8150ed112c371ea0d9b63ec465aa2ac80ae0c349afa58c2415389c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2b485dd30fe4a0cccde5e1d293e9c4b2ec48a6b1946b0369ef818bf5a6af09`

```dockerfile
```

-	Layers:
	-	`sha256:26b50e4e38848e8fddfc819a7d1e9574c2b6c45d5226b48e8bfc5ede62213829`  
		Last Modified: Wed, 09 Sep 2026 02:36:36 GMT  
		Size: 2.4 MB (2358728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b51c0f9b5fd0ddaea3d481a2d7a6b5671b80c1b6cf4af0e0211873af7c46b38`  
		Last Modified: Wed, 09 Sep 2026 02:36:36 GMT  
		Size: 11.1 KB (11142 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:106d2d105aa836b81bf8478a52cdee7e7c76e77b99d55df5c1022f3e94bbf6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252154926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213480e9de750f5d210156e5ccb2712d74e68447afdb183f937269f1655aae35`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:25:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:25:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 04:25:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14e5cfd0a47122852a9394d26c07cae6456b13cb6687f5a063d358713b285ea`  
		Last Modified: Wed, 09 Sep 2026 04:27:19 GMT  
		Size: 217.8 MB (217778047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:360619dea3ca5b3f9fbfa6e02a5dce7df678820018ae1e22a7fdd625baec1b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde6589f84eb7b3f7243c2c81b8128a56688ff9b7d9dc389912b6ea890102e44`

```dockerfile
```

-	Layers:
	-	`sha256:9a96a06b1f0fe5018fd7d36c8f1779cbebf0cfef1024d74d82cd1046fdbb257b`  
		Last Modified: Wed, 09 Sep 2026 04:27:14 GMT  
		Size: 2.4 MB (2355692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c762a9aacbcb91f87121519c630e981436c69852396f0e3c18441c2a28015b83`  
		Last Modified: Wed, 09 Sep 2026 04:27:14 GMT  
		Size: 11.1 KB (11058 bytes)  
		MIME: application/vnd.in-toto+json
