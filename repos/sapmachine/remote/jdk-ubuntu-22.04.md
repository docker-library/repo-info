## `sapmachine:jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:c72d51f6fa986e506fd220aaa3919f1b3bd7ab58c40558e7e6baface3ec47334
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:93db821c3307a6e00697cbde069d3ca50ce1e7355e77f283cae8a9821e421fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168958653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44782f135297e8e4dd92b66f9184afc98205b1872643d6e138ab663574f14feb`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:36:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e764853e67fae6f5117c82a2059388e247d3e4c10c49ac854aeb2d61c614b7`  
		Last Modified: Wed, 16 Sep 2026 16:36:23 GMT  
		Size: 139.2 MB (139208402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:959040893eea9f02a7e4d61a5b32674416e1208cebf7799f3952351fb2db0f6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2585199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e3e1078fa6a1d9a7803f88e4d71feca238328fc3b8d6a32c9790e746664703`

```dockerfile
```

-	Layers:
	-	`sha256:00039a4962a41b301d43852ac141d9de6b26df79efddb097b14d9cca542ad597`  
		Last Modified: Wed, 16 Sep 2026 16:36:20 GMT  
		Size: 2.6 MB (2574448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32d318e5f20f8eb4c42916c478b9c0da697b54127e67bdfca2640cd4e48fdc44`  
		Last Modified: Wed, 16 Sep 2026 16:36:20 GMT  
		Size: 10.8 KB (10751 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d6e49fc1b44b79e272643e70990f88349cc24f7fd2e1c25f60404d8f74940c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.9 MB (165912615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ef5806aab29df7f19a2cd7c3eb7c22d66e6121527896c8283652b9e01ea250`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:36:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6708a3bb36e413d28a044e1cf06733091ad4397a5c572f1b0e2b63a996c825`  
		Last Modified: Wed, 16 Sep 2026 16:36:27 GMT  
		Size: 138.2 MB (138229868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:987b5a42e2705e9b206c56e6f0669bf6fafc7d5f368e89493d0492aee3bba4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2585078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227bd5b3fa6a810098829548c590ae440d49e721f22dd16c2dfa1b460821d2a7`

```dockerfile
```

-	Layers:
	-	`sha256:1ff265f8e26dde3c052d3ae4f474ef254121dd00c86afae643310f8854e88cbf`  
		Last Modified: Wed, 16 Sep 2026 16:36:24 GMT  
		Size: 2.6 MB (2574175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef6df3b4704d5340a61e7dfe6e45c77332d4ed2806520392e237c47436283b63`  
		Last Modified: Wed, 16 Sep 2026 16:36:23 GMT  
		Size: 10.9 KB (10903 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:48f38cc290a6d6093a4c82907905ddb7810a214ba0ef431f0dfa11c8a6672e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.1 MB (173125344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe512c30322c28213f3184072d472fc4e3fd3621b9ec9a63b5b86de8c973b62`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:42:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:42:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:42:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f6256fe9035153946cfd8bd9b86404be77e337af6bc90278c490e03c5412a5`  
		Last Modified: Wed, 16 Sep 2026 16:43:04 GMT  
		Size: 138.4 MB (138422665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:268d70db605e241ab9d38cfdd8cb2ca7fb1313764d9cf5409802789114fbb3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2584194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2407cfadc9735af274ec2817fc87ed3ddd47bf8e1b79d8ec4d54a52afa361b`

```dockerfile
```

-	Layers:
	-	`sha256:ef0f48c9c27bf28ab7fe1a9724dcdda6e2e33f5d3d49c8dfa550e5f255ae3bd5`  
		Last Modified: Wed, 16 Sep 2026 16:43:01 GMT  
		Size: 2.6 MB (2573374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e9ae1a154344e823f7c9fafe5c8f8dfd1613d49d140c655850fafeb476ad28c`  
		Last Modified: Wed, 16 Sep 2026 16:43:01 GMT  
		Size: 10.8 KB (10820 bytes)  
		MIME: application/vnd.in-toto+json
