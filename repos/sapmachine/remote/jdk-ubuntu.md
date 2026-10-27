## `sapmachine:jdk-ubuntu`

```console
$ docker pull sapmachine@sha256:46d583510e92aca5676451100e7d1ad9359e926771d14addbaf8a083e8bcab9d
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
$ docker pull sapmachine@sha256:81555e0f5868f4631e48a7c1b89d47aad75107afd9a0a5b9fba252b365d4a11c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167705809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0468bf9c5c0da293c00282ed007b51f1f30c578ea83bf2e2c5afc7ec8d3710`
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
# Mon, 26 Oct 2026 23:42:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:42:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe9ab454e450815eeb9d7251fdd523b2fb047cdd221a4dc93c8ea60a5b35100`  
		Last Modified: Mon, 26 Oct 2026 23:43:08 GMT  
		Size: 138.8 MB (138765683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b3692135b98988e5834f3d9e82975a63f1bde0ee760069926e06039c69f66279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69841227a676f7d3dfbb95dada1be792c625d0317faeef7ee111a6e7a0d07f49`

```dockerfile
```

-	Layers:
	-	`sha256:ccec333cc041f9d3d88dae70c2599bca188a6716a6efab2338b0b7fd9dcd6cf6`  
		Last Modified: Mon, 26 Oct 2026 23:43:05 GMT  
		Size: 2.6 MB (2552886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1badecc016ff111879ee5828732ac47d1a54b4dcf6dc8db9d9c423a43002b15`  
		Last Modified: Mon, 26 Oct 2026 23:43:05 GMT  
		Size: 16.3 KB (16254 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d8542036dd2f2a2489550ce73ffd9b54dbf2930dfbe06f76ad33c268688817e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173326329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13071563a8d05f72974a706194a42e8c0da090393cf330689c4331f6830a337d`
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
# Fri, 23 Oct 2026 18:50:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:50:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:50:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0761351bbcf2e40d77c947233e049281c1361592e24b1c03a83f8591cac940`  
		Last Modified: Fri, 23 Oct 2026 18:51:27 GMT  
		Size: 138.9 MB (138948339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e33951c7fef919eb5bccabdb619cab7c50fea7c4b11740d1c2a4f16d41747d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2567207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e4128aec0dac3ee620476af9ce3af24999b4885e816db2a50e8bcab7a37e5bc`

```dockerfile
```

-	Layers:
	-	`sha256:39931f81f0c27b0ab893cde3a4967aaafda31ea9da963714f6da9fe680d8821d`  
		Last Modified: Fri, 23 Oct 2026 18:51:24 GMT  
		Size: 2.6 MB (2551133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93867e46699d9b095a9183223be439683dd2268d55d45482035b2870c44481fc`  
		Last Modified: Fri, 23 Oct 2026 18:51:24 GMT  
		Size: 16.1 KB (16074 bytes)  
		MIME: application/vnd.in-toto+json
