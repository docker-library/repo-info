## `sapmachine:25-jre-ubuntu`

```console
$ docker pull sapmachine@sha256:1d85ee4665a7464bbb417529fd5dbdee2eabd09372088b31e9509b5fe37c70d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:33e09ae34ea0cfdaa6ac19968dffba4ed211370ca65f9111aafb5fb117ab686b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90657943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af74fbccfcf3d2d34a77f498e9b1cbf629e7cfc2c6a9da2a7c17d88d537bd798`
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
# Thu, 20 Aug 2026 18:05:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:05:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:05:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c18afaaeed8c47381afd21d2504d65ed4c3c5ab752d3931069276c0a3a806d`  
		Last Modified: Thu, 20 Aug 2026 18:05:58 GMT  
		Size: 60.9 MB (60905136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a14f90928622a7aaa134e88f0a1846802b68c112ac9441d4b551b21ed8710995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf2a5b58251ca6bc2c77e1210f2dc92cd59e5dd20e85ee6d46a93e67df2c4f4`

```dockerfile
```

-	Layers:
	-	`sha256:16bea048bae32a35db39c387956acf27527cf50291e79b1b927dc668b6b55aff`  
		Last Modified: Thu, 20 Aug 2026 18:05:56 GMT  
		Size: 2.5 MB (2527886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b9672394503d51d7685b3ff7a99a397b13e1f34d7c4725ca3b32e4e312288aa`  
		Last Modified: Thu, 20 Aug 2026 18:05:56 GMT  
		Size: 11.8 KB (11783 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:bc78d3e2efbaf72e7e0994ed686d4fb8a8df27472f3da69f4c4e6aef7291a0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88737652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e569a781250627297d66161c0b2e100b6123e1b254763cb68d5afefa180120e`
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
# Thu, 20 Aug 2026 18:02:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:02:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:02:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2fbf526c1433a209ada0d12e67e7151638213f37c9714ffc8604c88b1facdb`  
		Last Modified: Thu, 20 Aug 2026 18:02:49 GMT  
		Size: 59.9 MB (59850417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:488ae90cc3f579401220e08c5951abdb3ce26f24d474d17a9e4206b469825a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6772af2b0e9f09cb6ad1cfa692ba1b9f63d9a69dc49ac0dc25b80cdc06a9f51`

```dockerfile
```

-	Layers:
	-	`sha256:44ef317964a6bcfbbc3db48fba4cfb3e7f1ad157f8d420c779939f0a4ed2039c`  
		Last Modified: Thu, 20 Aug 2026 18:02:48 GMT  
		Size: 2.5 MB (2528435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50c06d56de5499eb39c8ba58551341a09702be3d6fadc932e24598506c4c876c`  
		Last Modified: Thu, 20 Aug 2026 18:02:48 GMT  
		Size: 12.0 KB (11969 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:265c80e28a4ea67d5fbed91123efc208143601ed11b370745a1a359106cb4925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94411581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd61a28286e802bf9932220e72e89cdf02419afaa36c0d3f88ddb01ad8d673b`
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
# Thu, 20 Aug 2026 18:03:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:03:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b211e4df53f38c0ff9290bff877b88153bde5a038ee3a8e83d46e7b386552ee`  
		Last Modified: Thu, 20 Aug 2026 18:04:20 GMT  
		Size: 60.1 MB (60100386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6ebeb01f565773fad3182e4c0c839d0bd7ebe127c79f903248bd07646223a2b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9534bb0e147f72f7bd12a5901d35609b141be7f3169468d69a444e95319fd09a`

```dockerfile
```

-	Layers:
	-	`sha256:53d3648efcff3d575480f242bf66954a29c4397899a38dc792ce60883ec06008`  
		Last Modified: Thu, 20 Aug 2026 18:04:18 GMT  
		Size: 2.5 MB (2526772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a78b0ba483c7233fdc1bee467a4537f7fed2c50db17ba2db16a2c00a2fe9b0c1`  
		Last Modified: Thu, 20 Aug 2026 18:04:18 GMT  
		Size: 11.9 KB (11869 bytes)  
		MIME: application/vnd.in-toto+json
