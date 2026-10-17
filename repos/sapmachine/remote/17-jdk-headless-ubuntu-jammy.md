## `sapmachine:17-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:c4189a24ce8814b5fd7898c14f4259b478ca1c70cea71fcdb416046a08354470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:cf4affb381e6878b3d13d2e57d3d1f995bcb5e2986161bd040d4b740d5ac5dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232498350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7434fd107f7662a4621ea5a9d406a28e2680ae26a971dfceea14f406c5e2a707`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:41:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:41:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:41:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04788f9b562fc14a63623f6a5f5afb50a744cc4fc047642fca91a2d989ad35f`  
		Last Modified: Sat, 17 Oct 2026 00:41:39 GMT  
		Size: 202.7 MB (202745874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f8e7ad1563282ccd8b0a18be3155af30f5a1204debed64c6b5eae36309ec0b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af6ee0984d9b13b3fe9d8fd5529b3b434c8b7024759f1179b52c86404e77b6f`

```dockerfile
```

-	Layers:
	-	`sha256:ba36e58fdce1533d02a42e0e3d6b3e4fd4af8a13936f45b94cd209412180ee87`  
		Last Modified: Sat, 17 Oct 2026 00:41:34 GMT  
		Size: 2.4 MB (2377877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2bd40a16b857237db5fcf88451599ea7bb64500639e39985bb2b413a7144ce6`  
		Last Modified: Sat, 17 Oct 2026 00:41:34 GMT  
		Size: 9.6 KB (9636 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2cb87040eef1700174b4e428a1993bded574ec7fc9120bb63569aa4f01043b0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229180839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9d576573e4a4cb846facb3f64f82f1afe01e24517f3586affb125cdb767803`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:41:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:41:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:41:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725eb9f40c27c15e83d9feb59e5bf6a15c1b13171f4eca43a2a555dbd24bb1cf`  
		Last Modified: Sat, 17 Oct 2026 00:41:32 GMT  
		Size: 201.5 MB (201496116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b1630ee18fe21899e10420a69b21d532190fc9ac3ac69577255b7243847df762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a798b70b5bea7751c8f8550d2baef61ac3b5b61a3df1c40ae3e3508d30a5818`

```dockerfile
```

-	Layers:
	-	`sha256:dc67372eb61956cc3866a3fddf7ea644a42e28859a5bed44daa88b99e0af0fe4`  
		Last Modified: Sat, 17 Oct 2026 00:41:28 GMT  
		Size: 2.4 MB (2377549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9998c9dce444f1818f551b14a9bc5b513b3561475cf89c3cc8135706887ba0e`  
		Last Modified: Sat, 17 Oct 2026 00:41:27 GMT  
		Size: 9.7 KB (9741 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ce080954a82467ce6acc629d69f78110d947c7f221ec026404601c27ed6eda6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.2 MB (236182986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a548c08303219ab157f5c59ca9ecf563e4de7085c3e9d75e5ac87211e914b3`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:56:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:56:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 02:56:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd325d5d0d246ac38bee70ba8bc25b459ce16f1ed39cc3932c3838a2271afcb`  
		Last Modified: Sat, 17 Oct 2026 02:56:52 GMT  
		Size: 201.5 MB (201479349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:732aa148cd7d9338e15468553b7c3c22f6aba47a29d5a3fcdd21dd7606ec0df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f038383a8cf62effac0ce33d676755b64dc69ad540cd596ff0d932b9d850de7`

```dockerfile
```

-	Layers:
	-	`sha256:8c03944209d7108b8773bf564b479e5b941b6e1a47c29163bb1b7e887ce80c03`  
		Last Modified: Sat, 17 Oct 2026 02:56:48 GMT  
		Size: 2.4 MB (2375373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e79cef25810a446e7a87026281f22a735610f09c869797853a470524bcd659e`  
		Last Modified: Sat, 17 Oct 2026 02:56:48 GMT  
		Size: 9.7 KB (9681 bytes)  
		MIME: application/vnd.in-toto+json
