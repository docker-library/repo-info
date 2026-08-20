## `sapmachine:26-jre-headless`

```console
$ docker pull sapmachine@sha256:a3b5bd7765dc4ac128ae37f6edfed134694749677c0ec6b26315e30ebacdfc3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:549274940f22e45657cd0b27599f506a2ec8470d9ff96a4fb418be8367bb817e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90099178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d13b4f00c87c20faa9820c9b7a2bf4089cb4b3dedadf43b67801cd1379c27f8b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:04:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:04:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:04:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de86ec54161b878af2ab4d234a0d9fbb8c0fe97416f77f6cc10395e18c8699c5`  
		Last Modified: Thu, 20 Aug 2026 18:04:43 GMT  
		Size: 60.3 MB (60346371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ac79e14093ee83665bc87c245d7f4f2c6ce16805d76f5748cfa5b7f17b180b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89dede71a87cfca38e0b62edb4cae4c69c39ca3f8baef373295d8b25ceadf73`

```dockerfile
```

-	Layers:
	-	`sha256:ec4d286f12b8849b123c054f0716d19a9c3ed8fb63c77cd60f71b867fc4287ae`  
		Last Modified: Thu, 20 Aug 2026 18:04:41 GMT  
		Size: 2.3 MB (2279268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac8c4ff69ad03c0c8a6389bdccec0117df1588d07381b21875b5c7e720559f8d`  
		Last Modified: Thu, 20 Aug 2026 18:04:41 GMT  
		Size: 12.3 KB (12314 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8d1d9f754ef0532bd59cadc2fcde8e735cba4ff3338cdcd47b208cd2b189eef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88235183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313e84c66a97c7da771315d270823c5f4d513186e4f63c1bbb65d5d680c8e094`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:01:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:01:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:01:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ae51589113b5528c682f86b899218f0ffb14c2afeeceb1145dc7787d40931a`  
		Last Modified: Thu, 20 Aug 2026 18:01:36 GMT  
		Size: 59.3 MB (59347948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0a927a97725a20b45ebfeefd7d9327224760bf676c2a25b2cabdf6f5c4600eaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344deea301c8bf30f5f8c127570cbbec6bb2e4e7d78f83f3471692c2b195d15e`

```dockerfile
```

-	Layers:
	-	`sha256:024150cf42e1f2b4f0423349ae030cc1acea51d8676d322dce4ccf0a39ca29be`  
		Last Modified: Thu, 20 Aug 2026 18:01:35 GMT  
		Size: 2.3 MB (2279820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4694127ff44ee6ba1d6513d137aa0445822c8654fde0f36f4d9789202873e88`  
		Last Modified: Thu, 20 Aug 2026 18:01:35 GMT  
		Size: 12.5 KB (12514 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2b24057a73fe7515985d2eaa18e07eb8a88e7ca3f83862045b997f657a5bc706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94002109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2febe38f6c22e3c7a519c27fa87d8df1cde159550882f793e7aee2024e5b15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:58:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 17:58:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 17:58:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc638ef399b2e12ab246755fe4d07d84c49b36f64229a678d11b05fda82d63cb`  
		Last Modified: Thu, 20 Aug 2026 17:58:29 GMT  
		Size: 59.7 MB (59690914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:36d71cc3e296d41e49efdb0638c1cd2782e4856260caaf0554ba2ad8df0ff71c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35a256a39e683eb28f0d5889841a911e42f6039a21e36fd8c6d525d81310446`

```dockerfile
```

-	Layers:
	-	`sha256:fea84f0fa165260855d23513f853de9e0c06956bb709dd71dff14bb1bf1aea68`  
		Last Modified: Thu, 20 Aug 2026 17:58:27 GMT  
		Size: 2.3 MB (2278079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76983c76c09104e74f116f2f03c3d58cced8167bd41314d6ea903a72d5c1d836`  
		Last Modified: Thu, 20 Aug 2026 17:58:27 GMT  
		Size: 12.4 KB (12406 bytes)  
		MIME: application/vnd.in-toto+json
