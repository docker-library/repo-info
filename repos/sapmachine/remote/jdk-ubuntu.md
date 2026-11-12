## `sapmachine:jdk-ubuntu`

```console
$ docker pull sapmachine@sha256:c23c8257b5d660b1040137420f25937be180c368b6e361552a418a11a346bb62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:8c594b39a9d75c018dbbbe3cc9e28b2c7670396056ae93a4318166f10e8ca31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169439980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa96624edbb9163ed528332db6d99966f68d7537728e5fe6060b52c8ce6d954`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:38:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:38:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc23f1b1cbf43480fdd88fa397013ce647271cf99e115234870d8aad3cb13ac7`  
		Last Modified: Mon, 26 Oct 2026 23:38:21 GMT  
		Size: 139.7 MB (139672368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a8a5fd8b0737455aa5b2d828010356768a217447eabc80f5fe7627a7c9fad3ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2568091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa029ace96c9d79a1b7569cc3936597f9b58866779f65c0c1ae035ec040f006`

```dockerfile
```

-	Layers:
	-	`sha256:ca4d6bee4ffbe86d8f462cb762fcc9f5a4efa9078d795130823cb94b409bfd55`  
		Last Modified: Mon, 26 Oct 2026 23:38:18 GMT  
		Size: 2.6 MB (2552181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c997564a6056a437a68ae209674ab01019a54c82434ec09fa9a3f88b8d752768`  
		Last Modified: Mon, 26 Oct 2026 23:38:18 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:58c09bceef051d022c2d8e1693a582ca15fcda963ed3e8dddb6659bb8400cd69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167728409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901f9c80cc01d3e541d9ae465c9c80e3862628c47b0529ab2c9609f4b7964c13`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:41:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:41:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8565c6ecedc659401661431b078f3f9c7987254807a51844fed7f925e262019`  
		Last Modified: Wed, 11 Nov 2026 23:41:41 GMT  
		Size: 138.8 MB (138763151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:92bad5f30924ea1e58f1b67e8f680a51301d7109ae706d067e70d0835c15fd0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb44c83053d9342f253f6d13d71c7f0a54c6d45590098d5a4d34e6cf66e5e19`

```dockerfile
```

-	Layers:
	-	`sha256:a9698c8fc0aaed8cc6015779e96c8bb9b28dd7fbb83b7f0c9ad3ff933b213128`  
		Last Modified: Wed, 11 Nov 2026 23:41:38 GMT  
		Size: 2.6 MB (2553490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e9e6b1d516bb0e16de9cb53ae9f095deaf07fece9b36e744c17394e79307da3`  
		Last Modified: Wed, 11 Nov 2026 23:41:38 GMT  
		Size: 16.3 KB (16254 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e7703983d0d8c6fcd96858ac6671f90af0eddbc1b30ca9ab169a4876692190c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173329100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3939b0d48695c28fd5aa3e0fe009d8162f833ab7f5ad1dec19f3590bbdd24d3`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:26:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:26:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:26:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ca9b998955e8e4a2237b976ad7367168e0ef346678cc3677b7b2468e52457e`  
		Last Modified: Tue, 27 Oct 2026 07:26:51 GMT  
		Size: 139.0 MB (138950792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:59ff3468de7c4584084eeda30991add95a6d8af9e0fcf4b9b12b83d938046246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2567216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4907bb345cec5a526b30c66e7802a5f8691deb45c4836e515f747334af7b1b10`

```dockerfile
```

-	Layers:
	-	`sha256:1e3ce097129f2b14d5e3d7025455e548c23dffebc2805a2de47240b2f42b0ec3`  
		Last Modified: Tue, 27 Oct 2026 07:26:47 GMT  
		Size: 2.6 MB (2551145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96a13dafdecc476867a3ded041d9bccb732589a2022b8f7d0f8cc34550d78b3a`  
		Last Modified: Tue, 27 Oct 2026 07:26:46 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json
