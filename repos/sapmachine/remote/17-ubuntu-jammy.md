## `sapmachine:17-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:b0a61a336dab46728cfe99a5d0a4b0583219f9861d33ba606e18cb0e5dfa5cef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:18e7aafcf1b6452c2bcd4802272773ecc36212f84fa6177cfbe7d4206221f527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234544024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f5d432ba69473d48420d1e6cc7a98097b69aa331486ded01b6544f2b5d78ba`
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
# Fri, 02 Oct 2026 01:40:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:40:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fa55d0824a4b68d8a7b6611de2e20ef2c76f9fe1fca676fecb6ba2a57bbe8b`  
		Last Modified: Fri, 02 Oct 2026 01:40:47 GMT  
		Size: 204.8 MB (204792397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1eb759c3fa0123775acb8269ebe0b6a50b53d66125f929b0af5ed0ab1d87d27c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58c3b221bc77bc1d652771fdd3cf9fcb3a7c8f195c67e6eb66e543230810a92`

```dockerfile
```

-	Layers:
	-	`sha256:ef58b01951489d44007fda833f64b80e2021247d522f7a97e5e441f21ab47791`  
		Last Modified: Fri, 02 Oct 2026 01:40:43 GMT  
		Size: 2.6 MB (2631245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b4c5b8fcbcec32205facd3bf404a6e8127b18dc7f86b5f787565dc013b2fab2`  
		Last Modified: Fri, 02 Oct 2026 01:40:42 GMT  
		Size: 10.9 KB (10851 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:db396032f471f7918e4aa47fa0577f78c618b64f65d3c00a958776d466179a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231214033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:493f93a1654a928fcdad0ff7eb1630cd320f83cb8b278d3a0e181beaf053ac57`
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
# Fri, 02 Oct 2026 01:40:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:40:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:40:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219cdb9fd8044f80137c13b7ac284e40bcca39cf0f8cb4b42758aea6302ec827`  
		Last Modified: Fri, 02 Oct 2026 01:40:45 GMT  
		Size: 203.5 MB (203529897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:02a9b51ec1e04e8989b6e8ec0bbdd0bdc88e05671b7f89833218968170753962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d1999a04eb7779ace01e3270608bd85f9378c01d4f6986b67881e65eec1a94d`

```dockerfile
```

-	Layers:
	-	`sha256:5f0e4f30ffbb3c6c9c25dd1562aa64cbf3576206a2e4b2e8dcb33f04d5cfe81e`  
		Last Modified: Fri, 02 Oct 2026 01:40:41 GMT  
		Size: 2.6 MB (2630975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0229cbb1a3a8b562cce63fbe0483ea1fc47eb5510bd2e5ab841d4a639914bb9`  
		Last Modified: Fri, 02 Oct 2026 01:40:41 GMT  
		Size: 11.0 KB (11002 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0beb1fceebbe9f8791a88e039eea09859ef3bfa622b571c3811241a49fec71da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.5 MB (238547450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb49841130800ce7ebe0f80df75d40a0ebc7057cf21e1bc68a11a319b354e7d`
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
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
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
	-	`sha256:b79fa6a0406f064242b57bfceede101332ef305cb07c62e910cf154e3f0dcf96`  
		Last Modified: Fri, 02 Oct 2026 05:58:49 GMT  
		Size: 203.8 MB (203844242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:51d7c4bc45f120c4469c5fa5ed8c1b7931420975781771e57bba7907d504612b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2639774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b7d9cfaa52087ab48fdb6ffc7d568b9786df295ccea686fb70a7ed46746b0f`

```dockerfile
```

-	Layers:
	-	`sha256:ea578402251ae11ffe8e2f121830f6760a601d11353649eec683f7d963d2749e`  
		Last Modified: Fri, 02 Oct 2026 05:58:44 GMT  
		Size: 2.6 MB (2628855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c15fe339617f88f501c8bb6abb58a311b7d8980e9d9c7c7dfa16276ce78cfec`  
		Last Modified: Fri, 02 Oct 2026 05:58:44 GMT  
		Size: 10.9 KB (10919 bytes)  
		MIME: application/vnd.in-toto+json
