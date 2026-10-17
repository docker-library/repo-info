## `sapmachine:17-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:13138aca67ec09f40b92e278183ab13356769900a41c8921d182cfa42a16b019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:b8dc3fe51cb5b0e3ba1689c6726b3f1867c8a1df0e65dbcf8eafb0fb93947f26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232497401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f77f9b1cff7b36a7a2a1177d3a75aa83bc29a3e05a895917c6452217ded4fff`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:40:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:40:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:40:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2baac63e19cdb495eb83cefedf8376c4d6a23c74aaaf018b5f70acba6ea3d6a`  
		Last Modified: Fri, 02 Oct 2026 01:40:35 GMT  
		Size: 202.7 MB (202745774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:412e2fe665d372d310eff238c16957997dd0fb87729ffeb2e37c503ad024a667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa10d015f778c4dbb114ddf795a0e91ed8c8d53f256cf7fa618c7025aecb53b1`

```dockerfile
```

-	Layers:
	-	`sha256:158fd0daa817b6ba484a5d4bd653a4170d0385e16ebfd624c5ef1519582ea53a`  
		Last Modified: Fri, 02 Oct 2026 01:40:31 GMT  
		Size: 2.4 MB (2377877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab2d2917e6bf7822ee080cc12190166ab546a675cec5ebfbd7c6f83c32d1552`  
		Last Modified: Fri, 02 Oct 2026 01:40:31 GMT  
		Size: 9.6 KB (9637 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

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

### `sapmachine:17-jdk-headless-ubuntu-22.04` - unknown; unknown

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

### `sapmachine:17-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c0550209a8a6f00ca914fc4c41149416aa14bcd42ae621aeb1e93b7f2a022b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.2 MB (236182591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9bdf8f74a4292795b8537b3cc3ea3d24a53c55fc4290d7edbc5196a886a924`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:58:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:58:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 05:58:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024974b2dd453b13745004a34e3340bcd261bea41adf5fbce32ed8398b93979a`  
		Last Modified: Fri, 02 Oct 2026 05:58:47 GMT  
		Size: 201.5 MB (201479383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6d651f78e5acba04173c96465814dfd75e56482cf78f2a90bd49ab269c300c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35679ac1be1e6aa35032e3fa227e8312fb527867c844a64be664e4c57355f558`

```dockerfile
```

-	Layers:
	-	`sha256:35aa49bb5232461318fe151adfcf0a07be442e754d84df7e47257b7b9922ba26`  
		Last Modified: Fri, 02 Oct 2026 05:58:43 GMT  
		Size: 2.4 MB (2375373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cbab44276896cdda7c0bbd6ad70daf9b79d259ea82fb2e4c0e81560a32af4a6`  
		Last Modified: Fri, 02 Oct 2026 05:58:43 GMT  
		Size: 9.7 KB (9682 bytes)  
		MIME: application/vnd.in-toto+json
