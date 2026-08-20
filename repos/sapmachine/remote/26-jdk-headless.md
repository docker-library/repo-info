## `sapmachine:26-jdk-headless`

```console
$ docker pull sapmachine@sha256:8792785f7dba31a2d62bf1690500682900c47c1e06d1a60aa3ad1e1aafb3236f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:ff1051d29d06be566ba078a3d00384b16aa701dc44e63baafdb8e73cd5598edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169537938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681363e28d855484d10cf5771f5290d6473339de91d259bb9c6239143ead720c`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:04:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:04:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:04:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9881eda0e6cdc76b896f3ea708ea3349644b77f1bb165e54f9a4ed0697b72d8`  
		Last Modified: Thu, 20 Aug 2026 18:04:57 GMT  
		Size: 139.8 MB (139785131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e85dd0118ae94daf770de97201e49e0bf7106b5e9063a69719bf8cd8280857ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562c75f79742ade3e7d02b558fd0cf47bf8428d6ef519c5e7dca60b48f481f24`

```dockerfile
```

-	Layers:
	-	`sha256:39ea043e77e26afb06aace57a2011cf42f114fc549713f03f3475555e34ac941`  
		Last Modified: Thu, 20 Aug 2026 18:04:54 GMT  
		Size: 2.3 MB (2302544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e276b768a4cb069f0f5c5acdd1ae4af17f78a4d6af8ef222fb6ce09b95c0edb0`  
		Last Modified: Thu, 20 Aug 2026 18:04:53 GMT  
		Size: 12.3 KB (12315 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1f9e8ab2cdb50e5d6a11afe8aea69af098d7f79bd788d3864a9b91ec2a21b5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167720248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5eb43382263fd8033b32f9311045bb1572da96524620abab349e25caa3e7569`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:01:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:01:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:01:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b87bd0aeb5378129c45c2b763c07ff05e4041339899f468522e52b296690c70`  
		Last Modified: Thu, 20 Aug 2026 18:02:01 GMT  
		Size: 138.8 MB (138833013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b4efe6e9fc7d7ad411faf328b430e70cf627b902bf14ebb2dbeb37947947c720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acbd6f2169ad3629d156f59b934e9c3f363feaf14e9c3f02c101aa2e2c7d4b8b`

```dockerfile
```

-	Layers:
	-	`sha256:ef57fc84193a5f15d22a00962c671f08c5504c6bf578c3af59793ac90a44069a`  
		Last Modified: Thu, 20 Aug 2026 18:01:58 GMT  
		Size: 2.3 MB (2303096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7331b109b12e2a741b4e01e2e44062d65c28355c73d1662e3f51ff00e01a3175`  
		Last Modified: Thu, 20 Aug 2026 18:01:58 GMT  
		Size: 12.5 KB (12515 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6aaa857eaaa7e3d8a2e75131e9fb1cfec72bb677801d7586625ead09de84755b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172957514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc873326cbe68d45d2c80d7545d33102910475dbe576adc7b82199e20b6280b3`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 17:59:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 17:59:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 17:59:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334183ce928c2c3e28be28beeb2edeedb04ab3f521ea8a39fefb7c22f062b989`  
		Last Modified: Thu, 20 Aug 2026 17:59:57 GMT  
		Size: 138.6 MB (138646319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:10dd3f3a31597624848f9177dd8a7afd6c49e8bb3defc4954db5744d00b4095a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91ca12f07d8707aff7ddc0f70cff43859ecd61d28e1ed462d9ab4846d0e9386`

```dockerfile
```

-	Layers:
	-	`sha256:fdac7e5370626bccd38978abf1af23f930fbbf0e04ce9fbf32c4fcacdbda111b`  
		Last Modified: Thu, 20 Aug 2026 17:59:54 GMT  
		Size: 2.3 MB (2301355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aaf2df11db3908b41cebfd5237f5bbd7f57d39e1f81ec6849b77f70b1498149`  
		Last Modified: Thu, 20 Aug 2026 17:59:54 GMT  
		Size: 12.4 KB (12407 bytes)  
		MIME: application/vnd.in-toto+json
