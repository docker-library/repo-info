## `sapmachine:27-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:f4d0e2b6cf6ccb646237826431ae42ad666becedda9b012557e6e70a0207bf63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:eee0648821609091a205fd735294d30c4f409a61c829cdaa500e04c814b1c107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167946686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac94e3821c998003d47fc5c501f8165f658e1e3f19d90c9f36d697d6dad3ff4`
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
# Mon, 26 Oct 2026 23:37:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:37:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c03969bb1c7a44bd683f4f6b3ac8cac2aba728808cd6a75d782e50bd6c3986`  
		Last Modified: Mon, 26 Oct 2026 23:38:10 GMT  
		Size: 138.2 MB (138179074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:56d5c5e02bf19226659a19093107cd3781411cf84f1422b2667fdb8e6dcfae5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb332ce148ea5a90bb8ae30136c1efb30d8bf2134cc74f7c18204cf132576084`

```dockerfile
```

-	Layers:
	-	`sha256:14b62753dc2191cecd8ad9132df397b2aed45e1a19c1dbcfe60d6de3a82663cf`  
		Last Modified: Mon, 26 Oct 2026 23:38:06 GMT  
		Size: 2.3 MB (2300703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a886299f2de6a73f4dcee86456914eb037abc5a0cd2c3d6ce9a5c654d15deebd`  
		Last Modified: Mon, 26 Oct 2026 23:38:06 GMT  
		Size: 12.3 KB (12336 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:815b2d1453d834c4f72f81a10ce1c31da5cc401885d41a2abb69856016dc9465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166201534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c63976e28155e51558a903aff5070695d7d12fec2a2ee50bcf3e5cf6ea4b3c`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:42:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:42:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36cc4568f1c01da0df80de38439c31819a1c6ebfe22a8551d12660035089bc70`  
		Last Modified: Mon, 26 Oct 2026 23:43:07 GMT  
		Size: 137.3 MB (137261408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c629412e47526780919623be2524eabb73ae5488a8af89fc3bee677c5a6cd7ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1fcd1c05030fbffebf00ed1740962da9f97d3e4fe61c752232d9a448465baa`

```dockerfile
```

-	Layers:
	-	`sha256:33d9d71745a03abca58711bc7f18e06682ec4ed3eb080589c2949a391d76e9b8`  
		Last Modified: Mon, 26 Oct 2026 23:43:04 GMT  
		Size: 2.3 MB (2301255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeac6f7735378e166f81d4d8e3e3f54d0883fd15bef0b42cc79f343c2562eaec`  
		Last Modified: Mon, 26 Oct 2026 23:43:04 GMT  
		Size: 12.5 KB (12536 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e50e16c8618a9f4a762ad496381ef8685d39be0bfaf7ba2a5be9f7d9775ee4fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171604332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466ba90429818a30999525c0e14f5f452800b49ca784c6fe3ac0096511eea2a9`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:49:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:49:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:49:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f76000d614e257d2ca5f41a87b736ec512b149e6ec03b0461df2ca7d0d25067`  
		Last Modified: Fri, 23 Oct 2026 18:50:16 GMT  
		Size: 137.2 MB (137226342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:22ada5008c829edd63daca7ea07c8082f51989feed4fa2ecf3174008b844ea8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b220f12e606e58d0759413d4b72ac891f6bda467ec56ef0951f6a7ab7e84587`

```dockerfile
```

-	Layers:
	-	`sha256:1910bed15da4ef0b2cac7f9adf317550a8c95dee84ebdd2ea7bd9f027c5709ef`  
		Last Modified: Fri, 23 Oct 2026 18:50:13 GMT  
		Size: 2.3 MB (2299502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67ace433038a38128c2f2934f793f2b0a9244e03e8df77160b7f5b13d30e4c96`  
		Last Modified: Fri, 23 Oct 2026 18:50:13 GMT  
		Size: 12.4 KB (12429 bytes)  
		MIME: application/vnd.in-toto+json
