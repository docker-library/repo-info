## `sapmachine:25-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:3457ffd04f87cd3bff305cdbc2e5f9d48de268ac172cd8ec20f663a3b8093ea6
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
$ docker pull sapmachine@sha256:8bf98e4289f3d2684ab5222e3d2fd0a5698963a00041629c7787653cd1d838e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253062830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34c1549a20ca61cd891c08bc2325f6e477ff1581d685203076e66856e918645`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de2f30d1f1dfbe56356472c37fadc71fdec3b4788b2dedb742eeddab6ad13e9`  
		Last Modified: Wed, 11 Nov 2026 23:40:35 GMT  
		Size: 223.3 MB (223269607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c1798a1175de3cbcbdb8826c317638350d27b98a5df4917ad1eec07ab7cd2750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d3c77ab6bec6dc0479a3ee6a706f21ba2a11cbae2a8fe281361ae209484cae`

```dockerfile
```

-	Layers:
	-	`sha256:85036b08fb3e301c8043afd4bbcce2307e5273a336aacbfd111a672b8800cb83`  
		Last Modified: Wed, 11 Nov 2026 23:40:30 GMT  
		Size: 2.3 MB (2348747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6c794977e7cf0db62d26facb604021df17c724a91c216e08c64dfc948685354`  
		Last Modified: Wed, 11 Nov 2026 23:40:30 GMT  
		Size: 12.0 KB (12043 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1f71609fd8aca7bf15eaf0889723564b6bebff0bfb0a249813240107f0497ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (249987489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d719b6517e062b2b99b11e360332dfbede77402171bae00114b83e06dbdfbf7`
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
# Wed, 11 Nov 2026 23:42:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:42:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c66887bdb24383a5714dba627d456c1bf9808bf4245533fe659b24a14e9f693`  
		Last Modified: Wed, 11 Nov 2026 23:42:56 GMT  
		Size: 221.0 MB (221022231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:816c3dd68302ee505f8a79cf7353f64512825413fadcd35a14e43690087369c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cf481d8e34ecf8199dd6aa8e58c1158307e326e2543d7b4027bb0ac421d6e1`

```dockerfile
```

-	Layers:
	-	`sha256:2f63a90a9379e8fa1175acaedf6865c077511988a05d6a8daa5e7c4848951a3a`  
		Last Modified: Wed, 11 Nov 2026 23:42:51 GMT  
		Size: 2.3 MB (2349287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a683e362e8415f122b4812ea82117a55cf0d93cdb9cdbd05d2ae73dee4da2930`  
		Last Modified: Wed, 11 Nov 2026 23:42:51 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:356f9fb35e56e54a2ba86b106d062d10deb2a8272eec5ede34df421a31571afb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254096967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf0c75800a39ea55c87916d1ae30443240072b3e85fdf69a17a11b48aceb5b1`
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
# Tue, 27 Oct 2026 07:31:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:31:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:31:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037f65f4c95ba11cb2be09fa1659f2739c2e6562cb86ede4e32a8e7a1783abf8`  
		Last Modified: Tue, 27 Oct 2026 07:32:55 GMT  
		Size: 219.7 MB (219718659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6f25f533922762929a50e0149a9d04cff0915c584149c5eb3136c1ec47b4d93e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86f8298dec30fafb24916e3472916d4d06261db89e8ac8a3b792b5444fcba55`

```dockerfile
```

-	Layers:
	-	`sha256:6e444ceec677d48c2903d212062d2f5456fc82dada73d506dcab5b5483015747`  
		Last Modified: Tue, 27 Oct 2026 07:32:50 GMT  
		Size: 2.3 MB (2345014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:403c25b27fa02c9b31af3270e165937241983a51e12f7d735af8f34542e10e08`  
		Last Modified: Tue, 27 Oct 2026 07:32:50 GMT  
		Size: 12.1 KB (12128 bytes)  
		MIME: application/vnd.in-toto+json
