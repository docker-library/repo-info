## `sapmachine:17-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:c9e79799a6a2bf0b17849509e222ab807658f6374ef68c3ad02d7d1dc6e76d9c
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
$ docker pull sapmachine@sha256:d08d56f5746aa7a87715b04d3580a100656b4061313c9de0049425473c0927fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229179184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2590c667f0950b5e004d968c3ba001ea27da1a61f7901ad4585e98f15c344152`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:40:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:40:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48566f4f007cd39177f7d26346e4958b573a6e807bb504f713d54c41fad09239`  
		Last Modified: Fri, 02 Oct 2026 01:40:49 GMT  
		Size: 201.5 MB (201495048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fd4e0b69405c5913950167b2088a9c9b08aea221ad69362ea28631852d8b287d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4104217aa928624367c84bab5d244cb819de570ed18100a726c3f7e9e365f97c`

```dockerfile
```

-	Layers:
	-	`sha256:2d12fdee9412dbf9a65f468a2b7cc0b98ef0afd7f54b94bff9850b35f4252985`  
		Last Modified: Fri, 02 Oct 2026 01:40:44 GMT  
		Size: 2.4 MB (2377549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5286d81325e203e2ed2e0326a729db092d1a08de8028ae109e4ecb0c69eef366`  
		Last Modified: Fri, 02 Oct 2026 01:40:44 GMT  
		Size: 9.7 KB (9742 bytes)  
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
