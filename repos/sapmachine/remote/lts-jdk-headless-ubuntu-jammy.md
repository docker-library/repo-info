## `sapmachine:lts-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:0a865e2f9185cf76ec7eb2ec618fa1c5e14f8bef3ba707ac7e3f15a9b9b4350f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:ea3bd1a48c1353279d5805214c6fdb9e6bc59a863fc24ddc5724b97b66ebe628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252520815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96965586fffd3d506a889dfd033772093593918bbbe5d3173c066af282b8cd4`
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
# Fri, 02 Oct 2026 01:38:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ad8391467b0bb36fc5f32e20fc9cca6b8772be1afa5dbba11aa32848c4cc4a`  
		Last Modified: Fri, 02 Oct 2026 01:39:01 GMT  
		Size: 222.8 MB (222769188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:476b1326141fce14c96669e6213b3dea9908eee1b7654da98e72d0545307f70c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee82e74a2879333ac7838505959a3e8f89448c8c8489a847c9c08090a6fad04`

```dockerfile
```

-	Layers:
	-	`sha256:9ba885f6d53b8b12f010efb7850ccc0612d602b7d278745baf0ba8ed76102a2a`  
		Last Modified: Fri, 02 Oct 2026 01:38:56 GMT  
		Size: 2.4 MB (2369664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f86575914f45ef646d4f12b0f6c18afb87fbb1ca4d7b7fe6ca6a698d6f54430b`  
		Last Modified: Fri, 02 Oct 2026 01:38:56 GMT  
		Size: 10.3 KB (10333 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c6baabe074521048cb28ae2e7a027c48ea5b2141e409a26bc7f1d61bc54c0f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248174244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9db6c903a8e27dce716fceb8af74e7b8c2690f28acc89d1a0cbbbb0067e8f67`
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
# Sat, 17 Oct 2026 00:39:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476b8b5c080e847ad37c040a4ec62c5ad9196ffcb825b4078d2860b4efd0545b`  
		Last Modified: Sat, 17 Oct 2026 00:39:49 GMT  
		Size: 220.5 MB (220489521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:995edeb463e298ccf0cee554819934eacc9aabc33590ae55d45983f4a6a4f8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5c3b57b9ca39a7a61d92cccb6148c954d8fd4db7ce23ee47b6c5ff20f82628`

```dockerfile
```

-	Layers:
	-	`sha256:40d4f5d0b47433179180cbf40ca414d5c63c54cbc75419cb3ec143e82ae6f37b`  
		Last Modified: Sat, 17 Oct 2026 00:39:43 GMT  
		Size: 2.4 MB (2369357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a68620b05a2c60b74cfbfd6c71eaba4a1c46600be771d9cb6041dc82b670e7e`  
		Last Modified: Sat, 17 Oct 2026 00:39:43 GMT  
		Size: 10.5 KB (10461 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d9fa98036976ee381b9747268b5de647a83aaa0432c2be2c149356230bf3304e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255422956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cf2e466faf2bbcd4c041d337020134b493c1691ed57d82a1035d7f3398e9e9d`
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
# Fri, 02 Oct 2026 05:41:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:41:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 05:41:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b8023c69b661340ec9512b52f265cd657f25ec3d30a26c6b44030db0f28420`  
		Last Modified: Fri, 02 Oct 2026 05:43:04 GMT  
		Size: 220.7 MB (220719748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6684c07dc141b3faa0aeaa886f4d98ae853fb0adaa564bf9ecbdcbbacac63279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55ae5d50686bce75e7bb9878af1601c883bb74392b95ec8a011050627fcf15fc`

```dockerfile
```

-	Layers:
	-	`sha256:8068912c4139f5db15e57338bc867c8f490f9787b14737ce4a69be4c49f7e1fd`  
		Last Modified: Fri, 02 Oct 2026 05:42:03 GMT  
		Size: 2.4 MB (2366554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad5dd48da7fdf0719c91628e080d1e25909541c1da2d416f665acac284b708b2`  
		Last Modified: Fri, 02 Oct 2026 05:42:03 GMT  
		Size: 10.4 KB (10388 bytes)  
		MIME: application/vnd.in-toto+json
